var peso, altura, IMC;
function calcularIMC () {
    peso = parseFloat(document.getElementById('ipeso').value); 
    altura = parseFloat(document.getElementById("ialtura").value);
    IMC = peso / (altura**2);
    IMC = IMC.toFixed(2);
    console.log("Seu IMC = " + IMC);
    document.getElementById('resultadoIMC').innerHTML = "Seu IMC é: " + IMC;
}
function classificacao () {
    if (IMC < 18.5) {
        document.getElementById('classificar').innerHTML = "Abaixo do peso.";    
    } else if (IMC >= 18.5 && IMC <= 24.9) {
        document.getElementById('classificar').innerHTML = "Peso normal.";
    } else if (IMC >= 25 && IMC <= 29.9) {
        document.getElementById('classificar').innerHTML = "pré-obesidade.";
    } else if (IMC >= 30 && IMC <= 34.9) {
        document.getElementById('classificar').innerHTML = "Obesidade Grau 1.";
    } else if (IMC >= 35 && IMC <= 39.9) {
        document.getElementById('classificar').innerHTML = "Obesidade Grau 2.";
    } else if (IMC >= 40) {
        document.getElementById('classificar').innerHTML = "Obesidade Grau 3.";
    }
    
}