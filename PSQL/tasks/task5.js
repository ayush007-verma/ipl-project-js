// Create your own scenario.
// Compare the performance of two teams ('sunrisers hyd' ,'Mumbai indians') for all seasons.

const fs = require('fs')
const client = require('../index')

const query = fs.readFileSync('./sql/task5.sql', 'utf-8')

client.query(query).then((res) => {
    console.log(res.rows)
    client.end()
}).catch((err) => {
    console.log('error while querying ', err)
})
