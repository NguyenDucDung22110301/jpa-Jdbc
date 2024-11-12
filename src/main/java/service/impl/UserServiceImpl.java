package service.impl;

import DAO.IUserDAO;
import DAO.impl.UserDAOImpl;
import entity.User;
import service.UserService;


public class UserServiceImpl implements UserService {
	
	public IUserDAO cateDao = new UserDAOImpl();
	
	@Override
	public void insert(User user) {
		cateDao.insert(user);
	}
	
	@Override
	public boolean checkPassword(String email, String password) {
		return cateDao.checkUsernameAndPassword(email, password);
	}

	@Override
	public boolean checkEmailExist(String email) {
		if(cateDao.findByEmail(email) != null) {
			return true;
		}
		return false;
	}

}
