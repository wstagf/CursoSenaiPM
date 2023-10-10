let produtos = [];
let IdDoProdutoQueEstamosEditando = 0;


const buscarProdutos = async () => {
    limparTela();
    produtos = [];
    console.log('buscarProdutos')
    var jwt = window.localStorage.getItem("jwt");

    var requestOptions = {
        method: 'GET',
        redirect: 'follow'
      };


    fetch("http://localhost/final/PHP/Aula07/produtos", requestOptions)
    .then((resp1) => {
        if(resp1.status == 401) {
            window.location.href = "../sem-acesso.html";
        } else {
            return resp1.json();
        }  
    })
    .then(  (resp2) => { 

            resp2.dados.forEach((itemDaAPI, index) => {
                let elemento = ""

                const cadaItemConvertido = {
                    "id": itemDaAPI.id,
                    "tipo": itemDaAPI.tipo,
                    "nome" : itemDaAPI.nome,
                    "alt" : itemDaAPI.alt,
                    "preco" : itemDaAPI.preco,
                    "imagemURL" : itemDaAPI.imagemURL,
                    "preco" : itemDaAPI.preco
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
         "<a href='#'>"+
         "<i class='fa fa-edit' aria-hidden='true' onclick='editarItem("+index +")'></i>"+
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

    var requestOptions = {
      method: 'DELETE',
      headers: {
        "Authorization":  jwt
      }, 
      redirect: 'follow'
    };
    
    fetch("http://localhost/final/PHP/Aula07/produtos/" + id, requestOptions)
      .then(response => response.json())
      .then(result => console.log(result))
    .then(  (resp2) => { 
        console.log(resp2)
        alert('Sucesso');
        buscarProdutos();
        document.getElementById("tipo").value = "",
        document.getElementById("nome").value = "", 
        document.getElementById("preco").value = "",
        document.getElementById("imagemURL").value = ""


    })
    .catch((erro) => {
        console.log("deu erro", erro)
    }) 


}

const adicionarProduto  = () => { 
    var formdata = new FormData();
    formdata.append("tipo", document.getElementById("tipo").value);
    formdata.append("nome",document.getElementById("nome").value);
    formdata.append("preco", document.getElementById("preco").value);
    formdata.append("alt", document.getElementById("alt").value);
    formdata.append("imagemURL", document.getElementById("imagemURL").value);
    
    var jwt = window.localStorage.getItem("jwt");

    var requestOptions = {
      method: 'POST',
      headers: {
        "Authorization":  jwt
      },
      body: formdata,
      redirect: 'follow'
    };
    
    fetch("http://localhost/final/PHP/Aula07/produtos/", requestOptions)
      .then(response => response.json())
      .then(result => console.log(result))
    .then(  (resp2) => { 
        console.log(resp2)
        alert('Sucesso');
        buscarProdutos();
        document.getElementById("tipo").value = "",
        document.getElementById("nome").value = "", 
        document.getElementById("preco").value = "",
        document.getElementById("imagemURL").value = ""


    })
    .catch((erro) => {
        console.log("deu erro", erro)
    }) 


}



const editarItem = (index) => {
    const produtoQueSeraEditado = produtos[index];

    console.log(produtoQueSeraEditado);

    document.getElementById("tipo").value = produtoQueSeraEditado.tipo;
    document.getElementById("nome").value = produtoQueSeraEditado.nome;
    document.getElementById("preco").value = produtoQueSeraEditado.preco;
    document.getElementById("imagemURL").value = produtoQueSeraEditado.imagemURL;
    IdDoProdutoQueEstamosEditando = produtos[index].id;

}



const salvarProduto  = ( ) => { 
     var formdata = new FormData();
    formdata.append("tipo", document.getElementById("tipo").value);
    formdata.append("nome",document.getElementById("nome").value);
    formdata.append("preco", document.getElementById("preco").value);
    formdata.append("alt", document.getElementById("alt").value);
    formdata.append("imagemURL", document.getElementById("imagemURL").value);
    
    var jwt = window.localStorage.getItem("jwt");

    var requestOptions = {
      method: 'PUT',
      headers: {
        "Authorization":  jwt
      },
      body: formdata,
      redirect: 'follow'
    };
    
    fetch("http://localhost/final/PHP/Aula07/produtos/"+ IdDoProdutoQueEstamosEditando , requestOptions)
      .then(response => response.json())
      .then(result => console.log(result))
    .then(  (resp2) => { 
        console.log(resp2)
        alert('Sucesso');
        buscarProdutos();
        document.getElementById("tipo").value = "",
        document.getElementById("nome").value = "", 
        document.getElementById("preco").value = "",
        document.getElementById("imagemURL").value = ""


    })
    .catch((erro) => {
        console.log("deu erro", erro)
    }) 
}


buscarProdutos();