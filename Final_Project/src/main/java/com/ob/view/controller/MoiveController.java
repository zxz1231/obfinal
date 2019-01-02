package com.ob.view.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ob.biz.service.MovieService;
import com.ob.biz.vo.MovieVO;

@Controller
public class MoiveController {

	@Autowired
	private MovieService movieService;
	
	
	
	
	@RequestMapping(value = "/checkMovieList.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String checkMovieList(MovieVO vo, Model model) {
		System.out.println(">> 영화 리스트 보기");
		List<MovieVO> movieList = movieService.getMoiveList();
		List<MovieVO> gnrList = movieService.getMovieGnr();
		
		// Model 형식으로 저장해서 DispatcherServervlet에 전달
		model.addAttribute("movieList", movieList);
		model.addAttribute("gnrList", gnrList);
		

		return "/views/movie/nowmoive.jsp";
	}

}
