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

### How to connect
```bash
ldap://localhost:388
# DN & Password
cn=admin,dc=example,dc=org
admin
```
