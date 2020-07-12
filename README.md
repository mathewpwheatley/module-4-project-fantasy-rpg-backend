# Flatiron Fight - Backend

Flatiron Fight is a game made with React that highlights the members of the Flatiron 4/20/2020 cohort and their amusing personalities. A user can select a character inspired by a cohort member, and use custom abilities to fight through the 'Flatiron Mods' in order to reach 'Mod 5' and face off against a Flatiron instructor.

[This](https://github.com/sap2411/module-4-project-fantasy-rpg-frontend) is a link to the front-end repository.

## Motivation

We wanted to create a game that memorialized our cohort and the fun things we learned about eachother along the way.


## Technology Used

- Ruby
- Rails API
- Postgres database

## Features

- Create, edit, update, delete from Postgres database:
  - User
  - Character
  - Ability
  - Game Save
  - Modifier
- Perform fetch request for the following data via json:
  - User
  - Character (Only GET requests)
  - Ability (Only GET requests)
  - Game Save
  - Modifier

## Installation

Flatiron fight is hosted on Heroku therefore you can access it directly from your browser
- https://flatiron-fight.herokuapp.com

If you want to install locally, follow the below steps:
- Clone or fork the [front-end](https://github.com/sap2411/module-4-project-fantasy-rpg-frontend), and run 'npm i && npm audit fix' then 'yarn start'
- Clone or fork the [back-end](https://github.com/mathewpwheatley/module-4-project-fantasy-rpg-backend), run the following commands in order: bundle install, rails db:migrate, rails db:seed, rails s -p 3001.

## Contributing

Contributions are welcome, submit a pull request!

## Authors

* **Steven Parsons** - [GitHub](https://github.com/sap24471)
* **Mathew Wheatley** - [GitHub](https://github.com/mathewpwheatley)
* **Gabriel de Sousa** - [GitHub](https://github.com/GabedeSousa)

## License

This project is licensed under the [GNU GPL](https://www.gnu.org/licenses/gpl-3.0.en.html)
