package com.ob.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ob.biz.dao.UsersDAO;
import com.ob.biz.service.UsersService;
import com.ob.biz.vo.UsersVO;

@Service("usersService")
public class UsersServiceImpl implements UsersService{
	@Autowired
	private UsersDAO usersDAO;
	
	public UsersServiceImpl() {
		System.out.println(">> BoardServiceImpl 객체생성");
	}

	@Override
	public void insertUsers(UsersVO vo) {
		usersDAO.insertUsers(vo);
	}

	@Override
	public void updateUsers(UsersVO vo) {
		usersDAO.updateUsers(vo);
	}

	@Override
	public void deleteUsers(UsersVO vo) {
		usersDAO.deleteUsers(vo);
	}
	
	@Override
	public UsersVO getUsers(UsersVO vo) {
		return usersDAO.getUsers(vo);
	}

	@Override
	public List<UsersVO> getUsersList() {
		return usersDAO.getUsersList();
	}

	@Override
	public int idcheck(UsersVO vo) {
		return usersDAO.idcheck(vo);
	}

	
	
}
