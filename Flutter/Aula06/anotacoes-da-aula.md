

## Para executar o backend.

1. Acessar a pasta 'server'
2. executar o comando 'npm install'
3. executar o comando 'npm run develop'


dados de acesso de administrador:  
    usuario: alunos@cursosenaipm.com.br
    Senha: AlunosPMGO123#@!







## atualizacoes feitas na aula de hoje para conectar no novo backend.

1. Mudamos a URL do endpoint de lista-produtos. ver imagem na pasta da aula06.. 01-alteracao_endpoint.png
2. Mudamos o conversor do objeto que rebemos. ver imagem na pasta da aual 06...  02-conversao_objeto_backend.png








## Novas coisas apreentadas hoje


 actions: widgets que podem ser adicionados a direita do titulo na barra

  leading: UM UNICO widget que podem ser adicionado a esqueda do titulo na barra... 
        observação 1: Lembrando que quando este lugar é reservado para o botao voltar... nao devemos utilizar quando existe a opcao de voltar para a tela anterior
        
        observação2: apesar de receber só UM wdiget, isto pode ser contornado caso coloquemos um row ou column 


  appBar: AppBar(
        title: const Text('Loja dos Motoqueiros'),
        leading: Text('a'),
        actions: [  
          Text('b'), 
          Text('c'),
        ],
      ),





# lista de icones disponiveis no flutter NATIVAMENTE
https://fonts.google.com/icons


saber mais sobre o arquivo .md
https://cursos.leg.ufpr.br/prr/capMarkdown.html

