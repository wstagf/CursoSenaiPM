<?php
    $nome = $_POST['nome'] ?? null;
    $texto = $_POST['texto'] ?? null; 

    if (!empty($_POST)) {
        echo "Foi recebido informação pelo POST. ";
        echo "<script>
            alert('Obrigado ".$nome.", a mensagem: ". $texto ." foi processada');
            window.location.href='../index.php';
        </script>";
    } else {
        echo "Não foi recebido informação pelo POST. ";
    }
?>