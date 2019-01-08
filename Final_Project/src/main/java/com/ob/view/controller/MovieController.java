package com.ob.view.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ob.biz.service.MovieService;
import com.ob.biz.service.ScreenService;
import com.ob.biz.service.TheaterService;
import com.ob.biz.vo.MovieVO;

@Controller
public class MovieController {
	@Autowired
	private MovieService movieService;
	@Autowired
	private TheaterService theaterService;
	@Autowired
	private ScreenService screenService; 
	
	@RequestMapping("movieDetail.do")
	public String movieDetail(MovieVO vo, Model model) {
		
		model.addAttribute("movieOne",movieService.getMovieOne(vo));
		
		System.out.println("movieService.getMovieOne(vo) : " + movieService.getMovieOne(vo));
		
		return "/views/reservation/MovieDetail.jsp";
	}
	
	@RequestMapping("movieRes.do")
	public String movieRes(MovieVO movieVO, Model model, HttpServletRequest request) {
		
		model.addAttribute("movieRes",movieService.getMovieOne(movieVO));
		
		//영화 전체 조회
		model.addAttribute("movieList",movieService.getMovieList());
		
		//선택한 영화가 상영되는 극장 조회
		model.addAttribute("theater", theaterService.getTheater_movieList(movieVO.getM_id()));
		
		model.addAttribute("screen", screenService.getScreenList());

		return "/views/reservation/MovieRes.jsp";
	}
	
	@RequestMapping("movie_theater.do")
	@ResponseBody
	public List<MovieVO> theaterList(MovieVO movieVO) {
		
		//선택한 영화가 상영되는 극장 조회
		List<MovieVO> theaterList = theaterService.getTheater_movieList(movieVO.getM_id());
		
		System.out.println("theaterList : " + theaterList);
		

		return theaterList;

	}

	@RequestMapping(value = "/checkMovieList.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String checkMovieList(MovieVO vo, Model model) {
		System.out.println(">> 영화 리스트 보기");
		List<MovieVO> movieList = movieService.getMovieList();
		List<MovieVO> gnrList = movieService.getMovieGnr();
		
		// Model 형식으로 저장해서 DispatcherServervlet에 전달
		model.addAttribute("movieList", movieList);
		model.addAttribute("gnrList", gnrList);
		

		return "/views/movie/nowmoive.jsp";
	}
}












