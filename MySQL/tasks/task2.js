const client = require('../index')
const fs = require('fs')

const query = fs.readFileSync('./sql/task2.sql', 'utf-8')

client.query(query, (err, res, flds) => {
    if(err) {
        console.log('error while querying ', err)
    }
    console.log('results : ', res)
})

client.end()