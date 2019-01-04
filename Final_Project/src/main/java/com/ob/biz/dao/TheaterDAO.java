package com.ob.biz.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ob.biz.vo.TheaterVO;

@Repository("theaterDAO")
public class TheaterDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public List<TheaterVO> getTheaterList(){
		return mybatis.selectList("TheaterDAO.getTheaterList");
		
	}
	
	public int insertTheater(TheaterVO vo) {
		return mybatis.insert("TheaterDAO.insertTheater", vo);
	}
	
	

}
