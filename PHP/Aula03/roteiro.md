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
1. O java script chama a api com o metodo DELETE e o ID na url 

fetch('http://localhost:1337/api/produtos/' + id, {
        method: "DELETE",

2. Se der certo a requisição, o javascript limpa a tela
3. o java scrpit recarrega os item (Chama o metodo buscarProdutos )





# Metodo C.R.U.D. = CREATE  .... 

1. A tela recebe os dados nos elementos input 
2. O javascript faz a leitura dos valores dos elementos atravez da função getElementByID('')
3. Efetua a chamada para a api com o metodo POST e o BODY do objeto convertido em JSON

fetch('http://localhost:1337/api/produtos', {
    method: "POST",
    body: JSON.stringify(novoProduto),
    headers: {
            "Content-type": "application/json; charset=UTF-8",
            "Authorization": "bearer " + window.localStorage.getItem("jwt")
        }
    })

4. caso acontece sucesso, exibe um alerta e recarrega os itens  (Chama o metodo buscarProdutos )




# Metodo C.R.U.D. = UPDATE  .... 


1. A tela recebe o click em um item 
2. A tela repassa os dados do item para dentro do formulario
3. o javascript envia para a api com o metodo PUT e o ID na URL e o BODY com o objeto alterado


 fetch('http://localhost:1337/api/produtos/' + IdDoProdutoQueEstamosEditando, {
    method: "PUT",
    body: JSON.stringify(novoProduto),


4. caso acontece sucesso, exibe um alerta e recarrega os itens  (Chama o metodo buscarProdutos )
