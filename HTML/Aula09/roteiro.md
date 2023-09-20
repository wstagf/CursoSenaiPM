
para usar o backend proprio...
1. Instalar o node
   https://nodejs.org/en


2. Entrar na pasta server... 
   /Users/thiago/Projetos/SenaiPM/Aula09/server


3. Executar o comando:  node server.js

SE aparecer "CORS-enabled web server listening on port 3000"
é porque está rodando normalmente e você pode testar atravez do 
endereço "http://localhost:3000/products" no navegador


URL do novo backend
http://localhost:3000/products



url do backend antigo
https://run.mocky.io/v3/68cfd34d-3fb3-41c6-9725-39dba34c667d






Razao da alta complexidade da aula de hoje.. 

1. houve alteração nosso modelo de dados. Os produtos passaram a ter ID
2. houve alteração nosso modelo de dados. O nosso carrinho mudou
   de um array de produto (Produto[]) para ser um array de um objeto que contem um produto...


   --> Antes 
   carrinho = [
      {
        "id": 1,
        "tipo": "capacete",
        "nome": "Capacete 1",
        "alt": "Isto é um capacete, modelo 1",
        "preco": 50,
        "imagemURL": "assets/images/capacete01.png"
     },...
   ]

   --> Depois 
   carrinho = [
      {
         produto: {
            "id": 1,
            "tipo": "capacete",
            "nome": "Capacete 1",
            "alt": "Isto é um capacete, modelo 1",
            "preco": 50,
            "imagemURL": "assets/images/capacete01.png"
         },
         quantidade: 1
     },...
   ]




 isto aconteceria normalmente mas teria menos impacto se 
 estivessemos utilizando a linguagem TypeScript 

 https://www.typescriptlang.org/


 durante a aula de hoje tiveram algumas vezes que o carrinho 
 ficou com o valor "undefined", isto se dá ao acesso de um parametro
 que não existe no nosso objeto...

ex..: 

 const user = {
  firstName: "Angela",
  lastName: "Davis",
  role: "Professor",
}
 
console.log(user.name) 

-> undefined


se estivesse utilizando TS (TypeScript) o console mostraria a mensagem abaixo.
Property 'name' does not exist on type '{ firstName: string; lastName: string; role: string; }'.




O JavaScript é o padrão para as plataformas web principalmente, porém, 
visando um desenvolvimento mais moderno ou utilizando um framework (React, Angular, Vue)
 será necessario  utilizar o TS (TypeScript) 