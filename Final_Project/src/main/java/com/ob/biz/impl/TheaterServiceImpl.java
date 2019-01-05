package com.ob.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ob.biz.dao.TheaterDAO;
import com.ob.biz.service.TheaterService;
import com.ob.biz.vo.TheaterVO;

//@Service : @Component를 상속받아 만든 비즈니스 로직처리 서비스 영역에 사용
@Service("theaterService")
public class TheaterServiceImpl implements TheaterService {

	@Autowired
	private TheaterDAO theaterDAO;

	@Override
	public List<TheaterVO> getTheaterList() {
		return theaterDAO.getTheaterList();
	}

	@Override
	public int insertTheater(TheaterVO vo) {
		
		return theaterDAO.insertTheater(vo);
	}

	@Override
	public TheaterVO getTheater(TheaterVO vo) {
		return theaterDAO.getTheater(vo);
	}

	@Override
	public void upateTheater(TheaterVO vo) {
		theaterDAO.updateTheater(vo);
		
	}

	@Override
	public void deleteTheater(TheaterVO vo) {
		theaterDAO.deleteTheater(vo);
		
	}

}
