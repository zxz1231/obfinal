package com.ob.biz.service;

import java.util.List;

import com.ob.biz.vo.UsersVO;

public interface UsersService {
	//회원 등록
	public void insertUsers(UsersVO vo);
	//회원정보 수정
	public void updateUsers(UsersVO vo);
	//회원 탈퇴
	public void deleteUsers(UsersVO vo);
	//회원정보 상세 조회
	public UsersVO getUsers(UsersVO vo);
	//회원목록 전체조회
	public List<UsersVO> getUsersList();
	//아이디 중복 검사
	public int idcheck(UsersVO vo);
}
