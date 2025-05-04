# Algoritmo de Dijkstra - Cálculo do Caminho Mais Curto

Este projeto implementa o algoritmo de Dijkstra para encontrar o caminho mais curto entre duas cidades, com base em uma lista de distâncias entre as cidades e seus respectivos custos de viagem.

## Descrição

O sistema permite que o usuário selecione duas cidades de origem e destino, e, com base nas distâncias entre elas, calcula o caminho mais curto utilizando o algoritmo de Dijkstra. A interface é baseada em HTML e JavaScript, e o cálculo das rotas é feito de forma eficiente por meio de uma estrutura de dados de grafo.
Este projeto foi desenvolvido como parte do trabalho final da disciplina Estrutura de Dados II, realizado em grupo. A implementação da interface utilizando HTML, CSS e JavaScript ficou sob minha responsabilidade (Luan). Também foi elaborado um artigo acadêmico abordando o algoritmo de Dijkstra, sendo este sistema a sua implementação prática.
Além disso, foi desenvolvida uma versão do algoritmo em Python, implementada pelo membro Lucas Gilmar da Silva. Seu GitHub pode ser acessado em: https://github.com/K0yall

Observação:
Caso queira visualizar o artigo, ele está disponível no repositório com o nome "Artigo Caminho Mais Curto.pdf".
Após a conclusão do artigo, algumas melhorias foram realizadas, principalmente na parte visual do sistema.

Link do artigo utilizado como base para o projeto:
https://akiradev.netlify.app/posts/algoritmo-dijkstra/

### Funcionamento:

- O sistema possui uma interface em HTML que permite a seleção das cidades de origem e destino.
- Com base nessas escolhas, o algoritmo de Dijkstra é executado para encontrar a menor rota entre as cidades.
- O caminho mais curto é então exibido diretamente na interface.

### Arquivos principais:

1. **`index.html`**: Contém a estrutura HTML da página, com o formulário para seleção das cidades e a exibição do resultado.
2. **`caminhoMaisCurtoCidade.js`**: Contém o código JavaScript que implementa o algoritmo de Dijkstra e manipula a lógica de cálculo do caminho mais curto.
3. **`NETWORKX.py`**: Versão em Python do algoritmo, utilizando a biblioteca networkx para o cálculo das rotas.

## Como Rodar

1. Clone o repositório:

   ```bash
   git clone https://github.com/LuanGSiiss/Faculdade-program.git

2. Vá até o diretório:

    ```bash
   cd Faculdade-program/estrutura-de-dados02/grafos e arvores/algoritmoDijkstra

3. Abra o arquivo "index.html" diretamente no navegador ou execute o arquivo "NETWORKX.py" em uma ferramenta para python.

