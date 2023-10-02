<?php

    include 'controller/banco.php';
  
    $id = $_GET['id'] ?? null; 

    if (!empty($id)) {
        $pdo = Banco::conectar();
        $sql = 'delete from produtos where id = '.$id;

        $deletar = $pdo->prepare($sql);
        $deletar -> execute();

        $quantidadeDeletadas = $deletar->rowCount();

        if($quantidadeDeletadas > 0) {
            echo('Excluido com sucesso');
        } else {
            echo('Erro ao excluir');
        } 
    }  
?>