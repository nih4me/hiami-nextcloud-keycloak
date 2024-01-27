./opt/keycloak/bin/kcadm.sh config credentials --server http://localhost:8080/auth --realm master --user admin --password admin
./opt/keycloak/bin/kcadm.sh create realms -s realm=newrealm -s enabled=true
./opt/keycloak/bin/kcadm.sh create clients -r Humanitarians -s clientId=erpnext -s enabled=true -s publicClient=false -s 'redirectUris=["http://localhost:8081/*"]' -s protocol=openid-connect -s directAccessGrantsEnabled=true -s serviceAccountsEnabled=true -s authorizationServicesEnabled=true -s secret=d0b8122f-8dfb-46b7-b68a-f5cc4e25d000