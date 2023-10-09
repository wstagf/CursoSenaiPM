const login = () => {
    alert('vamos fazer o login')

    const email = document.getElementById('email').value;
    const password = document.getElementById('password').value;

    // cria o cabeçalho
    var myHeaders = new Headers();
    
    // cria o array com os dados que serão adicionados
    var formdata = new FormData();

    // adiciona os dados
    formdata.append("usuario", "user1");
    formdata.append("senha", "123456");
    

    // cria o objeto requestOptions com a configuração da chamada
    var requestOptions = {
      method: 'POST',
      headers: myHeaders,
      body: formdata,
      redirect: 'follow'
    };

    // executa a chamada
    
    fetch("http://localhost/final/PHP/Aula07/login", requestOptions)
      .then(response => response.json())
      .then((result) => {
        console.log('converteu o objeto', result);
        window.localStorage.setItem("jwt", result.token);
        if (result.token  != undefined) {
            window.location.href = "acessorestrito/restrito.html";
        }
      })
      .catch(error => console.log('error', error));
}