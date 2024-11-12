package service;

import entity.User;

public interface UserService {
	void insert(User user);
	boolean checkPassword(String email, String password);
	boolean checkEmailExist (String email);
}
