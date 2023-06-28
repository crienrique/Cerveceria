const async = require('hbs/lib/async');
const pool = require('./bd');

async function getNovedades() {
    try {
        var query = 'select * from novedades';
        var rows = await pool.query(query);
        return rows;
    }
    catch (error) {
        console.log(error)
    }
}

async function deleteNovedadById(id) {
    try {
        var query = 'delete from novedades where id = ?';
        var rows = await pool.query(query, [id]);
        return rows;
    }
    catch (error) {
        console.log(error)
    }
}

async function insertNovedad(obj) {
    try {
        var query = 'insert into novedades set ?';
        var rows = await pool.query(query, [obj]);
        return rows;
    }
    catch (error) {
        console.log(error);
        throw error;
    }
}

async function getNovedadById(id) {
    try {
        var query = 'select * from novedades where id = ?';
        var rows = await pool.query(query, [id]);
        return rows[0];
    }
    catch (error) {
        console.log(error)
    }
}

async function modificarNovedadById(obj, id) {
    try {
        var query = 'update novedades set ? where id = ?';
        var rows = await pool.query(query, [obj, id]);
        return rows;
    }
    catch (error) {
        console.log(error)
    }
}


module.exports = { getNovedades, deleteNovedadById, insertNovedad,
    getNovedadById, modificarNovedadById }