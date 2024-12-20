package com.nagarro.handson.controller;

import java.security.Principal;

import org.springframework.http.ResponseEntity;
import org.springframework.security.oauth2.server.resource.authentication.JwtAuthenticationToken;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/test")
public class TestController {

	@GetMapping("/anonymous")
	public ResponseEntity<String>getAnonymous(){
		return ResponseEntity.ok("Hello Anonymous");
	}
	
	@GetMapping("/admin")
	public ResponseEntity<String> getAdmin(Principal principal) {
		//we access token from Principal class,principal.getName()method retrieves Principal Claim name which was set to preffered_username
		//additional info was get from casting it to JwtAuthenticationToken
		JwtAuthenticationToken token= (JwtAuthenticationToken)principal;
		String userName= (String) token.getTokenAttributes().get("name");
		String userEmail =(String) token.getTokenAttributes().get("email");
	    return ResponseEntity.ok("Hello Admin \nUser Name : " + userName + "\nUser Email : " + userEmail);
	    
	}
	
	@GetMapping("/user")
	public ResponseEntity<String> getUser(Principal principal) {
		JwtAuthenticationToken token= (JwtAuthenticationToken)principal;
		String userName= (String) token.getTokenAttributes().get("name");
		String userEmail =(String) token.getTokenAttributes().get("email");
		return ResponseEntity.ok("Hello User \nUser Name : " + userName + "\nUser Email : " + userEmail);
}


}