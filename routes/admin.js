const express = require('express');
const { redirect } = require('express/lib/response');
const app = express();
const bodyparser = require('body-parser');
const router = express.Router();
const excel = require('exceljs');
const fs = require('fs');

var mysql = require("mysql");
const { end } = require("../db_connect");
var db_connect = require("../db_connect");

router.post("/adminHome", (req, res) => {
    req.session.StudentId = 000000000;
    req.session.save();
    (async () => {

        res.render('adminHome');
    })()
});

router.get("/download", (req, res) => {
    (async () => {
        try {
           await fs.writeFileSync("/Users/hrithik/Desktop/CSUN/Fall21/490/public/assets/admin.txt", "content from nodejs");
        } catch (err) {
            console.error(err)
        }
        res.download("/Users/hrithik/Desktop/CSUN/Fall21/490/public/assets/admin.txt");
    }) ()
});

module.exports = router;