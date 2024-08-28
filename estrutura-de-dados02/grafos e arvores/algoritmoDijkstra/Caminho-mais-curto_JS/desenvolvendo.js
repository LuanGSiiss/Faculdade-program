const cidadesExtenso = {
    'SA': 'Salete',
    'WI': 'Witmarsum',
    'PG': 'Presidente Getúlio',
    'DE': 'Dona Emma',
    'JB': 'José Boiteux',
    'IB': 'Ibirama',
    'LO': 'Lontras',
    'PN': 'Presidente Nereu',
    'VR': 'Vidal Ramos',
    'IM': 'Imbuia',
    'IT': 'Ituporanga',
    'PE': 'Petrolândia',
    'CL': 'Chapadão do Lageado',
    'AU': 'Aurora',
    'AL': 'Agrolândia',
    'TC': 'Trombudo Central',
    'AG': 'Agronômica',
    'PR': 'Pouso Redondo',
    'BT': 'Braço do Trombudo',
    'LA': 'Laurentino',
    'RO': 'Rio do Oeste',
    'TA': 'Taió',
    'MD': 'Mirim Doce',
    'RS': 'Rio do Sul',
}

const vertices = [
    'SA', 'WI', 'PG', 'DE', 'JB', 'IB', 'LO', 'PN', 'VR',
    'IM', 'IT', 'PE', 'CL', 'AU', 'AL', 'TC', 'AG', 'PR',
    'BT', 'LA', 'RO', 'TA', 'MD', 'RS'
]
const distancias = {
    'SA': { 'WI': 54.34, 'DE': 75.46, 'TA': 19.01 }, // Salete
    'WI': { 'SA': 54.34, 'PG': 28.50, 'DE': 20.50, 'JB': 55.88 }, // Witmarsum
    'PG': { 'WI': 28.50, 'DE': 24.15, 'JB': 35.64, 'IB': 11.70, 'RS': 27.40 }, // Presidente Getúlio
    'DE': { 'SA': 75.46, 'WI': 20.50, 'PG': 24.15, 'JB': 39.38, 'TA': 90.64 }, // Dona Emma
    'JB': { 'WI': 55.88, 'PG': 35.64, 'DE': 39.38, 'IB': 20.50 }, // José Boiteux
    'IB': { 'PG': 11.70, 'JB': 20.50, 'LO': 34.80 }, // Ibirama
    'LO': { 'IB': 34.80, 'PN': 29.30, 'RS': 25.60 }, // Lontras
    'PN': { 'LO': 29.30, 'VR': 21.01 }, // Presidente Nereu
    'VR': { 'PN': 21.01, 'IM': 19.80, 'IT': 31.60 }, // Vidal Ramos
    'IM': { 'VR': 19.80, 'IT': 38.40 }, // Imbuia
    'IT': { 'VR': 31.60, 'IM': 38.40, 'PE': 18.80, 'CL': 26.80, 'AU': 13.30, 'AL': 62.04 }, // Ituporanga
    'PE': { 'IT': 18.80, 'CL': 55.44 }, // Petrolândia
    'CL': { 'IT': 26.80, 'PE': 55.44 }, // Chapadão do Lageado
    'AU': { 'IT': 13.30, 'RS': 26.40 }, // Aurora
    'AL': { 'IT': 62.04, 'TC': 14.10 }, // Agrolândia
    'TC': { 'AL': 14.10, 'AG': 17.40, 'PR': 55.20, 'BT': 14.40 }, // Trombudo Central
    'AG': { 'TC': 17.40, 'PR': 75.03, 'LA': 8.90, 'RS': 10.70 }, // Agronômica
    'PR': { 'TC': 55.20, 'AG': 75.03, 'BT': 80.96, 'TA': 19.40, 'MD': 37.40 }, // Pouso Redondo
    'BT': { 'TC': 14.40, 'PR': 80.96 }, // Braço do Trombudo
    'LA': { 'AG': 8.90, 'RO': 16.60, 'RS': 13.01 }, // Laurentino
    'RO': { 'LA': 16.60, 'TA': 71.06 }, // Rio do Oeste
    'TA': { 'SA': 19.01, 'DE': 90.64, 'PR': 19.40, 'RO': 71.06, 'MD': 56.76 }, // Taió
    'MD': { 'PR': 37.40, 'TA': 56.76 }, // Mirim Doce
    'RS': { 'PG': 27.40, 'LO': 25.60, 'AU': 26.40, 'AG': 10.7, 'LA': 13.01 } // Rio do Sul
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

// -------- Gerar caminho

function geracaoCaminho(pais, inicio, fim) {
    const caminho = [fim]

    while (true) {
        const key = pais[caminho[0]]
        caminho.unshift(key)
        if (key === inicio) {
            break
        }
    }
    const caminhoCidades = caminho.map( e => cidadesExtenso[e] )
    return caminhoCidades.join(' -> ')
}

// agrupados para ser possível executada-las num chamar de função
function executarCodigo() {
    const inicio = document.getElementById('cid_origem').value
    const fim = document.getElementById('cid_destino').value

    const resultado = document.getElementById('melhor_rota')

    const {pais, visitado} = encontrarRota(inicio, fim)

    console.log(pais)
    console.log(visitado)

    const caminhoFinal = geracaoCaminho(pais, inicio, fim)
    resultado.innerText = `O caminho mais curto:  ${caminhoFinal}` // Para mostrar no site
    console.log(`O caminho mais curto: ${caminhoFinal}`)
}

