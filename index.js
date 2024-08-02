const mysql = require('mysql')
const http = require('http')

const connection = mysql.createConnection({
    host: 'db',
    user: 'root',
    password: 'root',
    database: 'mysql'
})

connection.connect

connection.connect((error) => {
    if (error) {
        console.error('Error ao conectar com o banco de dados', error)
        throw error
    }
    console.log('Conectado ao bando de dados MySQL')
})

http.createServer(function (req, res) {
    res.write('hello world')
    res.end()
}).listen(3000)
