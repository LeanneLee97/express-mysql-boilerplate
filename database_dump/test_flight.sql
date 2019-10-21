-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `flight`
--

DROP TABLE IF EXISTS `flight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flight` (
  `flight_id` varchar(256) NOT NULL,
  `aircraft_id` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`flight_id`),
  KEY `aircraft_id` (`aircraft_id`),
  CONSTRAINT `flight_ibfk_1` FOREIGN KEY (`aircraft_id`) REFERENCES `aircraft` (`aircraft_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight`
--

LOCK TABLES `flight` WRITE;
/*!40000 ALTER TABLE `flight` DISABLE KEYS */;
INSERT INTO `flight` VALUES ('19VDE3F37EE513887','1'),('19XFA1E34AE098507','1'),('19XFB2F58EE898672','1'),('1C3CDZBG8DN233993','1'),('1D7RB1GT9BS269280','1'),('1D7RW3BKXAS427882','1'),('1FMCU9E73AK719348','1'),('1FMJK1K52AE553291','1'),('1FMJU1G53AE151153','1'),('1FT7W2A61EE089869','1'),('1FTEW1CM6CF821840','1'),('1FTMF1CW7AF526451','1'),('1FTNX2A50AE688784','1'),('1FTSE3EL6AD477067','1'),('1FTSW2B55AE552770','1'),('1FTWX3B52AE469950','1'),('1G6AK5S39F0357403','1'),('1G6AM5SX2E0361403','1'),('1G6DJ5EY8B0440726','1'),('1G6DM8EG8A0099889','1'),('1GD220CG9CZ470423','1'),('1GD22ZCG2DZ969991','1'),('1GT3CZBGXAF889472','1'),('1GTN1UEH0EZ398905','1'),('1GYEE637470695462','1'),('1GYFC23219R946525','1'),('1GYFK56289R885996','1'),('1GYS3AEF5DR442190','1'),('1HGCR2E77FA136554','1'),('1J4AA2D1XAL383312','1'),('1N4AB7AP8EN749065','1'),('1N6AA0CC6DN109592','1'),('1N6AA0CH7EN631547','1'),('1N6AA0CJ3EN047536','1'),('1N6AA0EJ7FN380207','1'),('1N6BF0KM5FN366696','1'),('1N6BF0KM8FN473144','1'),('2B3CJ4DG0BH545074','1'),('2C3CA5CVXAH104592','1'),('2C3CCAAG7FH352782','1'),('2C3CDXCT6CH323991','1'),('2C3CK6CT8AH390069','1'),('2C4RDGDGXCR457758','1'),('2FMHK6DC4AB105315','1'),('2G4G15GV6B9663281','1'),('2G4GP5EX2F9738499','1'),('2G4WF521231341223','1'),('2G4WS52J821393689','1'),('2HNYD2H38CH934063','1'),('2LNBL8CV5AX028929','1'),('3C3CFFAR4DT101986','1'),('3C63D2EL0CG259188','1'),('3C63DPAL4CG439423','1'),('3C63DRHL9CG197763','1'),('3C6JD6DT6CG403066','1'),('3D73M3CL1AG836010','1'),('3D73M4CL4BG094791','1'),('3D7JB1EP3AG474800','1'),('3D7TP2CT9BG686974','1'),('3GTU2YEJ0DG879612','1'),('3GTXCYEJXAG006407','1'),('3N1AB7AP1FL048771','1'),('4USBT33424L043317','1'),('5FNRL5H27DB002613','1'),('5FNYF3H29EB648678','1'),('5J6TF1H59DL250014','1'),('5N1AA0NC9CN646886','1'),('5N1AR2MMXFC098458','1'),('5UXFB93593L939164','1'),('5UXFE83518L102188','1'),('5UXFE835X8L769440','1'),('JH4DC53852C497280','1'),('JH4DC53876S903359','1'),('JH4NA21604S720179','1'),('JHMFA3F23BS387585','1'),('JHMGE8G32BC347148','1'),('JM1BL1H36A1781011','1'),('JN1AZ4EH2BM886899','1'),('JN1CV6AP3CM562794','1'),('JN1CV6EK9AM894492','1'),('JN8AZ2KR4DT741410','1'),('JN8AZ2KR6AT803188','1'),('JTDKDTB32E1692107','1'),('JTEBC3EH8C2764022','1'),('JTHBE5C28C5935793','1'),('JTHBK1GG1D2216086','1'),('JTHBK1GG3F2527957','1'),('KMHEC4A42FA540759','1'),('KMHEC4A49DA434161','1'),('KNAGG4A83A5974725','1'),('SAJWA4EC2FM091003','1'),('SCBZB25E42C339236','1'),('SCFAB02E89G419775','1'),('SCFAB05D99G016178','1'),('SCFFDCCD0CG859956','1'),('WA1CMAFP9EA321185','1'),('WA1DGBFP0DA216146','1'),('WA1LFAFP9CA816476','1'),('WA1LGBFE4CD661402','1'),('WA1VMBFEXCD392484','1'),('WA1WYBFE6AD331882','1'),('WA1YL54B45N473388','1'),('WAU3FAFR5CA684286','1'),('WAU3FAFR6AA165969','1'),('WAU3FAFR8AA506675','1'),('WAUAF68E15A322358','1'),('WAUAFAFHXEN373642','1'),('WAUBT48H55K923424','1'),('WAUCVAFR6AA801969','1'),('WAUDFBFL4AN372603','1'),('WAUDH78EX8A496267','1'),('WAUDL94F46N967232','1'),('WAUGFBFC9DN555514','1'),('WAUGL78E46A750340','1'),('WAUHF78P56A297570','1'),('WAUJC68E25A121769','1'),('WAUKF68E05A514018','1'),('WAUKF78E58A832940','1'),('WAUKF98EX8A665891','1'),('WAULC68E95A402380','1'),('WAULT58E53A570993','1'),('WAUMV94E59N731971','1'),('WAUPL58E95A279658','1'),('WAUPN94E38N310181','1'),('WAURVAFD9BN502209','1'),('WAUSG74F29N587097','1'),('WAUVC68E82A008955','1'),('WBA3V5C5XEJ207576','1'),('WBADX7C50DJ069815','1'),('WBAET37454N609372','1'),('WBAKA8C56AC628296','1'),('WBALW3C52DC680540','1'),('WBANU5C56AC839310','1'),('WBANW53558C251712','1'),('WBAPK7C51BA244596','1'),('WBAUP93559V513539','1'),('WBAUT93529A079051','1'),('WBAWL1C52AP170378','1'),('WBAYP1C52ED792502','1'),('WDDEJ7EB2EA911900','1'),('WDDGF5EBXAF881105','1'),('WP0AA2A94BS303851','1'),('WP0CB2A86CS612624','1'),('WUARU78E67N620551','1'),('WUAUUAFG8CN614823','1'),('WVGAV7AX0CW021969','1'),('WVWAP7AN4EE078620','1'),('WVWBB7AJ5DW686476','1'),('YV126MFCXF1091968','1'),('YV4902BZ3C1635028','1'),('ZHWGU5BR0EL249679','1'),('19UUA96249A519721','2'),('19UYA42603A890069','2'),('19XFB2E57DE549079','2'),('1C3CDFDH8ED738699','2'),('1C4AJWAG6CL907550','2'),('1C4RDJDG9EC940506','2'),('1D7RW2GK3BS457052','2'),('1FAHP3DNXAW936153','2'),('1FT7W2A63EE909711','2'),('1FTEW1C84AK852608','2'),('1FTEW1CF0FK830420','2'),('1FTEW1CF7FF547859','2'),('1FTEW1CM5EF046563','2'),('1FTWW3CY5AE865382','2'),('1G4GC5GR0CF005316','2'),('1G4HP52K234923311','2'),('1G4PS5SK1C4485424','2'),('1G6AA5RXXD0129211','2'),('1G6DK8ED3B0071477','2'),('1G6DL5EG0A0889107','2'),('1G6DP5EV5A0271669','2'),('1GKS1HE04ER269154','2'),('1GKS2GEJ6CR987429','2'),('1GTN1TEH2FZ747641','2'),('1GYEE437380395112','2'),('1GYEE637070868748','2'),('1GYFK26299R618994','2'),('1GYS4DEF5CR764938','2'),('1HGCP2F3XBA732799','2'),('1N4AL2AP8BN749594','2'),('1N6BF0KX4FN922121','2'),('2B3CK2CV0AH232221','2'),('2C3CA4CD3AH123955','2'),('2C3CCAET7CH533495','2'),('2C3CCAGG1CH590940','2'),('2C4RDGBG6DR122890','2'),('2C4RDGDG9CR817845','2'),('2FMDK4AC4AB701158','2'),('2G4GN5EX0F9166421','2'),('2G4GY5GV9B9725381','2'),('2G4WY55J311881926','2'),('2HNYD18213H375084','2'),('2HNYD282X8H381057','2'),('2HNYD28648H516844','2'),('2T2BK1BA7EC476494','2'),('2V4RW3D15AR258411','2'),('3C3CFFJH7ET220060','2'),('3C4PDDDG9FT056029','2'),('3C63D3NL4CG519243','2'),('3C63DPBL4CG286945','2'),('3C6TD5NT7CG668385','2'),('3D4PG3FG9BT018876','2'),('3D7TT2CT2BG059139','2'),('3FAHP0KC8AR853470','2'),('3GYFNFE39CS749369','2'),('3GYVKNEF3AG722564','2'),('3MZBM1K74EM649993','2'),('3N1AB6AP0BL734370','2'),('3N1CN7AP8FL583984','2'),('3N6CM0KN9FK036150','2'),('3VWJX7AJXAM555405','2'),('3VWML7AJ0DM094616','2'),('4JGBB9FB3AA710551','2'),('4T1BF3EK4BU527601','2'),('4T1BK3DB9BU845615','2'),('5BZAF0AA9EN466935','2'),('5FRYD3H92GB953072','2'),('5GALVBED2AJ294990','2'),('5J8TB3H33GL249653','2'),('5N1AL0MM8EC546247','2'),('5N1AN0NU8DN268073','2'),('5N1AR1NB9BC417012','2'),('5N1AR1NBXAC317175','2'),('5N1AR2MM6FC313897','2'),('5N1AT2MK1FC403099','2'),('5TDBK3EH9DS397794','2'),('5TDDK3DC5DS320242','2'),('5UMBT935X6L863757','2'),('5UXFA13544L423140','2'),('5UXFE43539L201959','2'),('5UXZW0C50C0769016','2'),('JA32U1FU4BU234245','2'),('JH4CL96995C075587','2'),('JH4DC54804S938756','2'),('JHMFA3F21AS027617','2'),('JHMZE2H72ES702207','2'),('JM3KE2BE2F0365214','2'),('JM3TB2CA4D0631788','2'),('JM3TB2MA4A0774976','2'),('JN1AJ0HP0BM370933','2'),('JN1AZ4EH8CM555438','2'),('JN1AZ4FH6FM503406','2'),('JN1BY1AP7DM600650','2'),('JN8AF5MR0DT887696','2'),('JN8AS1MU9AM379855','2'),('JN8AS5MT3DW825425','2'),('JN8AS5MTXDW908818','2'),('JN8AZ2KR0AT291931','2'),('JN8AZ2KR0BT152836','2'),('JTDKDTB39F1397300','2'),('JTDKN3DP9E3343348','2'),('JTHBL1EF4E5086389','2'),('JTHCL5EF0F5235684','2'),('JTHDL5EF4F5241802','2'),('JTMHY7AJ1A4744356','2'),('KMHGH4JH9DU378685','2'),('KNAFK4A68F5502777','2'),('SAJWA0ES9EP458976','2'),('SAJWA0FS4FP775600','2'),('SAJWA4EC1DM867814','2'),('SALGS2TF4FA197562','2'),('SCBBP9ZA0BC287591','2'),('SCBCR73W39C146595','2'),('SCBDC4BL3AC846519','2'),('SCFAD02A85G175577','2'),('SCFFDABM1DG246834','2'),('SCFFDCBD6BG128416','2'),('SCFHDDBT0EG826398','2'),('W04GR5EC1B1155605','2'),('WA1C8AFPXEA968876','2'),('WA1DGBFP4DA226484','2'),('WA1LMAFE2ED767384','2'),('WA1YD64B42N790330','2'),('WAU4GAFB9AN228124','2'),('WAUBH54B21N510829','2'),('WAUED54B41N804743','2'),('WAUEF48H98K928831','2'),('WAUEF48HX8K047426','2'),('WAUEF78E26A336505','2'),('WAUFFAFLXDA378503','2'),('WAUGL68E25A201177','2'),('WAUHF98P07A714879','2'),('WAUHFAFL8EA117669','2'),('WAUJT58E03A197630','2'),('WAUKH74F76N134408','2'),('WAULC68E35A957888','2'),('WAULC68E54A254114','2'),('WAULD64B24N302282','2'),('WAULFAFRXCA631132','2'),('WAUMFBFL9BN964399','2'),('WAUSH74F88N758236','2'),('WAUVT54B72N026930','2'),('WAUWFBFL8BA183406','2'),('WAUWGAFC3FN343147','2'),('WBA3D5C54FK528771','2'),('WBA3T1C5XEP069551','2'),('WBA3V5C54EJ215754','2'),('WBACN33461L808493','2'),('WBADW7C58DE916284','2'),('WBAEN33482E678456','2'),('WBAFV3C5XFD969582','2'),('WBALM5C55AE730431','2'),('WBASP2C57CC163803','2'),('WBAVB33546P793793','2'),('WBAVS135X7F997056','2'),('WBAWL7C59AP236685','2'),('WBAYE4C53ED781399','2'),('WBSWL93519P711989','2'),('WDDEJ7EB2EA674972','2'),('WDDHF8JB9DA741687','2'),('WP0AB2A86CS069492','2'),('WUAAU34228N377761','2'),('WUARL48HX9K016243','2'),('WVGAV7AX1CW572122','2'),('WVWGU7AN5CE830129','2'),('YV1672MC0CJ848684','2'),('19UUA66235A766544','3'),('19UUA9E59EA402867','3'),('19VDE1F32DE079218','3'),('19XFB4F35EE394719','3'),('1C4RJEAG7FC028477','3'),('1FMCU0D7XAK202447','3'),('1FMJK1H52CE901228','3'),('1FT7W2A65EE438659','3'),('1FTEW1C87FK963502','3'),('1FTEW1CM8CK340415','3'),('1FTEX1C86AK790254','3'),('1FTEX1CM5DK702022','3'),('1FTNF1E81AK964294','3'),('1FTWF3D50AE337785','3'),('1G4GE5ED3BF553696','3'),('1G4GG5G35CF443278','3'),('1G4HR54K734305697','3'),('1G4PS5SK0D4133520','3'),('1G6AK5S37F0928628','3'),('1G6AY5SX1E0370176','3'),('1G6DA67V590681663','3'),('1G6DJ8ED8B0512782','3'),('1G6DL5EY0B0658878','3'),('1G6DP5E39C0514014','3'),('1G6DX6ED4B0856886','3'),('1G6KA5E62BU111356','3'),('1G6KE54Y31U530970','3'),('1G6KY54933U049894','3'),('1G6YV36A485186424','3'),('1GD11XEG8FF273768','3'),('1GD21ZCG5CZ082807','3'),('1GD21ZCGXDZ504619','3'),('1GD220CG2CZ343383','3'),('1GD322CG4EF929331','3'),('1GKS1EEF3ER374190','3'),('1GKS1GEJ7DR507418','3'),('1GKUCGEJXAR081464','3'),('1GYFC232X9R627124','3'),('1GYFK23239R898223','3'),('1GYFK66898R548309','3'),('1GYS3AKJ9FR449249','3'),('1GYS4CEF3DR928750','3'),('1HGCR2E34EA933369','3'),('1HGCR2E36DA943853','3'),('1J4AA2D14AL617976','3'),('1N4AA5AP2CC481484','3'),('1N4AA5AP6EC686115','3'),('1N4AA5AP9CC381804','3'),('1N4AB7AP1EN550973','3'),('1N6AA0CC5DN734095','3'),('1N6AA0EC4EN482497','3'),('1N6AA0EJ9FN709778','3'),('1N6AA0EK7FN026356','3'),('1N6AD0CW0EN136886','3'),('1N6AF0KY6EN558903','3'),('1N6AF0KYXEN408650','3'),('1VWAH7A30EC181019','3'),('1VWAS7A38FC236416','3'),('2B3CJ4DG1BH248802','3'),('2C3CCAFJ9CH558346','3'),('2C3CDXBG9DH029815','3'),('2C3CDXEJ2CH731819','3'),('2C3CDXL91FH512833','3'),('2D4JN1AGXBR769091','3'),('2G4GT5GX0E9712510','3'),('2HNYD18855H859895','3'),('2T1BPRHE7EC189767','3'),('2T3BF4DVXCW242346','3'),('3D7JB1EK6BG989652','3'),('3D7LT2ET9BG334633','3'),('3D7TT2HTXBG499893','3'),('3VW1K7AJ0FM432640','3'),('3VWPG3AG6AM725721','3'),('4T1BD1FK4EU086713','3'),('4T1BF3EKXAU590331','3'),('5BZBF0AA1FN719879','3'),('5FRYD3H61EB710632','3'),('5GAEV23D29J790377','3'),('5GAKRCKDXDJ571545','3'),('5LMJJ3H58CE074026','3'),('5N1AA0NC3FN754473','3'),('5N1AA0NE0FN684304','3'),('5N1AN0NW8FN708006','3'),('5N1AR1NB5BC342390','3'),('5NPDH4AE6BH448826','3'),('5TDBY5G19BS310290','3'),('5UXFA93536L204171','3'),('5XYKT3A18CG049289','3'),('JA4AP3AU4BZ147210','3'),('JH4KA96614C488349','3'),('JH4NA21615S154843','3'),('JM1BL1L31C1555940','3'),('JM1GJ1T69E1456100','3'),('JN1AZ4FH9FM754937','3'),('JN1CV6FEXBM516210','3'),('JN8AZ1FY7BW353465','3'),('JTDKDTB36E1220735','3'),('JTDKTUD38ED646298','3'),('KL4CJASB2FB184475','3'),('KMHCT4AE0EU828325','3'),('KMHEC4A40DA734235','3'),('KMHFG4JG2FA558665','3'),('KMHTC6AD7FU077454','3'),('KNADN5A35F6694759','3'),('SAJWA1C77D8608564','3'),('SAJWA1CB5CL224640','3'),('SALAG2D44BA444108','3'),('SCBBB7ZH5EC205343','3'),('SCBBR53W56C701199','3'),('SCBFT7ZA5FC183377','3'),('SCBGU3ZA0FC293960','3'),('SCFAD01A46G633375','3'),('SCFEBBBK3BG920503','3'),('SCFEFBAC8AG280401','3'),('SCFHDDAJ1CA447944','3'),('TRUSC28N931641762','3'),('WA1CGBFE3BD534302','3'),('WAUAF78E07A634437','3'),('WAUAFAFLXFN626920','3'),('WAUBH78E97A292758','3'),('WAUDF78E88A980590','3'),('WAUDG94F95N868666','3'),('WAUED54B11N831009','3'),('WAUEG78E86A405887','3'),('WAUEH78EX7A295424','3'),('WAUFEBFM5BA553660','3'),('WAUHF68P86A203434','3'),('WAUHFAFL9CA294454','3'),('WAUHFAFLXDA816106','3'),('WAUJFAFH5CN208269','3'),('WAUKFBFL2CN048723','3'),('WAUKH78E26A700290','3'),('WAULT54B23N946764','3'),('WAULT68E55A245155','3'),('WAUMGAFL7EA433124','3'),('WAUMGAFL8EA602048','3'),('WAUML44E56N105129','3'),('WAUPL58E15A022672','3'),('WAUPL68E44A175549','3'),('WAUSF78E56A507296','3'),('WAUSF78K89N752063','3'),('WAUSH98E67A460254','3'),('WAUUFAFH0DN721945','3'),('WAUUL78E27A511681','3'),('WBA3B3C59FF211829','3'),('WBA3B9C55FP166336','3'),('WBA3T3C53FP770607','3'),('WBABW33404P678880','3'),('WBADT53402C868518','3'),('WBAEP33453P045591','3'),('WBAEW53443P124250','3'),('WBAEW53472P146225','3'),('WBAGL63413D130841','3'),('WBAKF3C57CE263087','3'),('WBALW3C55FC459145','3'),('WBAPM73519E516528','3'),('WBAVB73568F674854','3'),('WBAVC73578A744467','3'),('WBAWL73539P811035','3'),('WBAYA8C54FG743313','3'),('WBSBL93474P734630','3'),('WDDEJ7GB4AA795655','3'),('WDDGF4HB9DA399247','3'),('WDDHF7GB1EA580318','3'),('WP0AB2A84FK635119','3'),('WP0CB2A87FK383293','3'),('WUARL48H08K568767','3'),('WUAW2BFC0FN765922','3'),('WVGAV7AX6CW427741','3'),('WVWAP7AN7DE477214','3'),('WVWED7AJ0DW113721','3'),('YV1902FH8B2237742','3'),('YV426MDA6F2802743','3'),('ZHWGU5BZ3DL976412','3'),('19UUA765X7A121439','4'),('19UUA8F21CA689603','4'),('19UUA8F28DA543023','4'),('1C4RDJAG2EC641217','4'),('1C4RDJEG0DC687380','4'),('1D7CE3GK3AS376551','4'),('1D7RE3BK9BS348885','4'),('1D7RW2BK4BS341267','4'),('1FAHP2D83EG159108','4'),('1FMCU0C73CK759530','4'),('1FMJK1F50AE354606','4'),('1FT7W2A6XEE549367','4'),('1FTEX1C89AF940284','4'),('1FTMF1EW8AF139145','4'),('1G4CW54K254324082','4'),('1G4GE5G31EF392645','4'),('1G4HB5EM3AU220227','4'),('1G6AE5S31E0505727','4'),('1G6DF8E50D0115029','4'),('1G6DM5E3XD0434294','4'),('1G6DX67D770280411','4'),('1G6KH5EY6AU402213','4'),('1GD11ZCGXDF736957','4'),('1GD120EG9BF397773','4'),('1GYFC66848R912679','4'),('1GYS3CEFXCR717241','4'),('1GYS3TKJ3FR366105','4'),('1N4AA5AP6DC160744','4'),('1N4AL2AP1AN677958','4'),('1N4AL2APXCN838861','4'),('1N6AA0CC8DN221665','4'),('1N6AF0KX6EN624986','4'),('1N6BF0KM1FN439353','4'),('1YVHZ8BH3A5074487','4'),('2C3CDYBT4CH640272','4'),('2C3CDYCJ9DH016398','4'),('2C4RVAAG9CR284720','4'),('2G4GT5GX7F9133385','4'),('2G4WD562X51083948','4'),('2G4WD582961490674','4'),('2G4WD582971167601','4'),('2HNYD18746H893433','4'),('2HNYD2H24DH503325','4'),('2T1KE4EE3DC119016','4'),('3C6JD6DT6CG763678','4'),('3D4PH9FG4BT150167','4'),('3D73M4HL0AG859857','4'),('3D73Y4CL0BG628888','4'),('3D7JB1EP6AG524377','4'),('3D7TT2HT0AG366039','4'),('3FA6P0LUXFR781807','4'),('3LNDL2L33BR484187','4'),('3N1AB7AP6FY326499','4'),('3VW4A7AT0DM058660','4'),('3VW507AT0EM958189','4'),('3VW517AT5FM136860','4'),('3VW517AT9FM453962','4'),('3VWF17AT9FM738374','4'),('4JGBF2FE5CA504172','4'),('4T1BF1FK3EU270244','4'),('4T1BF3EK6AU544690','4'),('4T1BF3EKXAU785653','4'),('4T1BK1EB3FU448930','4'),('4USBU53566L452943','4'),('4USDU53508L822585','4'),('5GAKRBED2CJ783408','4'),('5GALRAED1AJ215159','4'),('5GALVBED0AJ828522','4'),('5J6TF1H54DL772128','4'),('5N1AN0NU7BC555803','4'),('5N1AR2MM8FC110333','4'),('5N1CL0MM5EC279044','4'),('5NPEB4AC1DH706452','4'),('5TDBK3EH2BS689445','4'),('5TDBKRFH7FS015833','4'),('5TFBY5F15AX871564','4'),('5UXZV4C50CL402920','4'),('5XXGM4A78CG284423','4'),('5XYKT3A17BG852691','4'),('5YMGZ0C59DL372718','4'),('JA32U2FU1DU255210','4'),('JH4CL95915C418474','4'),('JH4CL95946C924558','4'),('JH4DC53035S274742','4'),('JH4KB16578C189959','4'),('JHMFB4F21CS212790','4'),('JHMGE8G29AC986410','4'),('JM1BL1L33D1413218','4'),('JM1CW2BL0E0825249','4'),('JM3TB2CA7D0962252','4'),('JN1AZ4EH1CM490464','4'),('JN1CV6FE3DM566420','4'),('JN1CV6FE6BM874663','4'),('JN8AF5MR1FT018902','4'),('JN8AZ1MU0CW745849','4'),('JN8AZ1MU3DW530094','4'),('JTDKTUD3XED439377','4'),('JTHDU5EF6C5183118','4'),('JTHKD5BH3C2670663','4'),('KMHCT4AE1FU569751','4'),('KMHFG4JG4CA782287','4'),('KNAFU6A23D5191601','4'),('SAJWA4GB3EL016383','4'),('SAJWA4GC1EM138873','4'),('SALVP2BG0FH956721','4'),('SCBLC37F76C794084','4'),('SCBLF44J98C129082','4'),('SCBZB25E81C224086','4'),('SCFBB04B67G003180','4'),('SCFFDAAE2CG765478','4'),('SCFFDCCD0CG751109','4'),('TRURD38J191330110','4'),('TRUTX28N211554789','4'),('WA1AGBFE4CD135522','4'),('WA1BV94L88D916989','4'),('WA1DGAFE0FD574308','4'),('WA1LGBFE7FD871660','4'),('WAUAG78E86A390340','4'),('WAUAH78E47A131357','4'),('WAUBF78E18A918228','4'),('WAUBFAFL4DA655354','4'),('WAUDF48H48K085164','4'),('WAUDF48H99K058012','4'),('WAUDF68E35A191852','4'),('WAUDFAFC8DN136020','4'),('WAUDFAFL6CA697418','4'),('WAUDFAFL9AN387401','4'),('WAUDG94F05N991594','4'),('WAUEF78E68A224051','4'),('WAUEG94F96N028327','4'),('WAUFEBFM0CA190573','4'),('WAUFEBFM2BA582470','4'),('WAUGL98E36A507761','4'),('WAUGL98E38A963133','4'),('WAUJC68EX3A822637','4'),('WAUKF78E67A278158','4'),('WAUKF78E95A610008','4'),('WAUKF98E87A664110','4'),('WAUKFAFL6DN529456','4'),('WAUKFAFL6EA211037','4'),('WAULT58E15A020581','4'),('WAUPFAFM1BA745752','4'),('WAUUL78E07A696457','4'),('WAUVC68E45A758969','4'),('WAUVT58E43A412668','4'),('WAUVT58E73A572110','4'),('WAUVT68E45A048020','4'),('WAUVVAFR7CA571466','4'),('WAUWGAFC0DN665967','4'),('WBA3B9C51EJ551314','4'),('WBA6B8C58FD887467','4'),('WBAAV33431F466488','4'),('WBABW53436P175214','4'),('WBAFR7C51DD715235','4'),('WBAGN834X4D643805','4'),('WBALZ3C53CC350007','4'),('WBAPH7C54AA221150','4'),('WBAPK5C51AA991537','4'),('WBAVM5C5XDV113569','4'),('WBSDX9C50BE991465','4'),('WDDEJ7HB6AA479513','4'),('WDDGF4HB5DA797748','4'),('WDDHH8JB2FB664460','4'),('WUADU78E48N386535','4'),('WUARL48H89K153939','4'),('WUAW2BFC6EN492662','4'),('WVGAV7AXXFW062291','4'),('WVGEF9BPXED570215','4'),('WVGEG9BP4DD623440','4'),('WVWAW7AH2BV360408','4'),('WVWED7AJ8BW981740','4'),('YV1952AS7E1402422','4'),('19UYA41723A711363','5'),('19VDE1F74EE760436','5'),('1B3CB1HA9AD073325','5'),('1C3BC8EG1BN791587','5'),('1C4PJLAB7EW423983','5'),('1C4RDJAG4FC939768','5'),('1D7RE3BK2AS393438','5'),('1D7RV1GP1AS540633','5'),('1FMCU4K33CK938978','5'),('1FTEW1CW6AF028245','5'),('1FTEX1CM5DF393225','5'),('1FTMF1EW9AF195773','5'),('1FTNS1EW2AD288937','5'),('1FTSX2B59AE767016','5'),('1FTWF3B55AE458377','5'),('1G4GC5EG5AF302807','5'),('1G4GE5EV0AF696225','5'),('1G4GH5E32DF135194','5'),('1G4HR54K43U747160','5'),('1G6AU5S88F0920592','5'),('1G6DL5ED5B0609463','5'),('1G6DL8EDXB0128335','5'),('1G6DM1ED0B0168024','5'),('1G6DS5ED9B0306592','5'),('1GD12ZCGXCF880519','5'),('1GT020CG8EF625978','5'),('1GYS4JEF2BR907924','5'),('1GYS4JKJ5FR230463','5'),('1GYUKDEF8AR426302','5'),('1N4AB7AP5DN025817','5'),('1N4AL2AP5BN249716','5'),('1N4AL3AP3EC273020','5'),('1N6AA0CC8BN228175','5'),('1N6AA0EC9EN729626','5'),('1N6AF0LX3FN273096','5'),('1N6BF0KL3FN278401','5'),('1N6BF0KM9FN870877','5'),('1ZVBP8AM2E5944183','5'),('2B3CK3CV6AH564895','5'),('2B3CM5CTXBH301508','5'),('2C3CCABG3CH434423','5'),('2C3CDXBG8DH890709','5'),('2C3CDYBT2EH008387','5'),('2FMPK3J93FB664817','5'),('2G4WB52K011093555','5'),('2G61R5S3XE9770110','5'),('2HNYD284X7H918896','5'),('2T1KE4EE6CC221182','5'),('2T1KE4EE6CC685783','5'),('2V4RW3D11AR354939','5'),('3C63D3NL0CG106770','5'),('3D4PG4FB4BT804756','5'),('3D73Y4EL8BG864802','5'),('3D7TT2CT6BG175380','5'),('3FADP4AJ7BM635427','5'),('3VW517AT9EM673584','5'),('4T1BF1FK2EU087997','5'),('4T1BF1FK8FU894946','5'),('5FPYK1F57EB117614','5'),('5FPYK1F66EB778656','5'),('5FRYD3H28GB394372','5'),('5FRYD4H26FB505778','5'),('5J8TB3H35EL856098','5'),('5J8TB3H3XEL523248','5'),('5N1AA0NC0FN351406','5'),('5N1AA0NC6AN696996','5'),('5N1AN0NU0CC433799','5'),('5N1AR2MM8FC288615','5'),('5N1AR2MM9DC273182','5'),('5N1AZ2MH7FN665037','5'),('5TDBW5G15AS403750','5'),('5UXFG8C53BL895172','5'),('5UXKR0C55F0583064','5'),('5XYKT3A17BG765230','5'),('5XYKT3A18BG530612','5'),('JA32U2FU5FU187433','5'),('JH4DC54815S533894','5'),('JH4NA21691T721840','5'),('JM1NC2JF1D0403597','5'),('JM1NC2JF7B0017750','5'),('JM3TB2CV3F0742628','5'),('JN1CV6EK3DM727646','5'),('JN8AZ1MU0CW126846','5'),('JN8AZ1MU3AW898738','5'),('JN8AZ2ND2F9495831','5'),('JTDBT4K33CL609553','5'),('JTDKDTB38C1499876','5'),('JTDKTUD36ED747095','5'),('JTEBU4BF7DK996506','5'),('JTHFF2C27D2848421','5'),('JTJBM7FX8F5866435','5'),('KL4CJGSBXFB817694','5'),('KMHCT4AE2FU803167','5'),('KMHGH4JH0CU362292','5'),('KMHHT6KD1DU249401','5'),('KMHHT6KD4BU341163','5'),('KMHHU6KJ0FU024067','5'),('KNAFK4A67E5803992','5'),('KNAFU6A26B5285582','5'),('KNAFX6A89F5647664','5'),('SALFR2BG0EH487854','5'),('SALWR2VF7FA610045','5'),('SCBBB7ZH1DC075544','5'),('SCBCR73W59C196351','5'),('SCBLC47JX9C497440','5'),('SCFAD01A48G868619','5'),('SCFEBBAKXEG867983','5'),('W04GN5EC5B1466272','5'),('W04GZ5GV0B1499375','5'),('WA1CGAFE8DD856429','5'),('WA1CYBFE1AD219039','5'),('WA1LGAFE6DD595365','5'),('WA1WGBFP0EA188200','5'),('WA1YD54B92N641308','5'),('WAU4FAFR2BA693367','5'),('WAUA2AFD1DN236158','5'),('WAUAF78E26A036090','5'),('WAUAF98EX7A339969','5'),('WAUAH78E97A275258','5'),('WAUBF78E56A470363','5'),('WAUBF98E38A146357','5'),('WAUBFAFL3EA040974','5'),('WAUDF78E47A016213','5'),('WAUDG98E35A707707','5'),('WAUEG98EX6A049101','5'),('WAUEH54B41N970250','5'),('WAUHF68P46A184753','5'),('WAUJF78K69N370156','5'),('WAUJT58E92A182607','5'),('WAUJT68E94A382931','5'),('WAUKFAFL4CN155394','5'),('WAULC58E55A500882','5'),('WAULD64B23N380415','5'),('WAUNG74F19N322376','5'),('WAUR4AFD8CN659122','5'),('WAURVAFA1AN489749','5'),('WAUSH78E78A422649','5'),('WAUXL68E94A006112','5'),('WAUXU54B13N568628','5'),('WBA3B5C51FF156627','5'),('WBA3N3C55FF025664','5'),('WBA4B3C53FG876997','5'),('WBA8Z5C57FG462680','5'),('WBAAV334X1E218325','5'),('WBADS43493G113407','5'),('WBADX7C51DP409115','5'),('WBAET37473N106330','5'),('WBALM7C5XBE294270','5'),('WBANW53568C061644','5'),('WBAPM7C56AE176670','5'),('WBASN0C52DD599576','5'),('WBASN4C50CC486172','5'),('WBAUT93589A888215','5'),('WBAUU3C53AA918171','5'),('WBAYB6C56ED496295','5'),('WBSBR93494P324393','5'),('WP0CA2A88CS109230','5'),('WVWED7AJXCW317411','5'),('YV1940AS7D1756916','5'),('19UUA56783A061032','6'),('1C3CC5FB1AN904300','6'),('1C3CCBCG9DN524155','6'),('1D7RB1CP3BS697967','6'),('1D7RB1CP4BS110854','6'),('1FMCU4K33BK507345','6'),('1FMEU5BE4AU390555','6'),('1FMJK1HT8FE354713','6'),('1FTEW1CF2FK477551','6'),('1FTEW1CM5DK914115','6'),('1FTEW1E81AK419423','6'),('1FTMF1CW7AK542463','6'),('1FTWF3D58AE656657','6'),('1FTWW3A53AE511577','6'),('1FTWX3D58AE106744','6'),('1G4CU541344478280','6'),('1G4GE5G31FF181012','6'),('1G4GG5E31CF244988','6'),('1G6AM5S32D0427136','6'),('1G6AP5SXXF0730436','6'),('1G6DE5E57C0347370','6'),('1G6DG8E52D0319456','6'),('1G6DH5E58D0852309','6'),('1G6DH8EGXA0419993','6'),('1G6DM8E39D0191725','6'),('1G6KA5EY8AU733525','6'),('1G6KD57Y88U130248','6'),('1G6KS54Y72U092755','6'),('1GD12XEG5FF354093','6'),('1GD312CG5EF929485','6'),('1GD422CG2EF562921','6'),('1GYFC36259R129222','6'),('1GYFC66808R730011','6'),('1GYFK13299R704983','6'),('1GYS4BEF2ER834807','6'),('1GYS4EEJ2CR102583','6'),('1N4AA5AP4BC039160','6'),('1N6AA0CA3FN728233','6'),('1N6AD0CW6EN834502','6'),('1N6AD0CW6FN655359','6'),('1N6AF0KY0EN677899','6'),('1N6BF0KX8FN453602','6'),('1NXBU4EE9AZ591802','6'),('2B3CJ4DG8BH763005','6'),('2B3CJ5DT1AH591711','6'),('2C3CA7CW6AH703025','6'),('2C3CDXCT8FH139964','6'),('2C3CDYAG6EH364006','6'),('2C3CDYCJ0CH903452','6'),('2FMDK3AK8EB900222','6'),('2G4WC582491772504','6'),('2G4WF551611226035','6'),('2HNYD18401H487664','6'),('2HNYD28227H071130','6'),('2HNYD28698H046505','6'),('2T1BU4EE9DC121761','6'),('2T1BURHE6FC110552','6'),('2T1KE4EE2DC086302','6'),('2T1KE4EEXCC643679','6'),('3FADP0L39BR017892','6'),('3FADP4AJ0FM925725','6'),('3GYT4LEF4CG473183','6'),('3N1BC1AP5BL670993','6'),('3VW4T7AT3EM430441','6'),('3VW8S7AT9FM596758','6'),('3VWAL7AJ8AM533382','6'),('3VWJX7AJ5AM734998','6'),('5FRYD3H66FB147692','6'),('5J8TB18219A088780','6'),('5N1AA0NCXAN800793','6'),('5N1AN0NUXAC654176','6'),('5N1AT2ML4EC959365','6'),('5N1AZ2MH9FN077690','6'),('5NPET4ACXAH496863','6'),('5TDDK3DC6DS784334','6'),('5UXWX7C5XE0333267','6'),('5UXWX9C56E0606085','6'),('5XYZT3LB0DG530210','6'),('JA32U1FU3AU932943','6'),('JA32X8HW4EU211521','6'),('JH4DC548X3S215737','6'),('JH4KB2F52BC349226','6'),('JH4KB2F53AC667127','6'),('JH4KB2F62CC730195','6'),('JHMZF1C60CS928961','6'),('JHMZF1C6XCS187248','6'),('JM1GJ1T6XF1665752','6'),('JM1NC2MF4E0027524','6'),('JN1AZ4FH2FM884753','6'),('JN1CV6AP2AM461498','6'),('JN8AE2KP5C9398466','6'),('JN8AE2KP5F9558432','6'),('JN8AF5MR2DT165601','6'),('JN8AZ2KR4CT747657','6'),('JTHBE1BL7D5966876','6'),('JTHDU1EF3A5109404','6'),('JTHKD5BH3B2670130','6'),('KL4CJASB4EB016772','6'),('KMHCM3ACXAU521843','6'),('KMHHT6KD1CU583247','6'),('KMHTC6AD5CU456223','6'),('KNADH4A39B6566276','6'),('KNADM4A32C6696039','6'),('KNAFK4A69F5361217','6'),('SAJWA2GT1EM064018','6'),('SAJWA4GB4EL491038','6'),('SALAB2D4XAA346276','6'),('SALAB2V62EA735256','6'),('SALAC2D48CA614662','6'),('SALFP2BN6BH879530','6'),('SALVN2BG5EH046793','6'),('SCBBB7ZH1EC954656','6'),('SCBDR33WX8C540610','6'),('SCBZB25E62C917823','6'),('SCBZK22E02C728119','6'),('SCFEBBCF9BG730934','6'),('SCFHDDBT0EG292786','6'),('WA1BY94L47D994904','6'),('WA1CGAFE5DD439320','6'),('WA1CGAFP7EA354239','6'),('WA1LMBFE8FD158453','6'),('WAUAF98E76A419826','6'),('WAUBT48H15K252740','6'),('WAUDFAFL6FN268664','6'),('WAUDFAFLXCN918673','6'),('WAUDGBFL0DA187716','6'),('WAUDH78E97A227241','6'),('WAUEKBFB6AN002082','6'),('WAUFFAFL1EA066913','6'),('WAUFFAFL7CA442611','6'),('WAUFGAFC0FN076999','6'),('WAUJFAFH2EN611872','6'),('WAUKFBFL9CN584584','6'),('WAULC68E12A998192','6'),('WAULC68E45A831846','6'),('WAULT68E82A186498','6'),('WAUML64B82N387522','6'),('WAUNF78P16A594435','6'),('WAUSH78E88A821201','6'),('WAUUFAFH7AN744683','6'),('WAUVT68E82A908450','6'),('WAUWMAFC9FN887015','6'),('WAUXD68D02A355080','6'),('WAUXL58E44A096649','6'),('WBA3B9G53EN588352','6'),('WBA3R5C55EF540582','6'),('WBA5B3C55ED316757','6'),('WBADT53452C027374','6'),('WBAEV53422K855760','6'),('WBAEW53422P913169','6'),('WBAFR9C50CC516953','6'),('WBAGH834X1D681845','6'),('WBAGN63403D811132','6'),('WBAGN83474D345289','6'),('WBAKC8C58AC333257','6'),('WBAKF3C59DJ757170','6'),('WBAKP9C55ED174515','6'),('WBALM535X9E930586','6'),('WBANA73594B895076','6'),('WBANF33507B933471','6'),('WBANV93519C629472','6'),('WBANW53518C631968','6'),('WBAPK5C52AA628504','6'),('WBAPM5G50BN423293','6'),('WBAUP9C51BV172095','6'),('WBAVC53518F503608','6'),('WBAYF4C56FG114176','6'),('WBAYM9C5XED680201','6'),('WBAYP9C55DD334501','6'),('WBS3U9C55FJ743004','6'),('WDDEJ7EB1BA488819','6'),('WDDEJ7GB5CA344186','6'),('WDDGF4HB2DA429009','6'),('WP0AA2A99CS119913','6'),('WVWED7AJ7AW421304','6'),('YV1612FH9D2038198','6'),('YV426MDA2F2129126','6'),('YV4940BZ2D1212161','6');
/*!40000 ALTER TABLE `flight` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-06 19:05:57
