package DAO;

import java.util.List;

import entity.User;

public interface IUserDAO {
	void insert(User user);
	boolean checkUsernameAndPassword(String username, String inputPassword);
	String findByEmail(String email);

	List<User> findByName(String keyword);
}