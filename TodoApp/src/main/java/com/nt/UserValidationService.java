package com.nt;

public class UserValidationService {
	
	public boolean isUserValid(String user, String password) {
		if (user.equals("gujunilesh") && password.equals("pass"))
			return true;
		return false;
	}

}
