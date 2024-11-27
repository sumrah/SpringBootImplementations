#Springboot-OAuthGithub 
##simple SingleSignOn application
--a very basic static app with just a home page and unconditional login via Spring Boot’s OAuth 2.0 configuration properties (if you visit the home page, you will be automatically redirected to GitHub).

/springboot-Oauthgithub---ClientApplication
Github--- Authorization server


Then use Github as authentication Provider
1 Added new github app

2 SettingAuthorization callback URL as http://localhost:8080/login/oauth2/code/github
	*{default redirect URI template is {baseUrl}/login/oauth2/code/{registrationId}. The registrationId is a 	unique identifier for the ClientRegistration

3 configured application.yml
	*{add github client id and secret}
	
4 boot the app and run localhost then u will be redirected to login with github