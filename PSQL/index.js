
// First setting up a client from pg package that i installed to
// connect Node js with postGre SQL running locally in my system.

const { Client } = require('pg')

// use .env to get all required arguments to establish a connection...

require('dotenv').config()

// Establish a connection of postgresql with node js.
// using default user postgres with psql running on 5432 port.


const client = new Client({
    user: process.env.PSQL_DB_USER,
    host: process.env.PSQL_DB_HOST,
    database: process.env.PSQL_DB_DATABASE,
    password: process.env.PSQL_DB_PASSWORD,
    port: process.env.PSQL_DB_PORT
})

// Using client to connect to psql database which will return a promise.
client.connect().then(() => {
    console.log('connection established successful')
}).catch((err) =>{
    console.log('error occurred during connection', err)
})

// exporting client module so as to use it in other js files.
module.exports = client;
