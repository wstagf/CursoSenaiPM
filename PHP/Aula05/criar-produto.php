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
        <form class="formCrud" action="insert_produto.php" method="post">
           

            <label>Nome do produto</label>
            <input type="text" name="nome" placeholder="Nome do produto" 
          />

          <label>Texto alternativo do produto</label>
            <input type="text" name="alt" placeholder="Texto alternativo do produto" 
          />
          

            <label>Preço do produto</label>
            <input type="text" name="preco" placeholder="Preço do produto"
       />

            <label>Tipo do produto</label>
            <input type="text" name="tipo" placeholder="Tipo do produto"
             />

            <label>Imagem do produto</label>
            <input type="text" name="imagemURL" placeholder="Imagem do produto"
             /> 

            <br/>

            <input type="submit"   value="Salvar">  
            </form>
         
  
    </div>
 
    <script src="assets/js/aplicacao.js"></script>

    
</body>
</html>