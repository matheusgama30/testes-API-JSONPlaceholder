# Projeto de Testes Automatizados de API - JSONPlaceholder

Este projeto demonstra testes automatizados de API utilizando **Postman** e execução via **Newman**, com geração de relatório em HTML. A API utilizada é a [JSONPlaceholder](https://jsonplaceholder.typicode.com/), que simula um serviço REST para fins de teste.

---

## ✅ Tecnologias Utilizadas

- [Postman](https://www.postman.com/)
- [Newman](https://www.npmjs.com/package/newman) - CLI do Postman
- [Newman Reporter HTMLEXTRA](https://www.npmjs.com/package/newman-reporter-htmlextra)


## 🚀 Como Executar o Projeto

### 1. Clone o repositório

```bash
git clone https://github.com/matheusgama30/testes-API-JSONPlaceholder.git
cd testes API - JSONPlaceholder-Postman
```

### 2. Instale o Node.js
Baixe e instale a partir do site: https://nodejs.org

### 3. Instale Newman e o reporter HTMLEXTRA
```
npm install -g newman newman-reporter-htmlextra
```

### 4. Execute os testes
#### 4.1. ✅ Executar com o script `.bat`
Execute clicando duas vezes no arquivo `run-tests.bat`, ou rodando via terminal:
```bash
./run-tests.bat
```
Esse comando executa a coleção com o reporter HTMLEXTRA e gera um relatório em HTML na pasta newman.

![Teste](./testes%20API%20-%20JSONPlaceholder-Postman/Imagens/HTMLEXTRArelatório1.png)
![Teste](./testes%20API%20-%20JSONPlaceholder-Postman/Imagens/HTMLEXTRArelatório2.png)

#### 4.2. 💻 Executar via CLI - Newman
Se você quiser apenas rodar os testes diretamente pelo terminal sem gerar relatório em HTML, use o comando abaixo:

```
newman run "testes-api-jsonplaceholder.postman_collection.json"
```

Esse comando exibe os resultados diretamente no terminal.

![Teste](./testes%20API%20-%20JSONPlaceholder-Postman/Imagens/testesExecutadosCLI.png)

#### 4.3. 🧪 Executar via Postman (manual)
1. Abra o Postman

2. Importe o arquivo:

          testes-api-jsonplaceholder.postman_collection.json

3. Selecione a coleção importada

4. Clique em "Run" no topo direito da coleção

5. Clique em "Run testes API - JSONPlaceholder"

![Teste](./testes%20API%20-%20JSONPlaceholder-Postman/Imagens/testesExecutadosPostman.png)

## 📋 Testes Implementados

A coleção inclui os seguintes testes:

| Método | Endpoint               | Descrição                                     |
|--------|------------------------|-----------------------------------------------|
| GET    | `/posts`               | Listar todos os posts                         |
| GET    | `/posts/{25}`          | Buscar um post específico                     |
| POST   | `/posts`               | Criar um novo post                            |
| PUT    | `/posts/{1}`           | Atualizar um post existente                   |
| DELETE | `/posts/{25}`          | Excluir um post                               |
| GET    | `/users/{1}`           | Verificar o usuário associado a um post       |


### Autor
Matheus Gama -->
<a href="https://www.linkedin.com/in/matheusmsg30/" target="_blank">LinkedIn</a>