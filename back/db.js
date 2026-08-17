const mysql = require('mysql2');

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'root',
    database: 'inventario_ctw'
});

connection.connect((erro) => {
    if (erro) {
        console.error('Erro ao conectar ao MySQL:', erro);
        return;
    }

    console.log('Conectado ao banco inventario_ctw!');
});

module.exports = connection;