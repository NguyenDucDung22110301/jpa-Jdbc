package service.impl;

import DAO.IUserDAO_22110301;
import DAO.impl.UserDAO22110301Impl_22110301;
import entity.User_22110301;
import service.UserService;


public class UserServiceImpl implements UserService {
	
	public IUserDAO_22110301 cateDao = new UserDAO22110301Impl_22110301();
	
	@Override
	public void insert(User_22110301 user) {
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
