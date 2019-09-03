# MyxqlAtom

**Sample project that reproduces a bug in MyXQL**

```
docker-compose build test
docker-compose up -d db
docker-compose run test mix do ecto.create, ecto.migrate
docker-compose run test
```
