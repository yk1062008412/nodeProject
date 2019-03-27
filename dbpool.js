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

// 查询
exports.query = (sql, arr, callback) =>{
    // 创建链接
    pool.getConnection((err, connection) => {
        if(err) throw err;
        connection.query(sql, arr, (error, results, fields) => {
            // 将链接释放到连接池中
            connection.release();
            if(error) throw error;
            callback && callback(results, fields);
        })
    })
}