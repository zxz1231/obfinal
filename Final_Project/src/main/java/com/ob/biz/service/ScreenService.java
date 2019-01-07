package com.ob.biz.service;

import java.util.List;

import com.ob.biz.vo.ScreenVO;

public interface ScreenService {
	
	//상영관 전체 조회
	List<ScreenVO> getScreenList();
	
	//상영관 하나 조회
	ScreenVO getScrOne(ScreenVO screenVO);
	
}
