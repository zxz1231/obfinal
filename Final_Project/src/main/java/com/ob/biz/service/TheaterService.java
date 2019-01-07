package com.ob.biz.service;

import java.util.List;

import com.ob.biz.vo.MovieVO;
import com.ob.biz.vo.TheaterVO;

public interface TheaterService {
	
	//극장 전체 조회
	List<TheaterVO> getTheaterList();
	
	//극장 상세조회
	TheaterVO getTheaterOne(TheaterVO vo);
	
	//선택 영화 극장 조회
	List<MovieVO> getTheater_movieList(int m_id);
}
