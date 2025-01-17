const mysql = require('mysql');
const db_config = require('../config.json');

let connection;
// const env = process.env.NODE_ENV || 'development';

makeConnection = () => {
    connection = mysql.createConnection({
        host: "localhost",
        user : "root", 
        password : "password",
        database: "test"
    }
        // env === "development" ? db_config.dev : process.env.db_config,
    );
    console.log('Attempting connection to database...')

    connection.connect((err) => {
        if(err) {
            console.log('Error when connecting to database: ', err);
            setTimeout(makeConnection, 5000);
        } else {
            console.log('Connected to database successfully')
        }
    });
    connection.on('error', (err) => {
        console.log('Error on connection: ', err);
        if(err.code === 'PROTOCOL_CONNECTION_LOST') {
            console.log(`Database connection lost.`)
            makeConnection();
        } else {
            throw err;
        }
    });
}

makeConnection();

module.exports = connection;