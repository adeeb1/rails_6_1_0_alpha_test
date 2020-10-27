# README

To test:

1. Fill in the PostgreSQL username and password in `config/database.yml`

2. Run the following:

```
RAILS_ENV=test rails db:environment:set db:create db:schema:load
```

3. Run tests:

```
rails test
```