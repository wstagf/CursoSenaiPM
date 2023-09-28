<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CRUD</title>
    <link href="assets/css/estilo.css" rel="stylesheet">

    <!-- este link carrega a biblioteca de fontes que foi baixada previamente  -->
    <link rel="stylesheet" href="./assets/css/font-awesome-4.7.0/css/font-awesome.min.css">
    <style>
 
        .formCrud { 
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 300px;
            line-height: 60px;
        } 

        table {
            border: 2px solid black;
        } 
        td {
            border: 2px solid black;
        }

    </style>
</head>
<body> 
    <header style="display: flex; flex-direction: row; justify-content: space-evenly; align-items: center">
        <a href="index.php" id="link_filtrar_blusas">Voltar</a>
        <?php include 'view/menu_superior.php' ?> 
        <div>
            <span style="cursor: pointer; display: flex; flex-direction: column; justify-content: center; align-items: center; margin: 10px;">
                <i style="margin-bottom: 5px;" class='fa fa-plus' aria-hidden='true' onclick='abrirCarrinho()'></i>
                Novo
            </span>
        </div>
    </header>  
    <div  style="display: flex;  justify-content: center; align-items: center;">
        <table class="tabela">
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
                    <tr>
                        <td width="50">
                            1
                        </td>
                        <td width="250">
                            Capacete
                        </td>
                        <td width="250">
                            Capacete 1
                        </td>
                        <td width="100">
                            R$ 10,00
                        </td>
                        <td>
                            <img src="assets/images/blusa01.png" width="50"/>
                        </td>
                        <td style = " display: flex; flex-direction: row; justify-content: center; align-items: center;">
                           <span style="cursor: pointer; display: flex; flex-direction: column; justify-content: center; align-items: center; margin: 10px;">
                                <i style="margin-bottom: 5px;" class='fa fa-edit' aria-hidden='true' onclick='abrirCarrinho("+item.produto.id +")'></i>
                                Editar
                           </span>
                           <span style="cursor: pointer; display: flex; flex-direction: column; justify-content: center; align-items: center;  margin: 10px;">
                                <i style="margin-bottom: 5px;" class='fa fa-trash' aria-hidden='true' onclick='excluirItemNoCarrinho("+item.produto.id +")'></i>
                                Excluir
                           </span>
                        </td>
                    </tr> 
            </tbody>
        </table>
         
        <section class="carrinho  none">
            <div class="tituloCarrinho">
                <h1>Produto</h1>
                <a href="#" onclick="fecharCarrinho()">X</a>
            </div>
            <br/>
            <form class="formCrud">
                <label>Nome do produto</label>
                <input type="text" id="nome" placeholder="Nome do produto" />

                <label>Preço do produto</label>
                <input type="text" id="preco" placeholder="Preço do produto" />

                <label>Tipo do produto</label>
                <input type="text" id="tipo" placeholder="Tipo do produto" />

                <label>Imagem do produto</label>
                <input type="text" id="imagemURL" placeholder="Imagem do produto" /> 

                
                <br/>
                <input type="button" onclick="adicionarProduto() " value="Adicionar"> 

                <input type="button" onclick="salvarProduto() " value="Salvar">  
            </form>
        </section>
    </div>
 
    <script src="assets/js/aplicacao.js"></script>
</body>
</html>