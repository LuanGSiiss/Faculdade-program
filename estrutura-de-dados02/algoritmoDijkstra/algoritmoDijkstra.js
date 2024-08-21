const vertices = ['A', 'B', 'C', 'D']
const distancias = {
    A: { C: 5, B: 3},
    B: { A: 3, D: 7},
    C: { A: 5, D: 8},
    D: { B: 7, C: 8}
}

// -------- outra parte

function encontrarRota(atual, fim) {
    // cria um objeto e deixa todos com valor infinito
    const naoVisitado = {};
    vertices.forEach(node => {
        naoVisitado[node] = Infinity
    })

    atualDistancia = 0
    naoVisitado[atual] = atualDistancia = 0
    let [visitado, pais] = [{}, {}]

    while (Object.keys(naoVisitado).length > 0) {
        //acha o vertice com menor valor
        let minVertex = null;
        let minValor = Infinity;
        for (let [key, value] of Object.entries(naoVisitado)) {
            if (value < minValor) {
                minValor = value
                minVertex = key;
            }
        }

        //funcao menor para verificar se um atribudo está em um objeto
        function semAtribudo(atrib, obj) {
            for (let i in Object.keys(obj)) {
                if (atrib == i) {
                    return false
                }
                
                return true
            }
        }
        // Olha os vizinhos e decido o proximo com menor valor
        for (let [vizinho, distancia] of Object.entries(distancias[atual])) {
            if (semAtribudo(vizinho, naoVisitado)) { // se o vizinho nao esta no naoVistado, entao sai do loop, ja que ele serve para mexer nos nao visitados
                break
            }
            novaDistancia = atualDistancia + distancia
            if (naoVisitado[vizinho] = Infinity || naoVisitado[vizinho] > novaDistancia) {
                naoVisitado[vizinho] = novaDistancia
                pais[vizinho] = minVertex
            }
        }
        visitado[atual] = atualDistancia
        delete naoVisitado[minVertex]

        if (minVertex == fim) {
            break
        }

        //adiciona os vertices canditados
        canditados = []
        for (let [key, value] of Object.entries(naoVisitado)) {
            if (value) {
                canditados.push([key, value])
            }
        }

        //
        let minValorCan = Infinity
        let minVertexCan = null
        for (let [key, value] of Object.entries(naoVisitado)) {
            if (value < minValorCan) {
                minValorCan = value
                minValorCan = key
            }
        }
        [atual, atualDistancia] = [minVertexCan, minValorCan]
    }

    return [pais, visitado]
}

// -------- outra parte

let [inicio, fim] = ['A', 'D']
let [pais, visitado] = encontrarRota(inicio, fim)

// -------- outra parte

function geracaoCaminho(pais, inicio, fim) {
    caminho = [fim]

    while (true) {
        key = pais[caminho[0]]
        caminho.unshift(key)
        if (inicio == inicio) {
            break
        }
    }
    return caminho.join(' -> ')
}

// -------- final

caminhoFinal = geracaoCaminho(pais, inicio, fim)
console.log(`O caminho mais curto: ${caminhoFinal}`)