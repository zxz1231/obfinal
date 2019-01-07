package com.ob.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ob.biz.dao.MovieDAO;
import com.ob.biz.service.MovieService;
import com.ob.biz.vo.MovieVO;

//@Service : @Component를 상속받아 만든 비즈니스 로직처리 서비스 영역에 사용
@Service("movieService")
public class MovieServiceImpl implements MovieService {

	@Autowired
	private MovieDAO movieDAO;

	@Override
	public void insertMovie(MovieVO vo) {
		movieDAO.insertMovie(vo);
	}

	@Override
	public void updateMovie(MovieVO vo) {
		movieDAO.updateMovie(vo);
	}

	@Override
	public void deleteMovie(MovieVO vo) {
		movieDAO.deleteMovie(vo);
	}

	@Override
	public MovieVO getMovie(MovieVO vo) {

		return movieDAO.getMovie(vo);
	}

	@Override
	public List<MovieVO> getMovieList() {
		// TODO Auto-generated method stub
		return movieDAO.getMovieList();
	}

	@Override
	public List<MovieVO> getMovieGnr() {
		return movieDAO.getMovieGnr();
	}
	
    @Override
    public MovieVO getMovieOne(MovieVO vo) {
       return movieDAO.getMovieOne(vo);
    }
}