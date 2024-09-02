### How to start

```bash
docker build . -t custom-openldap
docker compose up
```

### If you want to use big data

```bash
./scripts/create_groups.sh 10000 && ./scripts/create_users.sh 10000
./scripts/combine_data.sh ./bootstrap/ldif/user_and_groups.ldif
docker compose down -v && docker build . -t custom-openldap && docker compose up
```

### How to connect

```bash
localhost:388
cn=admin,dc=example,dc=org 
admin
```

### How to reset

```bash
docker compose down -v
```
