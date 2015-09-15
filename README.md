## Dental Website Readme

To-do List
----------

* Change from Unicorn to Puma for Heroku webserver due to slow client attacks.
* Add downloadable documents
* Admin interface to manage appointment requests

Setup
-----

* After running `bundle install`, you will need to add your own *database.yml* file to the `/config` directory. This configuration file is ignored by git and is not committed to the source repo. Setup your PostgreSQL database with a configration like this:
```
development:
  adapter: postgresql
  encoding: unicode
  database: dental_development
  pool: 5

test:
  adapter: postgresql
  encoding: unicode
  database: dental_test
  pool: 5

production:
  adapter: postgresql
  encoding: unicode
  database: dental_production
  pool: 5

```

* To create the database locally for the first time, and then migrate the tables:

```
$ rake db:create && rake db:migrate
```

* You can optionally seed the database with data `rake db:seed`.


