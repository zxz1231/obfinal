package com.ob.biz.service;

import java.util.List;

import com.ob.biz.vo.ScheduleVO;

public interface ScheduleService {
	
	//시간조회
	List<ScheduleVO> getSchList(ScheduleVO scheduleVO);
	
	//상세조회
	ScheduleVO getSchOne(ScheduleVO scheduleVO);
	
	//아이디 조회
	ScheduleVO getSchId(ScheduleVO scheduleVO);
	
	//스케쥴 입력
	
	// 상영관 입력
	int insertSchedule(ScheduleVO vo);
	
	List<ScheduleVO> getTIME(ScheduleVO vo);
}
