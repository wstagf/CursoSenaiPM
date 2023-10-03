<?php
    include 'controller/banco.php';

    $id = $_GET['id'] ?? null;

    if (!empty($id)) {
        $pdo = Banco::conectar();
        $sql = 'select * from produtos p where  id = '.$id;

        $consulta = $pdo->query($sql);

        $resultado =  $consulta->fetch();   
        echo($resultado);
    }  
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CRUD</title>
    <link href="assets/css/estilo.css" rel="stylesheet">

    <style>
         .formCrud { 
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 300px;
            line-height: 60px;
        } 

    </style>
</head>
<body> 
   
    <header style="display: flex; flex-direction: row; justify-content: space-evenly; align-items: center">
        <a href="index.php" id="link_filtrar_blusas">Voltar</a>
        <?php include 'view/menu_superior.php' ?> 
        <div>
           
        </div>
    </header>  
    <br/><br/><br/><br/><br/>
    <div  style="display: flex;  justify-content: center; align-items: center;">
        <form class="formCrud" action="update_produto.php" method="post">
            <label>ID</label>
            <input type="text" name="id" placeholder="ID do produto" value="<?php echo( $resultado['id']) ?>"  /> 

            <label>Nome do produto</label>
            <input type="text" name="nome" placeholder="Nome do produto" value="<?php echo( $resultado['nome']) ?>"  />

            <label>Texto alternativo do produto</label>
            <input type="text" name="alt" placeholder="Texto alternativo do produto" value="<?php echo( $resultado['alt']) ?>" />


            <label>Preço do produto</label>
            <input type="text" name="preco" placeholder="Preço do produto" value="<?php echo( $resultado['preco']) ?>" />

            <label>Tipo do produto</label>
            <input type="text" name="tipo" placeholder="Tipo do produto" value="<?php echo( $resultado['tipo']) ?>"  />

            <label>Imagem do produto</label>
            <input type="text" name="imagemURL" placeholder="Imagem do produto" value="<?php echo( $resultado['imagemURL']) ?>"  /> 

            <br/>

            <input type="submit"   value="Salvar">  
            </form>
         
  
    </div>
 
    <script src="assets/js/aplicacao.js"></script>

    
</body>
</html>