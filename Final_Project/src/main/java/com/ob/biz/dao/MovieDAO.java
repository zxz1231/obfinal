package com.ob.biz.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ob.biz.vo.MovieVO;

@Repository("movieDAO")
public class MovieDAO {
	@Autowired
	private SqlSessionTemplate mybatis;

	public void insertMovie(MovieVO vo) {
		mybatis.insert("MovieDAO.insertMovie", vo);
	}

	public void updateMovie(MovieVO vo) {
		mybatis.insert("MovieDAO.updateMovie", vo);
	}

	public void deleteMovie(MovieVO vo) {
		mybatis.delete("MovieDAO.deleteMovie", vo);
	}

	public MovieVO getMovie(MovieVO vo) {
		return mybatis.selectOne("MovieDAO.getMovie", vo);
	}

	public List<MovieVO> getMovieList() {
		return mybatis.selectList("MovieDAO.getMovieList");
	}

	public List<MovieVO> getMovieGnr() {
		// TODO Auto-generated method stub
		return mybatis.selectList("MovieDAO.getMovieGnr");
	}

}