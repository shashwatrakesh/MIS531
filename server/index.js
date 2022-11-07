const express = require("express");
const mysql = require("mysql");
const cors = require("cors");
const app = express();
const oracledb = require('oracledb');

app.use(cors());
app.use(express.json());

const db = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "password",
  insecureAuth: true,
  database: "employeeSystem",
});

const oracledbconnection =  oracledb.getConnection({
  user:  "mis531groupS1C",
  password: "c1)NS(T9bme015V",
  host : "navydb.artg.arizona.edu"
})

app.post("/create", (req, res) => {
  const name = req.body.name;
  const age = req.body.age;
  const country = req.body.country;
  const position = req.body.position;
  const wage = req.body.wage;

  db.query(
    "INSERT INTO employees (name, age, country, position, wage) VALUES (?,?,?,?,?)",
    [name, age, country, position, wage],
    (err) => {
      if (err) {
        console.log(err);
      } else {
        res.send("values inserted");
      }
    }
  );
});

app.get("/employees", async(req, res) => {

  // db.query(
  //   'SELECT * FROM employees',(err, result)=> {
  //     if (err) {
  //       console.log(err);
  //     } else {
  //       res.send(result);
  //     }
  //   }
  // );

  data = await oracledbconnection.execute('select * from courses')
  console.log(data)
  res.send('true')
});

app.listen(3001, () => {
  console.log("Started on port 3001");
});
