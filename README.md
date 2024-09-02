### How to start
```bash
./build.sh && ./start.sh
```
Or
```bash
docker build . -t custom-openldap
docker compose up
# Reset docker volumes
docker compose down -v
```

### If you want to use big data

```bash
./scripts/create_groups.sh 10000 && ./scripts/create_users.sh 10000
./scripts/combine_data.sh ./bootstrap/ldif/user_and_groups.ldif
docker compose down -v && docker build . -t custom-openldap && docker compose up
```

### How to connect
```bash
ldap://localhost:388
# DN & Password
cn=admin,dc=example,dc=org
admin
```
