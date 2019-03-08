// 简单连接数据库
const mysql = require('mysql');

const connection = mysql.createConnection({
  host     : '127.0.0.1',       
  user     : 'root',              
  password : '123456',       
  port: '3306',                   
  database: 'node_project',
  charset:'UTF8_GENERAL_CI'
})

connection.connect();

connection.query('SELECT * FROM students_info', function(error, results, fields){
  if (error) throw error;
  console.log(results[0]);
})

connection.end();