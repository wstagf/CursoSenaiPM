document.addEventListener("DOMContentLoaded", function () {
    const carrinhoLink = document.getElementById("carrinhoLink");
    const carrinho = document.getElementById("carrinho");
    const listaCarrinho = document.getElementById("listaCarrinho");
    const totalCarrinho = document.getElementById("totalCarrinho");
    const limparCarrinho = document.getElementById("limparCarrinho");

    const produtos = [
        { nome: "Capacete 1", preco: 50 },
        { nome: "Capacete 2", preco: 75 },
        { nome: "Capacete 3", preco: 52 },
        { nome: "Capacete 4", preco: 45 },
        { nome: "Capacete 5", preco: 55.5 },
        { nome: "Capacete 6", preco: 76 },
        { nome: "Capacete 7", preco: 70 },
        { nome: "Capacete 8", preco: 18 },
        { nome: "Capacete 9", preco: 29.5 },
        { nome: "Blusão 1", preco: 50 },
        { nome: "Blusão 2", preco: 75 },
        { nome: "Blusão 3", preco: 52.5 },
        { nome: "Blusão 4", preco: 45 },
        { nome: "Blusão 5", preco: 55.0 },
        { nome: "Blusão 6", preco: 76 },
        { nome: "Blusão 7", preco: 70 },
        { nome: "Blusão 8", preco: 18 },
        { nome: "Blusão 9", preco: 29.5 }
    ];

    let carrinhoItens = [];

    function atualizarCarrinho() {
        listaCarrinho.innerHTML = "";
        let total = 0;

        carrinhoItens.forEach((item) => {
            const li = document.createElement("li");
            li.innerHTML = `${item.nome} - R$ ${item.preco.toFixed(2)}`;
            listaCarrinho.appendChild(li);
            total += item.preco;
        });

        totalCarrinho.textContent = total.toFixed(2);
        carrinhoLink.textContent = `Carrinho (${carrinhoItens.length})`;
    }

    produtos.forEach((produto, index) => {
        const produtoElement = document.querySelectorAll(".produto")[index];
        const adicionarCarrinhoButton = produtoElement.querySelector(".adicionarCarrinho");

        adicionarCarrinhoButton.addEventListener("click", () => {
            carrinhoItens.push({ ...produto });
            atualizarCarrinho();
        });
    });

    carrinhoLink.addEventListener("click", () => {
        carrinho.style.display = carrinho.style.display === "block" ? "none" : "block";
    });

    limparCarrinho.addEventListener("click", () => {
        carrinhoItens = [];
        atualizarCarrinho();
    });
});
