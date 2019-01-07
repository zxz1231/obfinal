package com.ob.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ob.biz.dao.TheaterDAO;
import com.ob.biz.service.TheaterService;
import com.ob.biz.vo.MovieVO;
import com.ob.biz.vo.TheaterVO;

@Service("theaterService")
public class TheaterServiceImpl implements TheaterService{
	
	@Autowired
	private TheaterDAO theaterDAO;
	
	//극장 전체조회
	@Override
	public List<TheaterVO> getTheaterList() {
		return theaterDAO.getTheaterList();
	}
	
	//극장 상세조회
	@Override
	public TheaterVO getTheaterOne(TheaterVO vo) {
		return theaterDAO.getTheaterOne(vo);
	}
	
	//선택영화 극장 조회
	@Override
	public List<MovieVO> getTheater_movieList(int m_id) {
		return theaterDAO.getTheater_movieList(m_id);
	}

	

}
