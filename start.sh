export LDAP_LOG_LEVEL="256"
export LDAP_ORGANISATION="Example Inc."
export LDAP_DOMAIN="example.org"
export LDAP_BASE_DN=""
export LDAP_ADMIN_PASSWORD="admin"
export LDAP_CONFIG_PASSWORD="config"
export LDAP_READONLY_USER="false"
export #LDAP_READONLY_USER_USERNAME="readonly"
export #LDAP_READONLY_USER_PASSWORD="readonly"
export LDAP_RFC2307BIS_SCHEMA="false"
export LDAP_BACKEND="mdb"
export LDAP_TLS="true"
export LDAP_TLS_CRT_FILENAME="ldap.crt"
export LDAP_TLS_KEY_FILENAME="ldap.key"
export LDAP_TLS_DH_PARAM_FILENAME="dhparam.pem"
export LDAP_TLS_CA_CRT_FILENAME="ca.crt"
export LDAP_TLS_ENFORCE="false"
export LDAP_TLS_CIPHER_SUITE="SECURE256:-VERS-SSL3.0"
export LDAP_TLS_VERIFY_CLIENT="demand"
export LDAP_REPLICATION="false"
export #LDAP_REPLICATION_CONFIG_SYNCPROV='binddn="cn=admin,cn=config" bindmethod=simple credentials="$$LDAP_CONFIG_PASSWORD" searchbase="cn=config" type=r
export #LDAP_REPLICATION_DB_SYNCPROV='binddn="cn=admin,$$LDAP_BASE_DN" bindmethod=simple credentials="$$LDAP_ADMIN_PASSWORD" searchbase="$$LDAP_BASE_DN" t
export #LDAP_REPLICATION_HOSTS="#PYTHON2BASH:['ldap://ldap.example.org','ldap://ldap2.example.org']"
export KEEP_EXISTING_CONFIG="false"
export LDAP_REMOVE_CONFIG_AFTER_SETUP="true"
export LDAP_SSL_HELPER_PREFIX="ldap"

docker run -it -p 388:389 -p 635:636 custom-openldap --loglevel debug
#docker run -it -p 388:389 -p 635:636 custom-openldap