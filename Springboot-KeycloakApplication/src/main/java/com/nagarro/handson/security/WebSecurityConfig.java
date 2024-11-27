package com.nagarro.handson.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.web.SecurityFilterChain;

/*This class configures HttpSecurity with OAuth2 Resource Server’s JWT authentication
 *here we override default Http Security Configuration */
@Configuration
@EnableWebSecurity
public class WebSecurityConfig {

	public static final String ADMIN = "admin";
	public static final String USER = "user";
	private final JwtAuthConverter jwtAuthConverter;
/*By using SecurityFilterChain method we explicitly specify that we want this to behave as resource server*/
	public WebSecurityConfig(JwtAuthConverter jwtAuthConverter) {
		super();
		this.jwtAuthConverter = jwtAuthConverter;
	}

	@Bean
	public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
		http.authorizeHttpRequests().requestMatchers(HttpMethod.GET, "/test/anonymous", "/test/anonymous/**")
				.permitAll().requestMatchers(HttpMethod.GET, "/test/admin", "/test/admin/**").hasRole(ADMIN)
				.requestMatchers(HttpMethod.GET, "/test/user").hasAnyRole(ADMIN, USER).anyRequest().authenticated();
		
		http.oauth2ResourceServer().jwt().jwtAuthenticationConverter(jwtAuthConverter);
		http.sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS);
		return http.build();

	}
}
