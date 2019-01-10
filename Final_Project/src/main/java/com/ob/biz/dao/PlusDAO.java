package com.ob.biz.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ob.biz.vo.PlusVO;


	@Repository("plusDAO")
	public class PlusDAO {
		@Autowired
		private SqlSessionTemplate mybatis;
		
		public List<PlusVO> getPlusList() {
			return mybatis.selectList("PlusDAO.getPlusALl");
		}

		
}