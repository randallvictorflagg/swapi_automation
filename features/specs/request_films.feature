#language: pt

Funcionalidade: Consultar resposta retornada na API films do swapi.co
Eu, como usuario, quero que a API films do swapi.co retorne uma resposta válida

Cenario: Request para API films do swapi.co

Quando eu envio uma requisicao GET para a API films
Então eu recebo dados validos da requisicao