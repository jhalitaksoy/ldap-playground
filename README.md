### How to start

```bash
docker build . -t custom-openldap
docker compose up
```

### How to reset

```bash
docker-compose down -v
```
### How to connect

```bash
localhost:388
cn=admin,dc=example,dc=org 
admin
```