package com.ob.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ob.biz.dao.ScreenDAO;
import com.ob.biz.service.ScreenService;
import com.ob.biz.vo.ScreenVO;

@Service("screenService")
public class ScreenServiceImpl implements ScreenService {
	
	@Autowired
	private ScreenDAO screenDAO;
	
	@Override
	public List<ScreenVO> getScreenList() {
		return screenDAO.getScreenList();
	}

	@Override
	public ScreenVO getScrOne(ScreenVO screenVO) {
		return screenDAO.getScrOne(screenVO);
	}

	@Override
	public void upateScreen(ScreenVO vo) {
		screenDAO.updateScreen(vo);
		
	}



	

}
