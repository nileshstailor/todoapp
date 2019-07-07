package com.nt.login;

import org.springframework.stereotype.Service;

@Service
public class LoginService {
	
	public boolean isUserValid(String user, String password) {
		if (user.equals("gujunilesh") && password.equals("pass"))
			return true;
		return false;
	}

}
