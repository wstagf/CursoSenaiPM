<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contato</title>
    <link href="assets/css/estilo.css" rel="stylesheet">

    <!-- este link carrega a biblioteca de fontes que foi baixada previamente  -->
    <link rel="stylesheet" href="./assets/css/font-awesome-4.7.0/css/font-awesome.min.css">
    <style>
 
        .formContato { 
            display: flex;
            justify-content: center;
            align-items: center;
            height: 300px;
            line-height: 60px;
        }
        textarea {
            resize: none;
        }
    </style>
</head>
<body> 
<header>
    <a href="index.php" id="link_filtrar_blusas">Voltar</a>
    <?php include 'view/menu_superior.php' ?> 
    </header>  
    <div class="formContato">
        <form action="controller/form.php" method="post">
            Nome: <input type="text" name="nome"/><br>
            Texto: <textarea name="texto" rows="4" cols="50"></textarea><br>
            <div>
                <input type="submit" value="Enviar Mensagem"> 
            </div>
        </form> 
    </div>  
</body>
</html>