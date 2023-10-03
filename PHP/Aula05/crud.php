<?php
    include 'controller/banco.php';


     
?>

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

        .colunaBotao {
            display: flex; flex-direction: row; justify-content: center; align-items: center;
        }

        .botao {
            cursor: pointer; display: flex; flex-direction: column; justify-content: center; align-items: center; margin: 10px;
        }

        .link-estilizado {
            color: white;
            text-decoration: none;
        }
 

    </style>
</head>
<body> 
   
    <header style="display: flex; flex-direction: row; justify-content: space-evenly; align-items: center">
        <a href="index.php" class="link-estilizado">Voltar</a>
        <?php include 'view/menu_superior.php' ?> 
        <div>
            <a href="criar-produto.php"  class="link-estilizado">
                <span style="cursor: pointer; display: flex; flex-direction: column; justify-content: center; align-items: center; margin: 10px;">
                    <i style="margin-bottom: 5px;" class='fa fa-plus' aria-hidden='true' ></i>
                    Novo
                </span>
            </a>
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
                    Texto alternativo
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
            <?php
                $pdo = Banco::conectar();
                $sql = 'select * from  produtos;';

                foreach ($pdo->query($sql) as $key => $row) {
                    echo (
                        '<tr>'.
                            '<td width="50">'.$row['id'].'</td>'.
                            '<td width="100">'.$row['tipo'].'</td>'.
                            '<td width="250">'.$row['nome'].'</td>'.
                            '<td width="300">'.$row['alt'].'</td>'.
                            '<td width="100">R$ '.$row['preco'].'</td>'.
                            '<td width="50"><img src="'.$row['imagemURL'].'" width="50"/></td>'.
                            '<td class="colunaBotao">'.
                                '<a style="  color: black;
                                text-decoration: none;" href="editar-produto.php?id='.$row['id'].'"><span class="botao" >'.
                                    '<i style="margin-bottom: 5px;" class="fa fa-edit" '.
                                    'aria-hidden="true" ></i>'.
                                    'Editar'.
                                '</span></a>'.
                                '<span class="botao" onclick="excluirProduto('.$row['id'].')">'.
                                    '<i style="margin-bottom: 5px;" class="fa fa-trash"'.
                                    'aria-hidden="true" ></i>'.
                                    'Excluir'.
                                '</span>'.
                            '</td>'.
                        '</tr>'); 
                }
                Banco::desconectar();
            ?>
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

    <script>

        
        const abrirCarrinhoPHP = (id) => {
            console.log('editando');

            fetch('consultar.php?id=' + id, {
                method: "GET", 
                headers: { "Content-type": "application/json; charset=UTF-8" }
            }) 
            .then((dados) => {
                return dados.json();
            })
            .then((dados2) => {
                console.log(dados2)
            })
            .catch((erro) => {
                console.log("deu erro", erro)
            })

            const carrinhoElement = document.getElementsByClassName('carrinho');
            carrinhoElement[0].classList.remove('none');
            carrinhoElement[0].classList.add('block');
        }




        const excluirProduto = (id) => {
            console.log('a') 
            fetch('excluir.php?id=' + id, {
                method: "GET", 
                headers: { "Content-type": "application/json; charset=UTF-8" }
            }) 
            .then(() => {
                location.reload()
            })
            .catch((erro) => {
                console.log("deu erro", erro)
            })
        }
    </script>
</body>
</html>