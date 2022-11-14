const express = require("express");
const cors = require("cors");
const app = express();
const oracledb = require('oracledb');

app.use(cors());
app.use(express.json());

oracledb.initOracleClient({libDir: 'C:\\oracle\\instantclient_21_7'});
const oracledbconnection =  oracledb.getConnection({
  user:  "mis531groupS1C",
  password: "c1)NS(T9bme015V",
  connectString  : "(DESCRIPTION =(ADDRESS = (PROTOCOL = TCP)(HOST = navydb.artg.arizona.edu)(PORT = 1521))(CONNECT_DATA =(SID= ORCL)))"
});

app.post("/create", (req, res) => {
  // const name = req.body.name;
  // const age = req.body.age;
  // const country = req.body.country;
  // const position = req.body.position;
  // const wage = req.body.wage;

  // db.query(
  //   "INSERT INTO employees (name, age, country, position, wage) VALUES (?,?,?,?,?)",
  //   [name, age, country, position, wage],
  //   (err) => {
  //     if (err) {
  //       console.log(err);
  //     } else {
  //       res.send("values inserted");
  //     }
  //   }
  // );

  // referral code for reading form params from request
});

app.get("/courses", async(req, res) => {
  console.log('inside')
  const result =  await (await oracledbconnection).execute (
    'select * from courses'
  );
  res.send(result)
});

app.listen(3001, () => {
  console.log("Started on port 3001");
});
