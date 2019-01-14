package com.ob.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ob.biz.dao.ScheduleDAO;
import com.ob.biz.service.ScheduleService;
import com.ob.biz.vo.ScheduleVO;
import com.ob.biz.vo.ScreenVO;

@Service("scheduleService")
public class ScheduleServiceImpl implements ScheduleService{
	
	@Autowired
	private ScheduleDAO scheduleDAO;

	@Override
	public List<ScheduleVO> getSchList(ScheduleVO scheduleVO) {
		return scheduleDAO.getSchList(scheduleVO);
	}

	@Override
	public ScheduleVO getSchId(ScheduleVO scheduleVO) {
		return scheduleDAO.getSchId(scheduleVO);
	}

	@Override
	public ScheduleVO getSchOne(ScheduleVO scheduleVO) {
		return scheduleDAO.getSchOne(scheduleVO);
	}

	@Override
	public int insertSchedule(ScheduleVO vo) {
		return scheduleDAO.insertSchedule(vo);
	}

}
