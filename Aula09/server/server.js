 
var express = require('express')
var cors = require('cors')
var app = express()

app.use(cors())

app.get('/products', function (req, res, next) {
  res.json(produtos)
})

app.listen(3000, function () {
  console.log('CORS-enabled web server listening on port 3000')
})

 

const produtos = [
    {
        "tipo": "capacete",
        "nome": "Capacete 1",
        "alt": "Isto é um capacete, modelo 1",
        "preco": 50,
        "imagemURL": "assets/images/capacete01.png"
    },
    {
        "tipo": "capacete",
        "nome": "Capacete 2",
        "alt": "Isto é um capacete, modelo 2",
        "preco": 25,
        "imagemURL": "assets/images/capacete02.png"
    },
    {
        "tipo": "capacete",
        "nome": "Capacete 3",
        "alt": "Isto é um capacete, modelo 3",
        "preco": 70,
        "imagemURL": "assets/images/capacete03.png"
    },
    {
        "tipo": "blusa",
        "nome": "Blusão 1",
        "alt": "Isto é um Blusão, modelo 1",
        "preco": 50,
        "imagemURL": "assets/images/blusa01.png"
    },
    {
        "tipo": "blusa",
        "nome": "Blusão 2",
        "alt": "Isto é um Blusão, modelo 2",
        "preco": 25,
        "imagemURL": "assets/images/blusa02.png"
    },
    {
        "tipo": "blusa",
        "nome": "Blusão 3",
        "alt": "Isto é um Blusão, modelo 3",
        "preco": 70,
        "imagemURL": "assets/images/blusa03.png"
    }
]