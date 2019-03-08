const mysql = require('mysql');

// 创建数据库连接池
const pool = mysql.createPool({
    host     : '127.0.0.1',       
    user     : 'root',              
    password : '123456',       
    port: '3306',                   
    database: 'node_project',
    charset:'UTF8_GENERAL_CI'
})