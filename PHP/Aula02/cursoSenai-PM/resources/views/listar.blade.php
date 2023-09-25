
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Lista de produtos</title>
</head>
<body>
  <h1>Produtos</h1>
  <table>
    <thead>
      <td>ID</td>
      <td>Nome</td>
      <td>Texto Alternativo</td>
      <td>Preço</td>
      <td>Imagem</td>
      <td>Ações</td>
    </thead>
    <tbody>
      <?php 
        for ($i=0; $i < sizeof($produtos) ; $i++) { 
          echo("<tr>");
          echo("<td>".$produtos[$i]."</td>");
          echo("<td>Nome</td>");
          echo("<td>Texto Alternativo</td>");
          echo("<td>Preço</td>");
          echo("<td>Imagem</td>");
          echo("<td>Ações</td>");
          echo("</tr>");
        }
      ?>
    </tbody>
  </table>
</body>
</html>