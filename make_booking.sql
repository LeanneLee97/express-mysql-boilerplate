-- mySQL does not allow statement-level triggers
-- SET SQL_SAFE_UPDATES=0;

ALTER TABLE user
  ADD COLUMN seat_id varchar(256) REFERENCES seat(seat_id) ON DELETE CASCADE
;

drop trigger if exists is_flight_fully_booked;
DELIMITER $$
CREATE TRIGGER is_flight_fully_booked BEFORE UPDATE ON user FOR EACH ROW BEGIN
DECLARE is_seat_null varchar(256) DEFAULT new.seat_id;
	IF (is_seat_null  is  null) THEN
	signal sqlstate '45000' set message_text = 'Flight is fully booked, please try a different timing or route.';
	END IF;
  END;
$$
DELIMITER ;

drop procedure if exists make_booking;
DELIMITER $$
CREATE PROCEDURE make_booking (nric varchar(256), arrival_airport varchar(256), arrive_time date, depart_airport varchar(256), depart_time date)
BEGIN
  DECLARE bookingid, sched_id, flight_sched_id bigint(20);
  DECLARE points_earned int(11);
  DECLARE my_seat varchar(256);
  DECLARE fullybooked INT DEFAULT 0;
  select schedule_id, price into sched_id, points_earned from schedule where arrival_airport = arrival_airport and depart_airport = depart_airport
  and depart_datetime = depart_time and arrival_datetime = arrive_time;
  select flight_schedule_id into flight_sched_id from flightschedule where schedule_id = sched_id;
  select seat_id into my_seat from availability where flight_schedule_id = flight_sched_id and availability =1 LIMIT 1;
	
  -- Check Seat availability
  update user set seat_id = my_seat where nric_id = nric;
  update availability set availability = 0 where seat_id = my_seat;
  SET bookingid = (SELECT MAX(booking_id) FROM `booking`)+1;
  -- Creating a booking
  insert into booking (booking_id, nric_id, flight_schedule_id) values (bookingid, nric, flight_sched_id);
  -- Increase member's points (points + points_earned/10)
  update membership set points = points + points_earned/10 where membership_id = (select membership_id from user where nric_id = nric);
END;
$$
DELIMITER ;
call make_booking('S0034760N','Armenia','2019-09-25','Germany','2018-10-06');

-- Test Cases 
-- Check if membership points are increased
select * from membership where membership_id = '4162146926'; -- 39662
-- Check if booking is made, with correct flightschedule_id pulled
select * from booking where  nric_id = 'S0034760N';
-- Check if seat can be booked when available/ unavailable
select * from availability where flight_schedule_id = '825' and availability =1 LIMIT 1;
-- Change 1 seat to available/ unavailable
update availability set availability = 1 where flight_schedule_id = '825' limit 1;
-- Check if seat is allocated to user
select * from user where nric_id = 'S0034760N';
-- Reset user seating
update user set seat_id = null where nric_id = 'S0034760N';