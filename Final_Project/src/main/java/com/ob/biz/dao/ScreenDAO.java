package com.ob.biz.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ob.biz.vo.ScreenVO;


	@Repository("screenDAO")
	public class ScreenDAO {
		@Autowired
		private SqlSessionTemplate mybatis;
		
		public List<ScreenVO> getScreenList() {
			return mybatis.selectList("ScreenDAO.getScreenList");
		}

		public ScreenVO getScrOne(ScreenVO screenVO) {
			return mybatis.selectOne("ScreenDAO.getScrOne",screenVO);
		}

		public void updateScreen(ScreenVO vo) {
			mybatis.insert("ScreenDAO.updateScreen", vo);
			
		}
		
		
}