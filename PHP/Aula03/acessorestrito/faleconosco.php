<?php 

?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Minha Loja Online</title>
    <link href="assets/css/estilo.css" rel="stylesheet">

    <!-- este link carrega a biblioteca de fontes que foi baixada previamente  -->
    <link rel="stylesheet" href="./assets/css/font-awesome-4.7.0/css/font-awesome.min.css">
</head>

<body>
    <header>
        <?php include 'view/barra.php' ?>
    </header>
    <div style="display: flex; flex-direction:  row;">
        <table>
            <thead>
                <td>
                    ID
                </td>
                <td>
                    Tipo
                </td>
                <td>
                    Nome
                </td>
                <td>
                    Preço
                </td>
                <td>
                    Imagem
                </td>
                <td>
                    Acoes
                </td>
            </thead>
            <tbody id="criarprodutos">

            </tbody>
        </table>
        <form>
            <input type="text" id="nome" placeholder="Nome do produto" />
            <input type="text" id="preco" placeholder="Preço do produto" />
            <input type="text" id="tipo" placeholder="Tipo do produto" />
            <input type="text" id="imagemURL" placeholder="Imagem do produto" />
            <input type="button" onclick="adicionarProduto() " value="Adicionar">
            <input type="button" onclick="salvarProduto() " value="salvar">

        </form>
    </div>
    <?php include 'view/rodape.php' ?>

    <script src="assets/js/crud.js"></script>
</body>

</html>