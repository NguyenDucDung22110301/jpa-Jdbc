package DAO.impl;

import java.util.ArrayList;
import java.util.List;

import DAO.IUserDAO;
import configs.JpaConfig;
import entity.User;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.NoResultException;
import jakarta.persistence.TypedQuery;

public class UserDAOImpl implements IUserDAO{

	@Override
	public void insert(User user) {
		EntityManager enma = JpaConfig.getEntityManager();
		EntityTransaction trans = enma.getTransaction();
		try {
			trans.begin();
			enma.persist(user);// insert vào bảng
			trans.commit();
		} catch (Exception e) {
			e.printStackTrace();
			trans.rollback();
			throw e;
		} finally {
			enma.close();
		}
		
	}
	@Override
	public List<User> findByName(String keyword) {
	    EntityManager enma = JpaConfig.getEntityManager();
	    EntityTransaction trans = enma.getTransaction();
	    List<User> users = new ArrayList<>();
	    try {
	        trans.begin();
	        String jpql = "SELECT u FROM User u WHERE u.fullname LIKE :keyword";
	        TypedQuery<User> query = enma.createQuery(jpql, User.class);
	        query.setParameter("keyword", "%" + keyword + "%");
	        users = query.getResultList();
	        trans.commit();
	    } catch (Exception e) {
	        e.printStackTrace();
	        trans.rollback();
	        throw e;
	    } finally {
	        enma.close();
	    }
	    return users;
	}
	
	@Override
	public String findByEmail(String email) {
	    EntityManager enma = JpaConfig.getEntityManager();
	    EntityTransaction trans = enma.getTransaction();
	    String password = null;

	    try {
	        trans.begin();
	        String jpql = "SELECT u.passwd FROM User u WHERE u.email = :email";
	        TypedQuery<String> query = enma.createQuery(jpql, String.class);
	        query.setParameter("email", email);  // Tìm người dùng theo email
	        password = query.getSingleResult();  // Lấy mật khẩu người dùng từ kết quả
	        trans.commit();
	    } catch (Exception e) {
	        e.printStackTrace();
	        trans.rollback();
	        throw e;
	    } finally {
	        enma.close();
	    }

	    return password;  // Trả về mật khẩu người dùng, hoặc null nếu không tìm thấy
	}
	
	@Override
	public boolean checkUsernameAndPassword(String username, String inputPassword) {
	    String storedPassword = findByEmail(username);  // Lấy mật khẩu từ cơ sở dữ liệu

	    if(storedPassword.endsWith(inputPassword)) {
	    	return true;
	    }
	    return false;  // Nếu không tìm thấy người dùng hoặc mật khẩu không đúng, trả về false
	}
	
}