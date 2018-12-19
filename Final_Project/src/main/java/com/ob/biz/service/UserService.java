package com.ob.biz.service;

import java.util.List;

import com.ob.biz.vo.UsersVO;

public interface UserService {
	//회원 등록
	public void insertUser(UsersVO vo);
	//회원정보 수정
	public void updateUser(UsersVO vo);
	//회원 탈퇴
	public void deleteUser(UsersVO vo);
	//회원정보 상세 조회
	public UsersVO getUser(UsersVO vo);
	//회원목록 전체조회
	public List<UsersVO> getUserList();
}
