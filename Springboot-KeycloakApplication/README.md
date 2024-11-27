##start the keycloak server
kc.bat start-dev --http-port 5151
#clients
-clients are entities that can request Keycloak to authenticate a user.
##keycloak
admin 
sumrah123
##to decode the access token
-use jwt.io website
##add special dependency
spring-boot-starter-oath2-resource-server : Use this if the app is a REST API server.