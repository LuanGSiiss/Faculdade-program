function comescolha() {
    document.getElementById('comescolha').innerHTML = '<label for="persona">1 até </label><input type="number" id="persona" name="persona" required>';
    document.getElementById('botao').innerHTML =  `<button type="button" onclick="tabuada02('inum','dresultado','persona')">Calcular Tabuada</button>`;  
}
function tabuada01() {
    let num = parseInt(document.getElementById('inum').value);
    let resultado = "";
    for (i = 0; i <= 10; i++) {
        resultado += num + " x " + i + " = " + (num*i);
        resultado += "<br>";
    }
    document.getElementById('dresultado').innerHTML = resultado;
}
function tabuada02() {
    let num = parseInt(document.getElementById('inum').value);
    let resultado = "";
    let limite = parseInt(document.getElementById('persona').value);
    for (i =0; i <= limite; i++) {
        resultado += num + " x " + i + " = " + (num*i);
        resultado += "<br>";    
    }
    document.getElementById('dresultado').innerHTML = resultado;   
}
