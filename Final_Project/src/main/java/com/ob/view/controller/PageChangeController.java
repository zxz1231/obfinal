package com.ob.view.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.ob.biz.service.MovieService;

@Controller
//"Logininformation"라는 이름의 Model이 있으면 session에 저장
@SessionAttributes("Logininformation")
public class PageChangeController {
	@Autowired 
	private MovieService movieService;
	
	@RequestMapping(value = "/mainGO.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String mainGO(Model model,HttpServletRequest request) {
		model.addAttribute("movieListOnair",movieService.getMovieListOnair());
		
//		String pageType = request.getParameter("pageType");
//		if (pageType == "vote") {
//			return "/views/vote/getVoteList.jsp";
//		} else if (pageType == "MovieDetail") {
//			return "/views/reservation/movieDetail.jsp";
//		} else if (pageType == "nowmoive") {
//			return "/views/movie/nowmoive.jsp";
//		}else {
//			return "/views/main/main.jsp";
//		}
		return "/views/main/main.jsp";
	}
	@RequestMapping(value = "/joinUS.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String joinUS() {
		return "/views/joinus/joinus.jsp";
	}
	
	
}
