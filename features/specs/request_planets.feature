#language: pt

Funcionalidade: Consultar resposta retornada na API planets do swapi.co
Eu, como usuario, quero que a API planets do swapi.co retorne uma resposta válida

Cenario: Request para API planets do swapi.co

Quando eu envio uma requisicao GET para a API planets
E envio uma nova requisicao com um valor maior
Então eu valido a resposta e a mensagem recebida
