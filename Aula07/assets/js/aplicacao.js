const produtos = [
    {
        tipo: "capacete",
        nome: "Capacete 1",
        alt: "Isto é um capacete, modelo 1",
        preco: 50,
        imagemURL: 'assets/images/capacete01.png'
    },
    {
        tipo: "capacete",
        nome: "Capacete 2",
        alt: "Isto é um capacete, modelo 2",
        preco: 25,
        imagemURL: 'assets/images/capacete02.png'
    },
    {
        tipo: "capacete",
        nome: "Capacete 3",
        alt: "Isto é um capacete, modelo 3",
        preco: 70,
        imagemURL: 'assets/images/capacete03.png'
    },
    {
        tipo: "blusa",
        nome: "Blusão 1",
        alt: "Isto é um Blusão, modelo 1",
        preco: 50,
        imagemURL: 'assets/images/blusa01.png'
    },
    {
        tipo: "blusa",
        nome: "Blusão 2",
        alt: "Isto é um Blusão, modelo 2",
        preco: 25,
        imagemURL: 'assets/images/blusa02.png'
    },
    {
        tipo: "blusa",
        nome: "Blusão 3",
        alt: "Isto é um Blusão, modelo 3",
        preco: 70,
        imagemURL: 'assets/images/blusa03.png'
    }

]

const carrinho = [];

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

const buscarProdutos = () => {

    // é aqui que iriamos no banco de dados ou  na api.. buscar os produtos... 
    const lista = produtos;
    lista.forEach((item, index) => {
        let elemento = ""
        if(item.tipo === "capacete" ) {
            elemento  = document.getElementById('capacetes');
        } else {
            elemento  = document.getElementById('blusas');
        }
        
        criaProduto(item.nome, item.alt,  item.preco, item.imagemURL, elemento, index);
    })


}


mostrarQuantidadeItensCarrinho();