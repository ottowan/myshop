// get the client
//const mysql = require('mysql2');
const mysql = require('mysql2/promise');
const bluebird = require('bluebird');
 

const getAll = async function(){
    // create the connection, specify bluebird as Promise
    const connection = await mysql.createConnection({host:'localhost', user: 'root', password: 'root',database: 'myshop', Promise: bluebird});
    
    // query database
    //const [rows, fields] = await connection.execute('SELECT * FROM `categories` WHERE `name` = ? AND `age` > ?', ['Morty', 14]);
    
    [rows, fields] = await connection.execute('SELECT * FROM `categories`');

    return [rows, fields]
}
module.exports.getAll = getAll;


const get = async function(id){
    // create the connection, specify bluebird as Promise
    const connection = await mysql.createConnection({host:'localhost', user: 'root', password: 'root',database: 'myshop', Promise: bluebird});
    
    // query database
    //const [rows, fields] = await connection.execute('SELECT * FROM `categories` WHERE `name` = ? AND `age` > ?', ['Morty', 14]);
    
    [rows, fields] = await connection.execute('SELECT * FROM `categories` WHERE `id` = ? ', [id]);

    return [rows, fields]
}
module.exports.get = get;


const find = async function(key){
    // create the connection, specify bluebird as Promise
    const connection = await mysql.createConnection({host:'localhost', user: 'root', password: 'root',database: 'myshop', Promise: bluebird});
    
    // query database
    //const [rows, fields] = await connection.execute('SELECT * FROM `categories` WHERE `name` = ? AND `age` > ?', ['Morty', 14]);
    var query = 'SELECT * FROM `categories` WHERE `name` like "%'+key+'%"'
    console.log(query)
    //[rows, fields] = await connection.execute('SELECT * FROM `categories` WHERE `name` like "%?%" ', [key]);
    fields = await connection.execute(query);

    return fields
}
module.exports.find = find;

const create = async function(req){
    // create the connection, specify bluebird as Promise
    const connection = await mysql.createConnection({host:'localhost', user: 'root', password: 'root',database: 'myshop', Promise: bluebird});
    
    // query database
    //const [rows, fields] = await connection.execute('SELECT * FROM `categories` WHERE `name` = ? AND `age` > ?', ['Morty', 14]);
    var query = "INSERT INTO categories(name) VALUES ('"+req.name+"')"
    rows = await connection.execute(query);

    return rows
}
module.exports.create = create;


const update = async function(id, body){
    // create the connection, specify bluebird as Promise
    const connection = await mysql.createConnection({host:'localhost', user: 'root', password: 'root',database: 'myshop', Promise: bluebird});
    
    // query database
    //const [rows, fields] = await connection.execute('SELECT * FROM `categories` WHERE `name` = ? AND `age` > ?', ['Morty', 14]);
    //var sql = "UPDATE customers SET address = 'Canyon 123' WHERE address = 'Valley 345'";

    var sql = 'UPDATE categories SET name = "'+body.name+'"  WHERE `id` = '+id
    console.log(sql)
    rows = await connection.execute(sql);

    return rows
}

module.exports.update = update;

const deleted = async function(id){
    // create the connection, specify bluebird as Promise
    const connection = await mysql.createConnection({host:'localhost', user: 'root', password: 'root',database: 'myshop', Promise: bluebird});

    var sql = 'DELETE FROM categories  WHERE `id` = '+id
    console.log(sql)
    rows = await connection.execute(sql);

    return rows
}
module.exports.deleted = deleted;