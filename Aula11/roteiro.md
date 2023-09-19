# Documentação de API deveriam ser feitas atravéz de um modelo chamado OPEN.API

https://swagger.io/resources/open-api/
OpenAPI Specification




# queda automatica da sessão...
 1. semi-automatica
     -> no proximo request...


     -> set-time-out
        setInterval(() => console.log('executou o callback'), 2000);


2. automatica 
- realtime websocket
https://medium.com/@gabrielfgularte/understanding-realtime-web-apps-5aef47d51a45





 fetch('http://localhost:1337/api/produtos', {
        method: "GET",
        headers: {
                "Content-type": "application/json; charset=UTF-8",
                "Authorization": "bearer " + jwt
            }
        })
        .then((resp1) => {
            if(resp1.status == 401) {
                window.location.href = "../sem-acesso.html";
            } else {
                return resp1.json();
            }  
        })
        .then(  (resp2) => { 
            console.log(resp2)
             
        })
        .catch((erro) => {
            console.log("deu erro", erro)
        })



# Metodo C.R.U.D. = READ ALL .... buscarProdutos()

quando a tela é criada, 
1. o javascript faz a busca na rede, 
2. o javascript adiciona o item no array
3. o java script adiciona cada item em um linha da tabela, personalizando o onclick
  -  "<td>"+ 
        "<a href='#'>"+
          "<i class='fa fa-trash' aria-hidden='true' onclick='excluirItem("+id +")'></i>"+
         "</a>"+
      "</td>" ; 




# Metodo C.R.U.D. = DELETE  .... excluirItem(1)
1. O java script chama a api com o methodo DELETE e o ID na url 

fetch('http://localhost:1337/api/produtos/' + id, {
        method: "DELETE",

2. Se der certo a requisição, o javascript limpa a tela
3. o java scrpit recarrega os item (Chama o metodo buscarProdutos )
