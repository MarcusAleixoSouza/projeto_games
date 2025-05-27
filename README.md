🎮 Análise de Vendas de Games
Este projeto realiza uma análise sobre vendas de games utilizando SQL, com o objetivo de responder perguntas e extrair insights relevantes do mercado de jogos eletrônicos.

🔎 Objetivo
O objetivo é identificar:

As regiões com maiores e menores volumes de vendas

Os gêneros mais populares por região

Uma comparação direta de vendas entre dois dos principais consoles: PS4 e Xbox One

📁 Dataset
Fonte: Kaggle

Links:

[Videogames Sales Dataset](https://www.kaggle.com/datasets/sidtwr/videogames-sales-dataset/data)

[Notebook de Referência](https://www.kaggle.com/code/snanilim/video-games-sales-analysis-and-visualization/notebook)

Descrição:
O projeto utiliza três arquivos .csv:

vgsales.csv: Contém informações gerais sobre os jogos (nome, gênero, vendas por região e total).

PS4_GamesSales.csv: Foca em vendas do PS4 (nome, região, vendas). Não inclui o gênero.

XboxOne_GamesSales.csv: Contém dados semelhantes, mas referentes ao Xbox One. Não inclui a plataforma, mas contém o gênero.

📝 Perguntas Respondidas
Qual a região com mais vendas de jogos?

Qual a região com menos vendas de jogos?

Qual o gênero mais vendido em cada região?

Qual console vendeu mais por jogo: PS4 ou Xbox?

💻 Ferramentas Utilizadas
SQL (PostgreSQL via pgAdmin 4)

Git & GitHub

📊 Metodologia
Exploração inicial dos dados

Leitura e compreensão das tabelas

Verificação de nulos, tipos e estrutura

Transformações aplicadas

Conversão de tipos

Limpeza de dados e remoção de duplicatas

Tratamento de erros de codificação (UTF-8)

Consultas e análises

Uso de GROUP BY, JOIN, CTEs, Window Functions, CASE e agregações

💡 Principais Insights
[1] A região NA (América do Norte) lidera em volume de vendas, seguida pela UE (Europa) — importante considerar essas regiões como foco de mercado.

[2] As regiões com menos vendas são JP (Japão) e Outros — conhecer melhor o contexto cultural pode ajudar a expandir vendas nessas áreas.

[3] Identificar os gêneros mais vendidos por região ajuda a direcionar melhor a temática dos jogos desenvolvidos.

[4] Entender qual console está gerando mais vendas pode orientar decisões de desenvolvimento e lançamento.

🚀 Como reproduzir este projeto no pgAdmin 4
🧱 Pré-requisitos
PostgreSQL instalado (recomendado: versão 13+)

pgAdmin 4 instalado

Arquivos .csv e .sql deste repositório

📁 Estrutura de Arquivos

projeto-games/
├── dados/
│   ├── PS4_GamesSales.csv
│   ├── XboxOne_GamesSales.csv
│   └── vgsales.csv
├── sql/
│   ├── criar_tabelas.sql
│   ├── importar_dados.sql
│   └── consultas_analise.sql
└── README.md
🧭 Passo a Passo
1. Criar o banco de dados
Abra o pgAdmin 4

Vá em Databases → Create → Database

Nomeie como projeto_dados e clique em Save

2. Criar as tabelas
Vá até o banco criado

Acesse Tools → Query Tool

Copie o conteúdo de sql/criar_tabelas.sql

Execute o script (⚡)

3. Importar os dados CSV
Opção A: Interface gráfica do pgAdmin

Clique com o botão direito sobre a tabela → Import/Export

Escolha o caminho do CSV

Formato: CSV, delimitador ,, marcar Header

Clique em Import

Opção B: Comando SQL

No Query Tool:

COPY vgsales FROM 'C:/seu-caminho/dados/vgsales.csv' DELIMITER ',' CSV HEADER;
⚠️ Substitua o caminho pelo seu. O PostgreSQL precisa ter acesso ao local.

4. Executar as análises
Abra o arquivo sql/consultas_analise.sql

Execute as queries no Query Tool

✅ Observações
Verifique se os nomes e tipos das colunas no CSV correspondem às tabelas criadas

Evite caminhos com acentos ou espaços

Se COPY gerar erro, use a interface gráfica para importar
