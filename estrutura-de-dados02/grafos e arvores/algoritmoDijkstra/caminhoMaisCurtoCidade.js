const vertices = [
    'SA', 'WI', 'PG', 'DE', 'JB', 'IB', 'LO', 'PN', 'VR',
    'IM', 'IT', 'PE', 'CL', 'AU', 'AL', 'TC', 'AG', 'PR',
    'BT', 'LA', 'RO', 'TA', 'MD', 'RS'
]

// Lista de adjacencia junto com os custos
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


// função main

function encontrarRota(atual, fim) {
    // cria um objeto e deixa todos os nos com valor infinito
    const naoVisitado = {};
    vertices.forEach(nos => {
        naoVisitado[nos] = Infinity
    })

    let atualDistancia = 0
    naoVisitado[atual] = atualDistancia
    
    // Cria os objetos que vão guardar os nós já visitados e os predecessores dos nós
    const visitado = {}
    const predecessores = {}

    // Loop vai se repetir enquanto estiver nós não visitados
    while (Object.keys(naoVisitado).length > 0) {
        //acha o nó não visitado com menor distancia estimada
        let minVertex = Object.keys(naoVisitado).reduce((a, b) => 
            naoVisitado[a] < naoVisitado[b] ? a : b
        )
    
        // Olha os vizinhos e decido o proximo com menor valor; Está fazendo o "Relaxamento"
        for (const [vizinho, distancia] of Object.entries(distancias[minVertex])) {
            if (!(vizinho in naoVisitado)) { // se o vizinho nao esta no naoVistado, então todos os adjacentes de minVertex estão visitados
                continue
            }

            // somando a distancia do minVertex + a areste com seu vizinho 
            const novaDistancia = naoVisitado[minVertex] + distancia

            if (naoVisitado[vizinho] === Infinity || naoVisitado[vizinho] > novaDistancia) {
                naoVisitado[vizinho] = novaDistancia
                predecessores[vizinho] = minVertex    // Guardando os predecessores
            }
        }

        // Remove o elemento dos naovisitado(colocando como "fechado") e também atualiza a distancia estimada
        visitado[minVertex] = naoVisitado[minVertex]
        delete naoVisitado[minVertex]

        if (minVertex === fim) {
            break
        }
    }

    return {predecessores, visitado}
}

// Cria o caminho ao pegar o nó de destino e retroceder, fazendo o caminho até o inicio
function geracaoCaminho(predecessores, inicio, fim) {
    const caminho = [fim];

    while (true) {
        const key = predecessores[caminho[0]];
        caminho.unshift(key);
        if (key === inicio) {
            break;
        }
    }

    const caminhoCidades = caminho.map( e => cidadesExtenso[e]);
    return caminhoCidades.join(' -> ');
}


function executarCodigo() {
    const inicio = document.getElementById('cid_origem').value;
    const fim = document.getElementById('cid_destino').value;

    const resultado = document.getElementById('melhor_rota');

    if (inicio == fim) {
        resultado.innerText = cidadesExtenso[inicio];
    } else {
        const {predecessores, visitado} = encontrarRota(inicio, fim);
        console.log(predecessores);
        console.log(visitado);

        const caminhoFinal = geracaoCaminho(predecessores, inicio, fim);
        resultado.innerText = caminhoFinal;
    }
}

