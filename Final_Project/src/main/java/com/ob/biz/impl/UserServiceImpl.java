package com.ob.biz.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ob.biz.dao.UserDAO;
import com.ob.biz.service.UserService;
import com.ob.biz.vo.UserVO;

@Service("userService")
public class UserServiceImpl implements UserService{
	@Autowired
	private UserDAO userDAO;
	
	public UserServiceImpl() {
		System.out.println(">> BoardServiceImpl 객체생성");
	}

	@Override
	public UserVO getUser(UserVO vo) {
		return userDAO.getUser(vo);
	}

	
	
}
