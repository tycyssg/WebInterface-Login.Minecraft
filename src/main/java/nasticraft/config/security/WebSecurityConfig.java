package nasticraft.config.security;


import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;


@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {


	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		
		http
        .authorizeRequests()
			.antMatchers("/", "/static/**","/server","/js/","/icons/","/accessd","/register","/login/**","/checkuser","/registeruser").permitAll()
			.anyRequest().authenticated()
        .and()
        .formLogin()
			.loginPage("/login")
			.loginProcessingUrl("/signin")
			.usernameParameter("username")
			.passwordParameter("password")
			.defaultSuccessUrl("/cp")
			.permitAll()
			.and()
        .logout()
        .logoutUrl("/signout")
        .permitAll()
		.and().exceptionHandling().accessDeniedPage("/accessd");
		
}
	

	
//	 @Override
//	    public void configure(WebSecurity web) throws Exception {
//	        //super.configure(web);
//	        web.ignoring().antMatchers("**"); // everything is open until we lock it down (currently waiting on EU web)
//	    }
	 
//	@Override
	//.csrf().disable()
//	   protected void configure(HttpSecurity http) throws Exception {
//	      http.authorizeRequests()
//	      	.antMatchers("/", "/home", "/static/**").permitAll()
//			.antMatchers("/admin/*").hasAnyRole("ADMIN")
//			.antMatchers("/user/*").hasAnyRole("USER")
//			.anyRequest().authenticated()
//	      .and()
//	      .authorizeRequests().antMatchers("/login**").permitAll()
//	      .and()
//	      .formLogin()
//	      .loginPage("/login") // Specifies the login page URL
//	      .loginProcessingUrl("/signin") // Specifies the URL,which is used 
//	                                     //in action attribute on the <from> tag
//	      .usernameParameter("userid")  // Username parameter, used in name attribute
//	                                    // of the <input> tag. Default is 'username'.
//	      .passwordParameter("passwd")  // Password parameter, used in name attribute
//	                                    // of the <input> tag. Default is 'password'.
//	      .successHandler((req,res,auth)->{    //Success handler invoked after successful authentication
//	         for (GrantedAuthority authority : auth.getAuthorities()) {
//	            System.out.println(authority.getAuthority());
//	         }
//	         System.out.println(auth.getName());
//	         res.sendRedirect("/"); // Redirect user to index/home page
//	      })
////	    .defaultSuccessUrl("/")   // URL, where user will go after authenticating successfully.
//	                                // Skipped if successHandler() is used.
//	      .failureHandler((req,res,exp)->{  // Failure handler invoked after authentication failure
//	         String errMsg="";
//	         if(exp.getClass().isAssignableFrom(BadCredentialsException.class)){
//	            errMsg="Invalid username or password.";
//	         }else{
//	            errMsg="Unknown error - "+exp.getMessage();
//	         }
//	         req.getSession().setAttribute("message", errMsg);
//	         res.sendRedirect("/login"); // Redirect user to login page with error message.
//	      })
////	    .failureUrl("/login?error")   // URL, where user will go after authentication failure.
//	                                    //  Skipped if failureHandler() is used.
//	      .permitAll() // Allow access to any URL associate to formLogin()
//	      .and()
//	      .logout()
//	      .logoutUrl("/signout")   // Specifies the logout URL, default URL is '/logout'
//	      .logoutSuccessHandler((req,res,auth)->{   // Logout handler called after successful logout 
//	         req.getSession().setAttribute("message", "You are logged out successfully.");
//	         res.sendRedirect("/login"); // Redirect user to login page with message.
//	      })
////	    .logoutSuccessUrl("/login") // URL, where user will be redirect after successful
//	                                  //  logout. Ignored if logoutSuccessHandler() is used.
//	      .permitAll() // Allow access to any URL associate to logout()
//	      .and()
//	      .csrf().disable(); // Disable CSRF support
//	   }
	
	
//	// create two users, admin and user
//    @Autowired
//    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
//
//        auth.inMemoryAuthentication()
//                .withUser("user").password("user").roles("USER")
//                .and()
//                .withUser("admin").password("admin").roles("ADMIN");
//    }	
	
}
