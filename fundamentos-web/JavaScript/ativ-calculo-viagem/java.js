function calcularViagem() {
    let local = document.getElementById('iviagem').value;
    let percor = parseInt(document.getElementById('ikmPer').value);
    let litros = parseInt(document.getElementById('iLitroCom').value);
    let valorL = parseFloat(document.getElementById('iValorLi').value);
    let Kmporl = percor / litros;
    let valorporkm = valorL / Kmporl;
    let custoTotal = litros * valorL;
    Kmporl = Kmporl.toFixed(2);
    valorporkm = valorporkm.toFixed(2);
    document.getElementById('parte1').innerHTML = "Em sua viagem para: " + local;
    document.getElementById('parte2').innerHTML = "Você percorreu " + percor + "Km e gastou " + litros + "L de combustível";
    document.getElementById('parte3').innerHTML = "Seu carro fez " + Kmporl + " km por litro e sua viagem teve um custo de R$ " + custoTotal + " sendo " + valorporkm + " reais por kilometro";
}