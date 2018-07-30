package nasticraft.config.controller;

import nasticraft.config.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.regex.Pattern;

@Controller
public class AccountController {

	@Autowired
	AccountService accService;


	@GetMapping("/login")
	public String login() {
		return "login";
	}

    @GetMapping("/register")
    public String register() {
        return "register";
    }
	


	boolean called = false;
	@PostMapping("/registeruser")
	public String register(RedirectAttributes attributes, String username, String email, String password,
                           String hashString) {
		called = false;
		Pattern p = Pattern.compile("[^A-Za-z0-9]");
		boolean b = p.matcher(username).find();

		handleVariable("emptyUserOrMail", isStringEmpty(email), attributes);
		handleVariable("specialChars", b,attributes);
		handleVariable("emailExist", accService.checkIfMailExist(email), attributes);
		handleVariable("emailValid", accService.checkIfMailIsValid(email), attributes);


		if (!called) {
			accService.saveAcc(username, email, password);
			attributes.addFlashAttribute("accCreated", true);
		}

		return "redirect:"+"/";
	}

	private boolean isStringEmpty(String incString) {
		return (incString == null || incString.trim().isEmpty());
	}

	private void handleVariable(String name, boolean value, RedirectAttributes attributes) {
		if(value) {
			called = true;
		}
		attributes.addFlashAttribute(name, value);
	}

	@PreAuthorize("hasRole('ROLE_USER')")
	@GetMapping("/cp")
	public String userCP(HttpServletRequest request) {
		accService.getUserStatusAndName(request);
		request.setAttribute("classCp", "active");
		return "cp";
	}
//
//	@PreAuthorize("hasRole('ROLE_ADMIN')")
//	@PostMapping("/invitesomeone")
//	public String inviteSomeone(RedirectAttributes attributes, @RequestParam String emailInvite, String username, HttpServletRequest request) {
//		System.out.println(emailInvite + " " + username);
//		if(!accService.checkIfMailIsValid(emailInvite)) {
//			accService.inviteSomeone(emailInvite, username);
//			attributes.addFlashAttribute("mailSent", true);
//			attributes.addFlashAttribute("classInvite", "active");
//		}else {
//			attributes.addFlashAttribute("mailInvalid", true);
//			attributes.addFlashAttribute("classInvite", "active");
//		}
//
//		return "redirect:"+"/cp?tab=invite";
//	}
//
//	@PostMapping("/adduserdetails")
//	@ResponseBody
//	public String addUserDetails(@RequestBody AddUserDetails userD) {
//		 AccountPersonalDetails acc = accService.addUserDetails(userD.getUsername(), userD.getName(), userD.getSurname(), userD.getPhone());
//
//		 Gson gson = new Gson();
//		 String accJson = gson.toJson(acc);
//		 return accJson;
//	}
//
//	@PostMapping("/adduseraddress")
//	public String addUserAddress(@RequestBody AddUserAddress userAddress, HttpServletRequest request) {
//		AccountPersonalAddress acc = accService.addUserAddress(userAddress, request);
//		Gson gson = new Gson();
//		String accJson = gson.toJson(acc);
//
//		return accJson;
//	}
//
//
	
}
