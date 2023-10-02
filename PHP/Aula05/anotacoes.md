



# Fluxo Atualização...
1. Ao usuario clicar no botao EDITAR, o site está navegando para o arquivo
   editar-produto.php?id=X ... e pasando no lugar do X o ID do produto.
   linha 95, aquivo crud.php

<!-- 
   '<a href="editar-produto.php?id='.$row['id'].'"><span class="botao" >'.
        '<i style="margin-bottom: 5px;" class="fa fa-edit" '.
        'aria-hidden="true" ></i>'.
        'Editar'.
    '</span></a>'. -->


2. O arquivo editar-produto.php utiliza o ID que foi recebibo para buscar 
   os dados do produto que está sendo editado. E coloca as informações dos
   produtos na variavel resultado. 
   
<!-- 
 ...
        $sql = 'select * from produtos p where  id = '.$id;

        $consulta = $pdo->query($sql);

        $resultado =  $consulta->fetch();   
 ...
    }  
?> -->


3. O arquivo  editar-produto.php utiliza  os dados do array $resultado para 
compor o parametro value dos inputs que estão formulario.

<!-- 
  <label>Nome do produto</label>
            <input type="text" name="nome" placeholder="Nome do produto" value="<?php echo( $resultado['nome']) ?>"  />
 -->



 4. O usuario faz as atualizaçoes e clica no botão salvar


 5. O botao salvar faz o submit do formulario para o arquivo update_produto.php. O parametro ACTION é a classe que será enviado os dados que estavam nos inputs


<!--  
<form class="formCrud" action="update_produto.php" method="post">
....
 <input type="submit"   value="Salvar">  
 ...
 </form> -->


 6. o arquivo update_produto faz a leitura dos valores que estão nos 
    atributos recebidos. Lembrando que para o dado chegar corretamente 
    deve-se conter o atributo "NAME" em cada input e este deve ser único

<!-- 
        $id = $_POST['id'] ?? null;
    $nome = $_POST['nome'] ?? null; 
    $preco = $_POST['preco'] ?? null;
    $tipo = $_POST['tipo'] ?? null; 
    $imagemURL = $_POST['imagemURL'] ?? null;  -->




7. o arquivo update_produto faz a concatenaçào da query
<!-- 

    $sql =  "update produtos set nome = '". $nome .
            "', preco = '". $preco .
            "', tipo = '". $tipo .
            "', imagemURL = '". $imagemURL .
            "' where id = ".$id;
     -->

8. o arquivo update_produto excuta a quary

<!-- 
    $produtoAlterado = $pdo->prepare($sql);
    $produtoAlterado -> execute(); -->


9. caso tenha dado sucess,  o arquivo update_produto exibe uma mensagem e 
redireciona o usuario para a tela de crud com a lista atualizada
<!-- 


    $quantidadeAlteradas = $produtoAlterado->rowCount();

    if($quantidadeAlteradas > 0) {
        echo('Alterado com sucesso');
        echo "<script> 
        window.location.href='crud.php';
        </script>";

    } else {
        echo('Erro ao Alterar');
    } 
 -->


