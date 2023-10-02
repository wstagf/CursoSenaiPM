<?php
    include 'controller/banco.php';
    
    $id = $_POST['id'] ?? null;
    $nome = $_POST['nome'] ?? null; 
    $preco = $_POST['preco'] ?? null;
    $tipo = $_POST['tipo'] ?? null; 
    $imagemURL = $_POST['imagemURL'] ?? null; 

    echo('aaa');

    $pdo = Banco::conectar();
    $sql =  "update produtos set nome = '". $nome .
            "', preco = '". $preco .
            "', tipo = '". $tipo .
            "', imagemURL = '". $imagemURL .
            "' where id = ".$id;
    
    $produtoAlterado = $pdo->prepare($sql);
    $produtoAlterado -> execute();

    $quantidadeAlteradas = $produtoAlterado->rowCount();

    if($quantidadeAlteradas > 0) {
        echo('Alterado com sucesso');
        echo "<script> 
        window.location.href='crud.php';
        </script>";

    } else {
        echo('Erro ao Alterar');
    } 


    // if (!empty($_POST)) {
    //     echo "Foi recebido informação pelo POST. ";
    //     echo "<script>
    //         alert('Obrigado ".$nome.", a mensagem: ". $texto ." foi processada');
    //         window.location.href='../index.php';
    //     </script>";
    // } else {
    //     echo "Não foi recebido informação pelo POST. ";
    // }
?>