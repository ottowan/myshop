var express = require("express")
const bodyParser 	= require('body-parser');

const cors          = require('cors');
const app   = express();

const Categories 	= require('./models/categories.models');
const Products 	= require('./models/products.models');

app.use(cors());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));


const port = 3000

app.get("/", function(req, res){

    jsonData = {hello : "world"}
    res.send(jsonData)
})


app.get("/categories", function(req, res){
    Categories.getAll().then(function(result){
        console.log(result[0])
        res.send(result[0])
    })
})


app.post("/categories", function(req, res){

    console.log(req.body)
    Categories.create(req.body).then(function(result){
        console.log(result[0])
        res.send(result[0])
    })
})

app.get("/categories/:id", function(req, res){
    Categories.get(req.params.id).then(function(result){
        console.log(result[0])
        res.send(result[0])
    })
})

app.get("/categories/find/:key", function(req, res){
    Categories.find(req.params.key).then(function(result){
        console.log(result[0])
        res.send(result[0])
    })
})

app.put("/categories/:id", function(req, res){
    Categories.update(req.params.id, req.body).then(function(result){
        console.log(result[0])
        res.send(result[0])
    })
})

app.delete("/categories/:id", function(req, res){
    Categories.deleted(req.params.id).then(function(result){
        console.log(result[0])
        res.send(result[0])
    })
})



//Product
app.get("/products", function(req, res){
    Products.getAll().then(function(result){
        console.log(result[0])
        jsonData = {items : result[0]}
        res.send(jsonData)
    })
})
app.post("/products", function(req, res){

    console.log(req.body)
    Products.create(req.body).then(function(result){
        console.log(result[0])
        res.send(result[0])
    })
})

app.get("/products/:id", function(req, res){
    Products.get(req.params.id).then(function(result){
        console.log(result[0])
        res.send(result[0])
    })
})

app.get("/products/find/:key", function(req, res){
    Products.find(req.params.key).then(function(result){
        console.log(result[0])
        res.send(result[0])
    })
})

app.put("/products/:id", function(req, res){
    Products.update(req.params.id, req.body).then(function(result){
        console.log(result[0])
        res.send(result[0])
    })
})

app.delete("/products/:id", function(req, res){
    Products.deleted(req.params.id).then(function(result){
        console.log(result[0])
        res.send(result[0])
    })
})


app.listen(port, () => console.log(`Example app listening on port ${port}!`))
