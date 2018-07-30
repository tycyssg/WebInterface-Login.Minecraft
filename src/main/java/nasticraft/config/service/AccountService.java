package nasticraft.config.service;


import nasticraft.config.model.Account;
import nasticraft.config.model.AccountPersonalDetails;
import nasticraft.config.model.Role;
import nasticraft.config.repository.AccPersonalDetailsRepository;
import nasticraft.config.repository.AccountDAO;
import nasticraft.config.util.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.servlet.http.HttpServletRequest;
import java.util.Arrays;


@Service
public class AccountService {


	@Autowired
	private PasswordEncoder passwordEncoder;

	@Autowired
	private AccountDAO accDao;

	@Autowired
	private AccPersonalDetailsRepository accPersonalDetailsRep;



	public void getUserStatusAndName(HttpServletRequest request) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String currentUserName = "";
		if (!(authentication instanceof AnonymousAuthenticationToken)) {
			currentUserName = authentication.getName();

		}
		if (!(authentication instanceof AnonymousAuthenticationToken) && (authentication.isAuthenticated())) {
			request.setAttribute("login", true);
			request.setAttribute("userLogat", currentUserName);
		}
	}
	
	public String getCurrentUser() {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String currentUserName = "";
		if (!(authentication instanceof AnonymousAuthenticationToken)) {
			currentUserName = authentication.getName();

		}
		return currentUserName;
	}

	public void saveAcc(String username,String email,String password){
		Account acc = new Account();
		Role role = new Role();
		role.setRole("USER");

		acc.setUsername(username);
		acc.setPassword(passwordEncoder.encode(password));
		acc.setStatus(Constants.AccountStatus.ONLINE);
		acc.setRoles(Arrays.asList(role));
		accDao.save(acc);

		AccountPersonalDetails accPers = new AccountPersonalDetails();
		accPers.setEmail(email);
		accPers.setPersonalAccount(acc);
		accPersonalDetailsRep.save(accPers);

	}

	public boolean checkIfMailExist(String email) {
		boolean exist = false;
		if (accPersonalDetailsRep.findByEmail(email) != null) {
			exist = true;
		}
		return exist;
	}


	public boolean checkIfMailIsValid(String email) {
		boolean exist = false;
		if (!isValidEmailAddress(email)) {
			exist = true;
		}
		return exist;
	}

	// email validation method
	public static boolean isValidEmailAddress(String email) {
		boolean result = true;
		try {
			InternetAddress emailAddr = new InternetAddress(email);
			emailAddr.validate();
		} catch (AddressException ex) {
			result = false;
		}
		return result;
	}
	
	
	
}


