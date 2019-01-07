package com.ob.biz.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ob.biz.vo.UsersVO;

@Repository("usersDAO") // 이름을 지정해주지 않으면클래스 이름 첫글자 소문자로
public class UsersDAO {
	@Autowired
	private SqlSessionTemplate mybatis;

	//회원 등록
	public void insertUsers(UsersVO vo) {
		System.out.println("==========================> Mybatis2로 insertUsers() 처리");
		mybatis.insert("UsersDAO.insertUsers", vo);
	};
	//회원정보 수정
	public void updateUsers(UsersVO vo) {
		System.out.println("==========================> Mybatis2로 updateUsers() 처리");
		mybatis.update("UsersDAO.updateUsers", vo);
	};
	//회원 탈퇴
	public void deleteUsers(UsersVO vo) {
		System.out.println("==========================> Mybatis2로 deleteUsers() 처리");
		mybatis.delete("UsersDAO.deleteUsers", vo);
	};
	//회원정보 상세조회
	public UsersVO getUsers(UsersVO vo) {
		System.out.println("==========================> Mybatis2로 getUsers() 처리");
		return mybatis.selectOne("UsersDAO.getUsers", vo);
	}
	//회원목록 전체조회
	public List<UsersVO> getUsersList(){
		System.out.println("==========================> Mybatis2로 getUsersList() 처리");
		return mybatis.selectList("UsersDAO.getUsersList");
	}
	public UsersVO getUserOne(UsersVO vo) {
		System.out.println("UsersDAO : " + vo);
		return mybatis.selectOne("UsersDAO.getUserOne");
	}
	
}
