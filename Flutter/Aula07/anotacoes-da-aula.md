

## Para executar o backend.

1. Acessar a pasta 'server'
2. executar o comando 'npm install'
3. executar o comando 'npm run develop'


dados de acesso de administrador:  
    usuario: alunos@cursosenaipm.com.br
    Senha: AlunosPMGO123#@!





Função where


Example:

final numbers = <int>[1, 2, 3, 5, 6, 7];
var result = numbers.where((x) => x < 5); // (1, 2, 3)
result = numbers.where((x) => x > 5); // (6, 7)
result = numbers.where((x) => x.isEven); // (2, 6)




Quando o texto é maior que a largura disponivel 
podemos usar o codigo abaixo para cortar o texto e colocar "..." no final

Text(
    item.nome,
    overflow: TextOverflow.ellipsis,
    softWrap: true,
    maxLines: 1,
    style: TextStyle(fontSize: 16),
),




Para incluir borda e o container ficar arredondado é necessario
utilizar o 'decoration', nele colocamos os parametro conforme abaixo

 decoration: BoxDecoration(
    color: Colors.blue[200],
    border: Border.all(
        color: const Color(0xFF000000),
        width: 4.0,
        style: BorderStyle.solid), //Border.all
    borderRadius: BorderRadius.all(
    Radius.circular(10),
    ),
),

OBS>: Caso utilize BoxDecoration e desejamos colocar uma cor no background do container, é necessaio que o parametro 'color' esteja dentro do box decoration... ex...


// ERRADO,

Container(
    color: Colors.green[200],  
    decoration: BoxDecoration(
        border: Border.all(
        color: const Color(0xFF000000),
        width: 4.0,
        style: BorderStyle.solid), //Border.all
        borderRadius: BorderRadius.all(
            Radius.circular(10),
        ),
    )
    child: GestureDetector(
        onTap: () {},
        child: Padding(
        padding: EdgeInsets.all(8),
        child: Icon(Icons.edit),
        ),
    ),
),


// CERTO,

Container(
    decoration: BoxDecoration(
        color: Colors.green[200], 
        border: Border.all(
        color: const Color(0xFF000000),
        width: 4.0,
        style: BorderStyle.solid), //Border.all
        borderRadius: BorderRadius.all(
            Radius.circular(10),
        ),
    )
    child: GestureDetector(
        onTap: () {},
        child: Padding(
        padding: EdgeInsets.all(8),
        child: Icon(Icons.edit),
        ),
    ),
),





Modais... 

São telas que sobrepe as outras para dar enfaze a um elemento
por exemplo quando estamosno whatsapp e vamos compartilhar uma informacao

comoo na imagem  modal-sheet.jpg


 showModalBottomSheet(
                context: context,
                builder: (BuildContext ctx) {
                  return Text('a'); // aqui vai o seu WIDGET... pode-ser colocado qualquer coisa...
                });




                return Container(
                    padding: EdgeInsets.all(15),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    color: Colors.white,
                    child: Column(children: [
                      Text(
                        'Login',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Usuario',
                        style: TextStyle(fontSize: 16),
                      ),
                      TextFormField(),
                      Text(
                        'Senha',
                        style: TextStyle(fontSize: 16),
                      ),
                      TextFormField(),
                    ]),
                  );