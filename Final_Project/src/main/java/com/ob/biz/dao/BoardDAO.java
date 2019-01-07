package com.ob.biz.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ob.biz.vo.BoardVO;

@Repository // 이름을 지정해주지 않으면 BoardDAO클래스 이름 첫글자 소문자로
public class BoardDAO {
	@Autowired
	private SqlSessionTemplate mybatis;

	// 게시글 상세조회
	public BoardVO getBoard(BoardVO vo) {
		System.out.println("==========================> Mybatis2로 getBoard() 처리");
		return mybatis.selectOne("BoardDAO.getBoard", vo);
	}

	// 게시글 전체조회
	public List<BoardVO> getBoardList(BoardVO vo) {
		System.out.println("==========================> Mybatis2로 getBoardList() 처리");
		return mybatis.selectList("BoardDAO.getBoardList", vo);
	}

	// 게시글 입력
	public void insertBoard(BoardVO vo) {
		System.out.println("==========================> Mybatis2로 insertBoard() 처리");
		mybatis.insert("BoardDAO.insertBoard", vo);

	}
	
	//게시글 수정
	public void updateBoard(BoardVO vo) {
		System.out.println("==========================> Mybatis2로 updateBoard() 처리");
		mybatis.insert("BoardDAO.updateBoard", vo);

	}

	public void deleteBoard(BoardVO vo) {
		System.out.println("==========================> Mybatis2로 deleteBoard() 처리");
		mybatis.insert("BoardDAO.deleteBoard", vo);

	}

}
