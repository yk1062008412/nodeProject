// 引入mysql
const mysql = require('mysql');

const connection = mysql.createConnection({
  host     : 'localhost',       
  user     : 'root',              
  password : '',       
  port: '3306',                   
  database: 'node_project',
  charset:'UTF8_GENERAL_CI'
})

connection.connect();

connection.query('SELECT * FROM user_info', function(error, results, fields){
  if (error) throw error;
  console.log(results[0]);
})

connection.end();