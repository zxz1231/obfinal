package com.ob.biz.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ob.biz.vo.UsersVO;

@Repository("userDAO") // 이름을 지정해주지 않으면클래스 이름 첫글자 소문자로
public class UserDAO {
	@Autowired
	private SqlSessionTemplate mybatis;

	//회원 등록
	public void insertUser(UsersVO vo) {
		System.out.println("==========================> Mybatis2로 insertUser() 처리");
		mybatis.insert("UserDAO.insertUser", vo);
	};
	//회원정보 수정
	public void updateUser(UsersVO vo) {
		System.out.println("==========================> Mybatis2로 updateUser() 처리");
		mybatis.update("UserDAO.updateUser", vo);
	};
	//회원 탈퇴
	public void deleteUser(UsersVO vo) {
		System.out.println("==========================> Mybatis2로 deleteUser() 처리");
		mybatis.delete("UserDAO.deleteUser", vo);
	};
	//회원정보 상세조회
	public UsersVO getUser(UsersVO vo) {
		System.out.println("==========================> Mybatis2로 getUser() 처리");
		return mybatis.selectOne("UserDAO.getUser", vo);
	}
	//회원목록 전체조회
	public List<UsersVO> getUserList(){
		System.out.println("==========================> Mybatis2로 getUserList() 처리");
		return mybatis.selectList("UserDAO.getUserList");
	};
	
}
