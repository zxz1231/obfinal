package com.ob.biz.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ob.biz.vo.UserVO;

@Repository("userDAO") // 이름을 지정해주지 않으면클래스 이름 첫글자 소문자로
public class UserDAO {
	@Autowired
	private SqlSessionTemplate mybatis;

	// 게시글 상세조회
	public UserVO getUser(UserVO vo) {
		System.out.println("==========================> Mybatis2로 getBoard() 처리");
		return mybatis.selectOne("UserDAO.getUser", vo);
	}
}
