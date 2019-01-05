package com.ob.biz.service;

import java.util.List;

import com.ob.biz.vo.TheaterVO;

public interface TheaterService {
	
	//극장 목록 전체 조회
	List<TheaterVO> getTheaterList();
	
	//극장 입력
	int insertTheater(TheaterVO vo);
	
	//극장 상세 조회
	TheaterVO getTheater(TheaterVO vo);
	
	//극장 수정
	void upateTheater(TheaterVO vo);
	
	//극장 삭제
	void deleteTheater(TheaterVO vo);
	


}
