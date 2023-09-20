
const mysql = require('mysql')
require('dotenv').config()

const client = mysql.createConnection({
    host: process.env.MYSQL_DB_HOST,
    user: process.env.MYSQL_DB_USER,
    database: process.env.MYSQL_DB_DATABASE,
    password: process.env.MYSQL_DB_PASSWORD
})

client.connect((err) => {
    if (err) {
      console.error('error while connecting:', err);
      return;
    }
    console.log('Connected to MySQL');
  });

module.exports = client;