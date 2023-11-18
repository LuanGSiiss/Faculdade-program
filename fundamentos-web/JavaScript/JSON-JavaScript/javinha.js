//Pegando dados de um arquivo JSON
let divUsuarios = document.querySelector("#usuarios");

fetch("dados.json").then((response) => {
    response.json().then((dados) => {
        dados.usuarios.map((usuario) => {
                divUsuarios.innerHTML += `<li> ${usuario.nome} - ${usuario.idade} anos</li>`
        })

    })
})