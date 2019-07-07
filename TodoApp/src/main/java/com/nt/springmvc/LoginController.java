package com.nt.springmvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.nt.UserValidationService;

@Controller
public class LoginController {
	
	UserValidationService service = new UserValidationService();
	
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String sayHello() {
		return "login";
	}
	
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public String handleLoginRequest(@RequestParam String name, @RequestParam String password, ModelMap model) {
		if ( service.isUserValid(name, password) ) {
			model.put("name", name);
			model.put("password", password);
			return "welcome";
		} else {
			model.put("errorMsg", "Invalid Credentials");
			return "login";
		}
	}

}
