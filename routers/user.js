const express = require('express');
const path = require('path');
const router = express.Router();

const db = require("../data/db");
const dbget = require("../data/dbget");

router.use("/Reservation", function(req,res){
    const today = new Date().toISOString().split('T')[0];
    console.log(today);
    var x = 0;

    res.render('Reservation', { x: x, today: today });
})

router.use("/Home", function(req,res){
    var x = 0;

    res.render('Home', { x: x });
})

router.use(express.urlencoded({ extended: true }));

router.get('/Reservation', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'views', 'Reservation.ejs'));
});

router.post('/form', (req, res) => {
    console.log(req.body);
    const name = req.body.name;
    const email = req.body.email;
    const phone = req.body.text;
    const date = req.body.date;
    const time = req.body.time;
    const select = req.body.select;
    const message = req.body.message;
    if(name === "" || email === "" || phone === "" || date === "" || time === "" || select === "" || message === ""){
        var x = 2;
        res.render('Reservation', { x: x });
    }
    else{
        const sql = `INSERT INTO rez (name, email, phone, date, time, part_size, message)
        VALUES ('${name}', '${email}', '${phone}', '${date}', '${time}', '${select}', '${message}')`;

        db.query(sql, (error, results) => {
        if (error) throw error;
        console.log('Added data successfully');  
        var x = 1;
        res.render('Home', { x: x });
        });
    }
    
});
router.use("/admin", function(req,res){
    res.render('adminlogin');
});

router.get('/admin', (req, res) => {
    res.sendFile(path.join(__dirname, '.', 'views', 'adminlogin.ejs'));
});

router.post('/login', (req, res) => {
    console.log(req.body);
    const username = req.body.username;
    const password = req.body.password;
    const sql = `SELECT * FROM admin WHERE username = ? AND password = ?`;
const values = [username, password];

    db.query(sql, values, (error, results) => {
    if (error) {
        console.error('Veritabanı hatası:', error);
        res.status(500).send("Veritabanı hatası oluştu");
        return;
    }

    const rezSql = "SELECT * FROM rez"; // Rezervasyon sorgusu
    db.query(rezSql, (rezError, rez) => {
        if (rezError) {
            console.error('Rezervasyon sorgusu hatası:', rezError);
            res.status(500).send("Rezervasyon sorgusu hatası oluştu");
            return;
        }
       
        console.log(rez);
        res.render("admin", {
            rez: rez
        });
    });
});
    
});
router.use("/", function(req,res){
    var x = 0;

    res.render('Home', { x: x });
});

module.exports = router;
