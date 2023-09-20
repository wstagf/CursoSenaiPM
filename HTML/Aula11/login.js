const login = () => {
    alert('vamos fazer o login')

    const email = document.getElementById('email').value;
    const password = document.getElementById('password').value;

    const dados =  {
        identifier: email,
        password: password,
    }; 

    console.log("email", email);
    console.log("password", password);
    console.log("dados", dados); 

    fetch('http://localhost:1337/api/auth/local', {
        method: "POST",
        body: JSON.stringify(dados),
        headers: {"Content-type": "application/json; charset=UTF-8"}
    })
    .then((resp1) => {
        console.log(resp1);
        return resp1.json();
    })
    .then((resp2) => {
        console.log('converteu o objeto', resp2);
        window.localStorage.setItem("jwt", resp2.jwt);
        if (resp2.jwt  != undefined) {
            window.location.href = "acessorestrito/restrito.html";
        }
    })
    .catch((erro) => {
        console.log("deu erro", erro)
    })
}