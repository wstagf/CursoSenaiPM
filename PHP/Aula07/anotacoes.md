# Codigos de erros 
https://www.hostinger.com.br/tutoriais/o-que-e-http-error-e-principais-codigos-http



#  novas funções 
  - password_hash
  - str_replace
  - addslashes
  - htmlspecialchars



# o objeto de autenticacao é o JWT abaixo 

{
    "token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6InVzZXIxIiwibmFtZSI6IlBNR08iLCJleHBpcmVzX2luIjoxNjk3MTUzMjI5fQ.rLPs5VNZSjfpffvvyzJQW-xlGBtsIQlt9ZTf7suo_Mw",
    "data": {
        "id": "user1",
        "name": "PMGO",
        "expires_in": 1697153229  // 2023-10-12 20:27:09
    }
} 




# SQL Injection 

É a campcidade do usuario enviar códigos maliciosos para o banco de dados




#  Postamn + BEARER TOKEN

para facilitar o uso de BEARER TOKEN no postman, podemos utilizar o codigo 
abaixo para salvar uma variavel e utilizar em todos os requests. 
Este codigo deve ser adicionado na aba "TESTS" da chamada postaman que faz o login


var jsonData = JSON.parse(responseBody); 
pm.collectionVariables.set("token", jsonData.token);





