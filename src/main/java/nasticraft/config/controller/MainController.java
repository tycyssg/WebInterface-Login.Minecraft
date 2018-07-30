package nasticraft.config.controller;

import nasticraft.config.model.Account;
import nasticraft.config.repository.AccountDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class MainController {

    @Autowired
    private AccountDAO accDao;

    public String index(){
        return "/";
    }

    @PostMapping("/checkuser")
    public String checkUser(@RequestParam String username,RedirectAttributes attributes){

        Account acc = accDao.findByUsername(username);

        if(acc != null){
            attributes.addFlashAttribute("currentUser", acc.getUsername());
            return "redirect:"+"/login";
        }else{
            attributes.addFlashAttribute("accessedNormal", true);
            attributes.addFlashAttribute("newUser", username);
            return "redirect:"+"/register";
        }


    }

}
