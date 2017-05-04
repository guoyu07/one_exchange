**One Exchange**
======================

### [Acessar projeto online](https://crystian-app1-exchange.herokuapp.com/)

![OneExchange](https://raw.githubusercontent.com/franciscpd/one_exchange/master/public/screenshot.png)

Esse é um projeto desenvolvido no bootcamp de Ruby on Rails da OneBitCode, cuja proposta é desenvolver uma aplicação para conversão de moedas.

Onde o usuário informará um valor X de uma determinada moeda e será retornado um valor Y da moeda selecionada para conversão.

Para execução do projeto você deve ter Docker instalado.

Depois de clonado o projeto, dentro da pasta do mesmo execute os seguintes comandos:
```
docker-compose build
docker-compose run --rm website rails db:create db:migrate
docker-compose up
```

Agora só acessar a url http://localhost:3000 e utilizar a aplicação.
