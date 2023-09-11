 
const carrinho = [];
let produtos = [];
const produtosBKP = [];

const adicionarCarrinho = (numeroItem) => {
    carrinho.push(produtos[numeroItem]);

    mostrarQuantidadeItensCarrinho();
}

const mostrarQuantidadeItensCarrinho = () => { 
    document.getElementById('link_carrinho').textContent 
           = "Mostrar carrinho (" + carrinho.length + ")";
}


const criaProduto = (nome, alt, preco, imagemURL, elemento, index) => {
    elemento.innerHTML = elemento.innerHTML 
    +  "<div class='produto'>"
    + " <img src='"+imagemURL+"' alt='"+alt+"'/>"
    + "<h2>"+ nome + "</h2>"
    + "<p>R$ " + preco+ "</p>"
    + "<button class='adicionarCarrinho' "
       + "onclick='adicionarCarrinho("+ index +")'> "
    + "Adicionar ao Carrinho</button>"
    + "</div>";
}

const buscarProdutos = async () => {

    // é aqui que iriamos no banco de dados ou  na api.. buscar os produtos... 


    const resp = await fetch('https://run.mocky.io/v3/68cfd34d-3fb3-41c6-9725-39dba34c667d');

    const lista = await resp.json(); 

    lista.forEach((item, index) => {
        let elemento = ""
        if(item.tipo === "capacete" ) {
            elemento  = document.getElementById('capacetes');
        } else {
            elemento  = document.getElementById('blusas');
        }
        produtos.push(item);
        produtosBKP.push(item);
        
        criaProduto(item.nome, item.alt,  item.preco, item.imagemURL, elemento, index);
    })


}


// assinatura da funcão... 
// <modificador_de_acesso> = const
// <nome> filtrarProdutos
// <async> ou não.. para fazer await == esperar a solicitação de recurso
// funcao... 
    // (a, b, c, etc..) = Parametros... zero ou mais itens podem ser recebidos como parametros
    // corpo da função = tudo dentro dos {}... ou no caso linha so,  tudo em frente a "=>" 
const filtrarProdutos = (categoria) => {
    produtos = [];
    produtos = produtosBKP.filter((produto) => {
        return produto.tipo === categoria;
    }); 
}


const limpaTela = () => {
    const blusasElement = document.getElementById("blusas");
    blusasElement.innerHTML = "";

    const capacetesElement = document.getElementById("capacetes");
    capacetesElement.innerHTML = "";
}




mostrarQuantidadeItensCarrinho();
buscarProdutos();








