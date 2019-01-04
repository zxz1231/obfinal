package com.ob.biz.service;

import java.util.List;

import com.ob.biz.vo.TheaterVO;

public interface TheaterService {
	
	//극장 목록 전체 조회
	List<TheaterVO> getTheaterList();
	
	//극장 입력
	int insertTheater(TheaterVO vo);


}
