const vertices = ['A', 'B', 'C', 'D']
const distancias = {
    'A': { 'C': 5, 'B': 3},
    'B': { 'A': 3, 'D': 7},
    'C': { 'A': 5, 'D': 8},
    'D': { 'B': 7, 'C': 8}
}

// -------- outra parte

function encontrarRota(atual, fim) {
    // cria um objeto e deixa todos com valor infinito
    const naoVisitado = {};
    vertices.forEach(node => {
        naoVisitado[node] = Infinity
    })

    let atualDistancia = 0
    naoVisitado[atual] = atualDistancia
    
    const visitado = {}
    const pais = {}

    while (Object.keys(naoVisitado).length > 0) {
        //acha o vertice com menor valor
        let minVertex = Object.keys(naoVisitado).reduce((a, b) => 
            naoVisitado[a] < naoVisitado[b] ? a : b
        )
    
        // Olha os vizinhos e decido o proximo com menor valor
        for (const [vizinho, distancia] of Object.entries(distancias[minVertex])) {
            if (!(vizinho in naoVisitado)) { // se o vizinho nao esta no naoVistado, entao sai do loop, ja que ele serve para mexer nos nao visitados
                continue
            }
            const novaDistancia = naoVisitado[minVertex] + distancia
            if (naoVisitado[vizinho] === Infinity || naoVisitado[vizinho] > novaDistancia) {
                naoVisitado[vizinho] = novaDistancia
                pais[vizinho] = minVertex
            }
        }

        visitado[minVertex] = naoVisitado[minVertex]
        delete naoVisitado[minVertex]

        if (minVertex === fim) {
            break
        }

        //adiciona os vertices canditados
        let [proxVertice, proxDistancia] = Object.entries(naoVisitado).reduce((a, b) => 
            a[1] < b[1] ? a : b
        )
        atual = proxVertice
        atualDistancia = proxDistancia
    }

    return {pais, visitado}
}

// -------- outra parte

const inicio = 'A'
const fim = 'D'
const {pais, visitado} = encontrarRota(inicio, fim)

console.log(pais); 
console.log(visitado); 

// -------- outra parte

function geracaoCaminho(pais, inicio, fim) {
    const caminho = [fim]

    while (true) {
        const key = pais[caminho[0]]
        caminho.unshift(key)
        if (key === inicio) {
            break
        }
    }
    return caminho.join(' -> ')
}

// -------- final

const caminhoFinal = geracaoCaminho(pais, inicio, fim)
console.log(`O caminho mais curto: ${caminhoFinal}`)