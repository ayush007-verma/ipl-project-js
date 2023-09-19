//Number of matches played per year of all the years in IPL.
const fs = require('fs')
const client = require('../index')

const query = fs.readFileSync('./sql/task1.sql', 'utf-8')

// executing query and on execution ending the connection of client with psql.
client.query(query).then((res) => {
    console.log(res.rows)
    client.end()
}).catch((err) => {
    console.log('error while querying ', err)
})
