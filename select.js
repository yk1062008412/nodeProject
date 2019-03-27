const dbpool = require('./dbpool');

dbpool.query('select * from students_info', [], (results, fields)=>{
    console.log(results[0].stu_addr);
    // console.log(fields)
})