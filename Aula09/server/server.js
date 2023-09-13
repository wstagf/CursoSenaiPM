 
// este arquivo ele define um backend mínimo em Node.js

// definimos a varivael express, ... express = biblioteca de rede, funcoes http, https, get, post, put... 
// leia mais: 
// 1.  https://expressjs.com
// require('express') é um modelo de importar a biblioteca... (assim como  o link do front.   <link href="assets/css/estilo.css" rel="stylesheet">)
var express = require('express')
//import express from "express"; // um segundo modelo de import.. este e o mais antigo



// define a variavel cors.. com o import da biblioeteca cors... o backend so responde no mesmo ip.. 
// ex. se o servidor está no endereço http://192.168.1.90, e noso front está no ip  http://192.168.1.91,
// não vai haver comunicação. 
// leia mais: 
// 1. https://www.alura.com.br/artigos/como-resolver-erro-de-cross-origin-resource-sharing#:~:text=O%20que%20%C3%A9%20o%20CORS,de%20requisi%C3%A7%C3%A3o%20cross%2Dorigin%20HTTP.
// 2. https://developer.mozilla.org/pt-BR/docs/Web/HTTP/CORS
// 3. https://expressjs.com/en/resources/middleware/cors.html


var cors = require('cors')


// declarar a variavel app com a execução do construtor da classe express;
var app = express()


// incluimos o cors como middleware // 
//  - um middleware é um intercptador.. 
// -  e eles podem ser colocados varios.. 
/*  ex: 
    app.use(cors()); 
    app.use(log()); 
    app.use(auth()); 
    */
app.use(cors())


// definimos a rota '/products'  com o metodo 'GET', retornando o array PRODUTOS convertido em json
app.get('/products', function (req, res, next) {
  res.json(PRODUTOS)
})


// iniciamos a aplicação backend ouvindo requests na porta 3000,
//  e assim que ela fica online imprime no console o texto
// 'CORS-enabled web server listening on port 3000'
app.listen(3000, function () {
  console.log('CORS-enabled web server listening on port 3000')
})

 
// definição do objeto PRODUTOS
const PRODUTOS = [
    {
        "id": 1,
        "tipo": "capacete",
        "nome": "Capacete 1",
        "alt": "Isto é um capacete, modelo 1",
        "preco": 50,
        "imagemURL": "assets/images/capacete01.png"
    },
    {
        "id": 2,
        "tipo": "capacete",
        "nome": "Capacete 2",
        "alt": "Isto é um capacete, modelo 2",
        "preco": 25,
        "imagemURL": "assets/images/capacete02.png"
    },
    {
        "id": 3,
        "tipo": "capacete",
        "nome": "Capacete 3",
        "alt": "Isto é um capacete, modelo 3",
        "preco": 70,
        "imagemURL": "assets/images/capacete03.png"
    },
    {
        "id": 4,
        "tipo": "blusa",
        "nome": "Blusão 1",
        "alt": "Isto é um Blusão, modelo 1",
        "preco": 50,
        "imagemURL": "assets/images/blusa01.png"
    },
    {
        "id": 5,
        "tipo": "blusa",
        "nome": "Blusão 2",
        "alt": "Isto é um Blusão, modelo 2",
        "preco": 25,
        "imagemURL": "assets/images/blusa02.png"
    },
    {
        "id": 6,
        "tipo": "blusa",
        "nome": "Blusão 3",
        "alt": "Isto é um Blusão, modelo 3",
        "preco": 70,
        "imagemURL": "assets/images/blusa03.png"
    }
]