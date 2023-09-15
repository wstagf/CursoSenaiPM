


1. reset css... 

são várias regras css para que seja limpo todo o estilo imposto pelo navegador

Leia mais:  
https://meyerweb.com/eric/tools/css/reset/ 
https://www.alura.com.br/artigos/o-que-e-reset-css





2. Google fonts 
 https://fonts.google.com/specimen/Inter#styles

 um lugar para baixarmos as fontes ou itilizarmos diretamente com o uso do <link> ou do @import

 Imagem com o comparativo dos tipos de fonts
https://www.google.com/url?sa=i&url=https%3A%2F%2Ffacebooklad.amebaownd.com%2Fposts%2F42074060%2F&psig=AOvVaw29CPMFs33_aNKjvlC-4yNK&ust=1694817475939000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCJDZqZ2Vq4EDFQAAAAAdAAAAABAJ




3. rgba


RGB (Red, greem, blue...)
os numeros variam de 0 a 255.

A = alfa.. 
os numeros variam de 0 a 1. 
quanto maior mais nitido
quanto menor mais transparente

toda cor pode ser mostrada como hexadecimal = #341267
ou pode ser esxrito em RGB = 52, 18, 103


4. box-shadow

    box-shadow:  10px 10px 40px rgba(0, 0, 0, 0.4);
    box-shadow:   deslocamento-x  deslocamento-y  tamanho-nuvem/esvoamento cor




5. transicao css
 transition: all linear 160ms;

leia mais: https://www.freecodecamp.org/portuguese/news/exemplos-de-transicao-em-css-como-usar-a-animacao-ao-passar-o-mouse-alterar-a-opacidade-e-mais/




6. !important


o css ele é lido de cima para baixo e obdece hierarquia
o !important faz com que a regra seja aplicada depois de todas.. 
ou seja, faz com que ela sobreponha todas as outras

  border: none !important;


leia mais: https://medium.com/jaguaribetech/efeito-cascata-no-css-c55bda0a2ed4




7. JSON.stringify
 converte um objeto em json

 const dado = {
    nome: "thiago",
    cargo: "professor"
 }


const dadoConvertido = JSON.stringify(dado);

// dadoConvertido == {"nome": "thiago","cargo": "professor"}


8. JSON.parse 
   converte um uma string json em objeto.. 

    const string =  '{"nome": "thiago","cargo": "professor"}'

    const stringConvertida = JSON.parse(string)

    console.log(stringConvertida)
    o objeto que sera impresso é igual a 
    {
        nome: "thiago",
        cargo: "professor"
    }





9. envio dos dados por post
   
    fetch('URL', {   // envia informacoes para URL
        method: "POST", // atraez do metodo POS
        body: JSON.stringify(_data), // envia o objeto como corpo da requisicao formatando como json.
        headers: {"Content-type": "application/json; charset=UTF-8"} // configura o cabeçalho da requisição
    })



10. fetch 

a api fetch é um grupo de algoritmos que o javascript tem por padrão 
e que utilizamos para buscar recursos na rede.

https://developer.mozilla.org/pt-BR/docs/Web/API/fetch

o fetch retorna uma Promisse<Response> por isto devemos sempre utilizar ou o await ou o .then



11. o metodo fetch e o objeto RESPONSE.... 

 fetch().
 then((response) => {
    // este objeto response possui o formato RESPONSE...
    
    console.log(response); 
    
    
    // para acessarmos os dados devemos utilizar response.body
    console.log(response.body);

    // porem o response.body é do tipo "ReadableStream", 
    // para converter em texto utilzamos a função .json();



leia mais: 

https://developer.mozilla.org/pt-BR/docs/Web/API/Response



11. criptografia chave-privada / chave publica

a = 1 * 13;
i = 2 * 4;

thiago...

th84g0

 leia mais 
 https://www.totvs.com/blog/gestao-para-assinatura-de-documentos/chave-publica-e-privada/#:~:text=Uma%20chave%20p%C3%BAblica%20%C3%A9%20uma,e%20nunca%20revelada%20a%20ningu%C3%A9m.


12. jwt

formato mais utilizado para autenticação. 
com ele temos a criptografia da informação do usuario 


'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.   // HEADER:ALGORITHM & TOKEN TYPE
 eyJpZCI6Mywi......sdfsdfsdfsdfyNDV9. // PAYLOAD:DATA - dado enviado
 gvcKIHNxIMHzXWFk8_nq2UvE3Ml51_6uit1Obus4Bnw' // VERIFY SIGNATURE


leia mais: https://jwt.io/




eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c

2018-01-18T01:30:22.000Z





eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3OsadjkhahskjdhkjastZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c

2018-01-19T01:30:22.000Z





13. HS256 ou md5

md5 mais rapido, menos seguro
hs256 mais lento e mais seguro
Leia mais 
https://infosecscout.com/md5-vs-sha256/



14. JWT  é 100 % seguro
não... 
adiciona mais camadas de segurança

ex. refreh token.. 

https://auth0.com/blog/pt-refresh-tokens-what-are-they-and-when-to-use-them/


ex. Sig.in-Sign.out

mantem somente uma sessão para o usuario


15. OAuth2
JWT e Md5 = OAuth(1)
OAuth(2)


traz mais segurança 
leia mais https://oauth.net/2/
