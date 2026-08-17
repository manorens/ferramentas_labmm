const express = require('express');
const cors = require('cors');
const connection = require('./db');
const path = require('path');

const server = express();

server.use(cors());
server.use(express.json());

// Permite acessar o Frontend
server.use(express.static(path.join(__dirname, '..', 'front')));


// ==========================
// LISTAR TODOS OS INSUMOS
// ==========================

server.get('/insumos', (req, res) => {

    const sql = 'SELECT * FROM insumos ORDER BY descricao ASC';

    connection.query(sql, (erro, resultados) => {

        if (erro) {
            return res.status(500).json({
                erro: 'Erro ao buscar os insumos'
            });
        }

        res.json(resultados);
    });
});


// ==========================
// BUSCAR UM INSUMO PELO ID
// ==========================

server.get('/insumos/:id', (req, res) => {

    const id = req.params.id;

    const sql = 'SELECT * FROM insumos WHERE id = ?';

    connection.query(sql, [id], (erro, resultados) => {

        if (erro) {
            return res.status(500).json({
                erro: 'Erro ao buscar o insumo'
            });
        }

        if (resultados.length === 0) {
            return res.status(404).json({
                erro: 'Insumo não encontrado'
            });
        }

        res.json(resultados[0]);
    });
});


// ==========================
// CADASTRAR INSUMO
// ==========================

server.post('/insumos', (req, res) => {

    const {
        codigo,
        descricao,
        quantidade,
        categoria
    } = req.body;

    const sql = `
        INSERT INTO insumos
        (codigo, descricao, quantidade, categoria)
        VALUES (?, ?, ?, ?)
    `;

    connection.query(
        sql,
        [codigo, descricao, quantidade, categoria],
        (erro, resultado) => {

            if (erro) {
                return res.status(500).json({
                    erro: 'Erro ao cadastrar o insumo'
                });
            }

            res.status(201).json({
                mensagem: 'Insumo cadastrado com sucesso!',
                id: resultado.insertId
            });
        }
    );
});


// ==========================
// ATUALIZAR INSUMO
// ==========================

server.put('/insumos/:id', (req, res) => {

    const id = req.params.id;

    const {
        codigo,
        descricao,
        quantidade,
        categoria
    } = req.body;

    const sql = `
        UPDATE insumos
        SET codigo = ?,
            descricao = ?,
            quantidade = ?,
            categoria = ?
        WHERE id = ?
    `;

    connection.query(
        sql,
        [codigo, descricao, quantidade, categoria, id],
        (erro, resultado) => {

            if (erro) {
                return res.status(500).json({
                    erro: 'Erro ao atualizar o insumo'
                });
            }

            if (resultado.affectedRows === 0) {
                return res.status(404).json({
                    erro: 'Insumo não encontrado'
                });
            }

            res.json({
                mensagem: 'Insumo atualizado com sucesso!'
            });
        }
    );
});


// ==========================
// EXCLUIR INSUMO
// ==========================

server.delete('/insumos/:id', (req, res) => {

    const id = req.params.id;

    const sql = 'DELETE FROM insumos WHERE id = ?';

    connection.query(sql, [id], (erro, resultado) => {

        if (erro) {
            return res.status(500).json({
                erro: 'Erro ao excluir o insumo'
            });
        }

        if (resultado.affectedRows === 0) {
            return res.status(404).json({
                erro: 'Insumo não encontrado'
            });
        }

        res.json({
            mensagem: 'Insumo excluído com sucesso!'
        });
    });
});


// ==========================
// INICIAR SERVIDOR
// ==========================

const PORTA = 3067;

server.listen(PORTA, () => {
    console.log(`Servidor rodando em http://localhost:${PORTA}`);
});