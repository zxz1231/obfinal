package com.ob.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ob.biz.dao.UserDAO;
import com.ob.biz.service.UserService;
import com.ob.biz.vo.UsersVO;

@Service("userService")
public class UserServiceImpl implements UserService{
	@Autowired
	private UserDAO userDAO;
	
	public UserServiceImpl() {
		System.out.println(">> BoardServiceImpl 객체생성");
	}

	@Override
	public void insertUser(UsersVO vo) {
		userDAO.insertUser(vo);
	}

	@Override
	public void updateUser(UsersVO vo) {
		userDAO.updateUser(vo);
	}

	@Override
	public void deleteUser(UsersVO vo) {
		userDAO.deleteUser(vo);
	}
	
	@Override
	public UsersVO getUser(UsersVO vo) {
		return userDAO.getUser(vo);
	}

	@Override
	public List<UsersVO> getUserList() {
		return userDAO.getUserList();
	}

	
	
}
