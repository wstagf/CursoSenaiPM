<?php
    include 'controller/banco.php';
    
    $id = $_POST['id'] ?? null;
    $nome = $_POST['nome'] ?? null; 
    $preco = $_POST['preco'] ?? null;
    $tipo = $_POST['tipo'] ?? null; 
    $alt = $_POST['alt'] ?? null; 
    $imagemURL = $_POST['imagemURL'] ?? null; 

    $pdo = Banco::conectar();
    $sql =  "INSERT INTO pmgo.produtos (tipo, nome, alt, imagemURL, preco)".
            " VALUES('"
            .$tipo."', '"
            .$nome."', '"
            .$alt."', '"
            .$imagemURL."', "
            .$preco.");";

            echo($sql);
    
    $produtoInserido = $pdo->prepare($sql);
    $produtoInserido -> execute();

    $quantidade = $produtoInserido->rowCount();

    if($quantidade > 0) {
        echo('Inserido com sucesso');
        echo "<script> 
        window.location.href='crud.php';
        </script>";

    } else {
        echo('Erro ao inserir');
    } 



?>