let produtos = [];


const buscarProdutos = async () => {
    limparTela();
    produtos = [];
    console.log('buscarProdutos')
    var jwt = window.localStorage.getItem("jwt");
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

            resp2.data.forEach((itemDaAPI, index) => {
                let elemento = ""

                const cadaItemConvertido = {
                    "id": itemDaAPI.id,
                    "tipo": itemDaAPI.attributes.tipo,
                    "nome" : itemDaAPI.attributes.nome,
                    "alt" : itemDaAPI.attributes.alt,
                    "preco" : itemDaAPI.attributes.preco,
                    "imagemURL" : itemDaAPI.attributes.imagemURL,
                    "preco" : itemDaAPI.attributes.preco
                }

                 
                produtos.push(cadaItemConvertido); 
                
                criaProduto(cadaItemConvertido.nome, cadaItemConvertido.id,  
                    cadaItemConvertido.preco, cadaItemConvertido.imagemURL, 
                    cadaItemConvertido.tipo,  index);
            })
        })
        .catch((erro) => {
            console.log("deu erro", erro)
        })
}
const limparTela = () =>  {
    const elemento =  document.getElementById('criarprodutos');
    elemento.innerHTML = "";
}

const criaProduto = (nome, id, preco, imagemURL, tipo,  index) => {
    console.log("p")
     const elemento = document.getElementById('criarprodutos');
      

    const item = document.createElement('tr')
    item.innerHTML = 
    "<td>"+ id + "</td>" + 
    "<td>" + tipo+ "</td>" +  
    "<td>" +nome+ "</td>" + 
    "<td>" + preco + "</td>" +  
    
    "<td><img src='" + imagemURL + "' style='width:50px;'></img></td>" + 
    "<td>"+ 
        "<a href='#'>"+
          "<i class='fa fa-trash' aria-hidden='true' onclick='excluirItem("+id +")'></i>"+
         "</a>"+
      "</td>" ;
    elemento.appendChild(item);

         


    // elemento.innerHTML = elemento.innerHTML 
    // +  "<div class='produto'>"
    // + " <img src='"+imagemURL+"' alt='"+alt+"'/>"
    // + "<h2>"+ nome + "</h2>"
    // + "<p>R$ " + preco+ "</p>"
    // + "<button class='adicionarCarrinho' "
    //    + "onclick='adicionarCarrinho("+ index +")'> "
    // + "Adicionar ao Carrinho</button>"
    // + "</div>";
}


const excluirItem = (id) => {
    console.log(id)

    var jwt = window.localStorage.getItem("jwt");
    fetch('http://localhost:1337/api/produtos/' + id, {
        method: "DELETE",
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
            alert('Excluido com sucesso');
            buscarProdutos();
        })
        .catch((erro) => {
            console.log("deu erro", erro)
        })
}

const adicionarProduto  = () => {
    const novoProduto = {
        "data": {
            "tipo": document.getElementById("tipo").value,
            "nome":  document.getElementById("nome").value, 
            "preco":  document.getElementById("preco").value,
            "imagemURL":  document.getElementById("imagemURL").value
          }
    }
    console.log(novoProduto);




 fetch('http://localhost:1337/api/produtos', {
    method: "POST",
    body: JSON.stringify(novoProduto),
    headers: {
            "Content-type": "application/json; charset=UTF-8",
            "Authorization": "bearer " + window.localStorage.getItem("jwt")
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
        alert('Sucesso');
        buscarProdutos();
    })
    .catch((erro) => {
        console.log("deu erro", erro)
    })
}

buscarProdutos();