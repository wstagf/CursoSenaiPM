<?php
    $nome = $_POST['name-do-elemento-desejado-1'] ?? null;
    $texto = $_POST['name-do-elemento-desejado-2'] ?? null; 

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