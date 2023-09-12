 
let carrinho = [];
let produtos = [];
const produtosBKP = [];
let valorMin = 0;
let valorMax = 100;


let valorCarrinho = 0;

const adicionarCarrinho = (numeroItem) => {
    carrinho.push(produtos[numeroItem]);
    valorCarrinho = valorCarrinho + produtos[numeroItem].preco;

    mostrarQuantidadeItensCarrinho();
    atualizaCarrinho(produtos[numeroItem]);
}

const mostrarQuantidadeItensCarrinho = () => { 
    document.getElementById('link_carrinho').textContent 
           = "Mostrar carrinho (" + carrinho.length + ")";
}

const atualizaCarrinho= (produto) => {



    const valorTotalCarrinhoElement = document.getElementById('valorTotalCarrinho');
    valorTotalCarrinhoElement.textContent = valorCarrinho;

    // captura o elemento pai "UL"
    const itensCarrinhoElement = document.getElementById("itensCarrinho");

    // // limpa o conteudo html
    // itensCarrinhoElement.innerHTML = "";
    

    // cria um elemento filho
    const itemDaLista = document.createElement('li');

    // atribui o conteudo dele no formato html
    itemDaLista.innerHTML =   
                    "<div class='itemCarrinho'>" +
                    "<div class='detalhesCarrinho'>"+
                    "<p>" + produto.nome+  "</p>"+
                    "<p>R$ " + produto.preco +  "</p>"+
                    "</div>"+
                    "<div class='acoesCarrinho'>"+
                    "<a href='#'>"+
                    "<i class='fa fa-trash' aria-hidden='true' onclick='excluirItemNoCarrinho("+produto.id +")'></i>"+
                    "</a>"+
                    "</div>"+
                    "</div>";

    // adiciona o item filho na lista "pai"
    itensCarrinhoElement.appendChild(itemDaLista)
}

