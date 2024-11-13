package service;

import entity.User_22110301;

public interface UserService {
	void insert(User_22110301 user);
	boolean checkPassword(String email, String password);
	boolean checkEmailExist (String email);
}
