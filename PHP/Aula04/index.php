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
        <?php include 'view/menu_superior.php' ?>
        <?php include 'view/filtros.php' ?>
    </header>
    <?php include 'view/produtos.php' ?>
    <?php include 'view/carrinho.php' ?>
    <script src="assets/js/aplicacao.js"></script>
</body>
</html>