excluirItemNoCarrinho = (id) => {
    
  console.log('vamos excluir o id ' + id)

  carrinho = carrinho.filter((item) => {
    if(item.id === id) {
        valorCarrinho = valorCarrinho - item.preco;
    }
    return item.id != id;
  });

   // captura o elemento pai "UL"
   const itensCarrinhoElement = document.getElementById("itensCarrinho");

  // // limpa o conteudo html
  itensCarrinhoElement.innerHTML = "";

  carrinho.map((item) => {
    atualizaCarrinho(item);
  });
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

    // backend antigo
    //const resp = await fetch('https://run.mocky.io/v3/68cfd34d-3fb3-41c6-9725-39dba34c667d');

    const resp = await fetch('http://localhost:3000/products');
    

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
// <nome> filtrarProdutosPorCategoria
// <async> ou não.. para fazer await == esperar a solicitação de recurso
// funcao... 
    // (a, b, c, etc..) = Parametros... zero ou mais itens podem ser recebidos como parametros
    // corpo da função = tudo dentro dos {}... ou no caso linha so,  tudo em frente a "=>" 
const filtrarProdutosPorCategoria = (categoria) => {
    produtos = [];
   if(categoria !== "todos" ) {
    produtos = produtosBKP.filter((produto) => {
        return produto.tipo === categoria;
    }); 
   } else {
    produtos = produtosBKP;
   }


    produtos.forEach((item, index) => {
        let elemento = ""
        if(item.tipo === "capacete" ) {
            elemento  = document.getElementById('capacetes');
        } else {
            elemento  = document.getElementById('blusas');
        }
        criaProduto(item.nome, item.alt,  item.preco, item.imagemURL, elemento, index);
    })
}


const filtrarProdutosPorNome = (nome) => {
    produtos = [];
   if(nome !== "" ) {
    produtos = produtosBKP.filter((produto) => {
        return produto.nome.includes(nome);
    }); 
   } else {
    produtos = produtosBKP;
   }


    produtos.forEach((item, index) => {
        let elemento = ""
        if(item.tipo === "capacete" ) {
            elemento  = document.getElementById('capacetes');
        } else {
            elemento  = document.getElementById('blusas');
        }
        criaProduto(item.nome, item.alt,  item.preco, item.imagemURL, elemento, index);
    })
}



const filtrarProdutosPorValor = (valorMin, valorMax) => {
    // console.log(valorMin); 
    // console.log(valorMax);
     produtos = [];

    
    produtos = produtosBKP.filter((produto) => {
        return produto.preco > valorMin && produto.preco < valorMax  
    }); 
    


    produtos.forEach((item, index) => {
        let elemento = ""
        if(item.tipo === "capacete" ) {
            elemento  = document.getElementById('capacetes');
        } else {
            elemento  = document.getElementById('blusas');
        }
        criaProduto(item.nome, item.alt,  item.preco, item.imagemURL, elemento, index);
    })
}



const limpaTela = () => {
    const blusasElement = document.getElementById("blusas");
    blusasElement.innerHTML = "";

    const capacetesElement = document.getElementById("capacetes");
    capacetesElement.innerHTML = "";
}

const configuraEventListners = () => {
    
    // obtem o elemento atravez do ID
    const botaoCapacetes = document.getElementById("link_filtrar_capacetes");

    // cadastra o listner do tipo click
    botaoCapacetes.addEventListener("click", (ev) => {
        console.log('botaoCapacetes');
        limpaTela();
        filtrarProdutosPorCategoria("capacete");
        // limpando o valor que estava no texto buscar se clicar em uma cateria
        document.getElementById("textoBuscar").value = "";
    });


    // obtem o elemento atravez do ID
    const botaoBlusas = document.getElementById("link_filtrar_blusas");

    // cadastra o listner do tipo click
    botaoBlusas.addEventListener("click", (ev) => {
        console.log('botaoBlusas');
        limpaTela();
        filtrarProdutosPorCategoria("blusa");

        // limpando o valor que estava no texto buscar se clicar em uma cateria
        document.getElementById("textoBuscar").value = "";

    })


    // obtem o elemento atravez do ID
    const botaoTodos = document.getElementById("link_filtrar_todos");

    // cadastra o listner do tipo click
    botaoTodos.addEventListener("click", (ev) => {
        console.log('botaoTodos');
        limpaTela();
        filtrarProdutosPorCategoria("todos");
        // limpando o valor que estava no texto buscar se clicar em uma cateria
        document.getElementById("textoBuscar").value = "";
    })

    
}

const buscarPorTexto = () =>  {
    const termo = document.getElementById("textoBuscar").value;
    console.log(termo);
    limpaTela();
    filtrarProdutosPorNome(termo);
}


const alterarValorRange = (element, MinOuMax) => {

    // console.log(MinOuMax);

    const valor = element.target.value;
    console.log(valor);
    if(MinOuMax === "min") {
        const elementoValorMinimo = document.getElementById("valorMinimo");
        elementoValorMinimo.textContent = valor;
        valorMin = parseInt(valor);
    }

    if(MinOuMax === "max") {
        const elementoValorMaximo = document.getElementById("valorMaximo");
        elementoValorMaximo.textContent = valor;
        valorMax = parseInt(valor);
    }
    limpaTela();
    filtrarProdutosPorValor(valorMin, valorMax);

}

const fecharCarrinho = () => {
    console.log('aaa');
    const carrinhoElement = document.getElementsByClassName('carrinho');
    carrinhoElement[0].classList.remove('block');
    carrinhoElement[0].classList.add('none');
}


const abrirCarrinho = () => {
    const carrinhoElement = document.getElementsByClassName('carrinho');
    carrinhoElement[0].classList.remove('none');
    carrinhoElement[0].classList.add('block');
}



mostrarQuantidadeItensCarrinho();
buscarProdutos();
configuraEventListners();








