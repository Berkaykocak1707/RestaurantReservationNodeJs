const express = require("express");
const app = express();
const userRoute = require("./routers/user");

app.use(express.static('public'));
app.use(express.static('node_modules'));

app.set("view engine","ejs");

app.use(userRoute);

app.listen(3000, () =>{
    console.log("OK.")
})