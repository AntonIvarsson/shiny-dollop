# shiny-dollop

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Install Node.js dependencies with `cd assets && npm install`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

### API-nycklar
För att använda login API krävs nyckel till sendgrid. Den skall ligga i lokal .env, fråga mig så skickar jag den och visar hur den ska ligga.

Förkortning för projektet: PC.

Name convention for branches: PC-X-_Description_ , X being Github Issue number.

Commit message convention PC-X: _Changes_

Guide to auth API: https://hexdocs.pm/access_pass/phoenix_routes_helper.html#content

### Åtkomst till server-API
Det går en pipe genom accessPass Auth funktion när man använder samtliga endpoints på /api, där behöver man skicka med en access_token som man får vid inloggning eller refresh i, den skall ligga i header som: access_token: "Din access token".

### Testa serversaker
Ska ni göra saker så är det asnice att kunna testa. Jag använder en rest-client som heter insomnia: https://insomnia.rest . Supernice :)