package com.ob.biz.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ob.biz.vo.MovieVO;
import com.ob.biz.vo.TheaterVO;

@Repository("theaterDAO")
public class TheaterDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	//극장 전체조회
	public List<TheaterVO> getTheaterList() {
		return mybatis.selectList("TheaterDAO.getTheaterList");
	}
	
	//극장 상세조회
	public TheaterVO getTheaterOne(TheaterVO vo) {
		return mybatis.selectOne("TheaterDAO.getTheaterOne", vo);
	}
	
	//해당영화 극장 조회
	public List<MovieVO> getTheater_movieList(int m_id) {
		return mybatis.selectList("TheaterDAO.getTheater_movieList",m_id);
		
	}

}
