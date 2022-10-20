const express = require("express");
var bodyParser = require("body-parser");
var cors = require("cors");
const json = require("./json")

const app = express();
const port = 4000;

// parse application/json
app.use(bodyParser.json());
app.use(cors());

// mysql connect
var mysql = require("mysql");
var connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "bdsl_annotation",
});
connection.connect();

// testing url
app.get("/", (req, res) => {
  res.send("Hello World! " + Math.random());
});

// get all videos
app.get("/videos", (req, res) => {
  // disable getting data from mysql db
  // var sql =
  //   "select * from videos";
  // connection.query(sql, function (err, result) {
  //   if (err) throw err;
  //   res.json(result);
  // });
  return res.json(json)
});

// get single videos
app.get("/videos/:id", (req, res) => {
  const id = req.params.id;
  // disable getting data from mysql db
  // const sql = "select * from videos where id = " + id;
  // connection.query(sql, function (err, result) {
  //   if (err) throw err;
  //   res.json(result[0]);
  // })
  res.json(json.json[id]);
});

// save annotation and return id
app.post("/save", (req, res) => {
  console.log(req.body);
  const annotationJson = JSON.stringify(req.body);
  var sql = "insert into annotation (json,status) values ?"
  const values = [
    [annotationJson, 'save']
  ]
  connection.query(sql, [values], function (err, result) {
    if (err) throw err;
    console.log(result.insertId);
    res.json({ id: result.insertId });
  })
});

// get completed data
app.get('/complete', (req, res) => {
  const id = req.params.id;
  const sql = "select * from annotation";
  connection.query(sql, function (err, result) {
    if (err) throw err;
    res.json(result);
  })
})

// search using gloss  & meta
app.post('/search', (req, res) => {
  const annotation = req.body.annotation;
  const meta = req.body.meta;
  
  const ann = annotation.length > 0 ? `json like '%annotation%${annotation}%}]%'` : "";
  const met = meta.length > 0 ? `json like '%meta%${meta}%}]}%'` : "";
  const addAnd = ((ann.length !== 0) && (met.length !== 0)) ? ' and ' : "";
  const where = ((ann.length !== 0) || (met.length !== 0)) ? ' where ' : "";
  var sql = `select * from annotation ` + where + ann + addAnd + met;
  console.log(sql);
  connection.query(sql, function (err, result) {
    if (err) res.json({});
    res.json(result);
  })
})

// save category
app.post('/category', (req, res) => {
  const categoryName = req.body.CategoryName;
  const json = req.body.allData;
  console.log(categoryName, json);
  var sql = "insert into categories (name,json) values ?"
  const values = [
    [categoryName, JSON.stringify(json)]
  ]
  connection.query(sql, [values], function (err, result) {
    if (err) throw err;
    console.log(result.insertId);
    res.json({ id: result.insertId });
  })

})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});

