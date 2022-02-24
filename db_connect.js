//Connect to database
require("dotenv").config();
const mysql = require("mysql2");

const con = mysql.createPool({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
  multipleStatements: true,
});

let sql = "SELECT * FROM Student;";
con.execute(sql, function (err, result) {
  if (err) throw err;
  console.log("Connected!");
});
module.exports = con;
