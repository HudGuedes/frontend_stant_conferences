<h1>Frontend Stant Conferences</h1>

Este projeto é o frontend que se conecta com a [API Stant Conferences](https://github.com/HudGuedes/api_stant_conferences/), permitindo que os usuários criem, excluam, editem palestras e também importem dados de arquivos CSV diretamente pelo navegador.

<h1>Tecnologias utilizadas;</h1>

- Ruby 3.0.2
- Rails 7.1.1

<h2>Bibliotecas utilizadas;</h2>

- rest-client: Uma biblioteca para fazer solicitações HTTP em Ruby.
- base64: Para codificar e decodificar dados em base64.
- byebug: Uma ferramenta de depuração para Ruby.

<h2>Modo de utilizar;</h2>

- Clone o repositório da [API Stant Conferences](https://github.com/HudGuedes/api_stant_conferences/)
- Clone este repositório.
- No diretório deste repositório, execute o comando `bundle install` para instalar as dependências.

Agora, siga estas etapas:

- No repositório da API, inicie o servidor com o comando rails s.
- Neste repositório, inicie o servidor executando o seguinte comando: rails s -p 4000. A porta é uma escolha sua, mas deve ser diferente da porta da API.
- No seu navegador, acesse a URL: http://localhost:4000/lectures, lembrando de substituir a porta que você escolheu.

<h2>Criação de Nova Conferência</h2>

- Na primeira página, você tem a opção de criar uma nova conferência. Basta clicar no botão "Nova Conferência" no canto superior direito.
- Insira um nome e a duração da conferência e clique em "Salvar". Os dados da conferência serão exibidos na página inicial.
- Depois de criar uma conferência, você pode editá-la ou excluí-la.

<h2>Importação de Arquivo CSV</h2>

- Se preferir importar um arquivo CSV, após clicar em "Escolher Arquivo" e selecionar o arquivo CSV, clique em "Importar".
- Você será direcionado para uma página que exibe as conferências importadas, incluindo o horário de início, o nome da palestra e a duração
