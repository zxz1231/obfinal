package com.ob.view.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.ob.biz.service.MovieService;
import com.ob.biz.vo.MovieVO;
import com.ob.biz.vo.UsersVO;

@Controller
@SessionAttributes("movieOne")
public class AdminController {
	@Autowired
	private MovieService movieService;
	
	@RequestMapping(value = "/admin_Main.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String GoAdminIndexPage(UsersVO vo, HttpSession session) {
		
		return "/views/admin/admin_Main.jsp";
	}
		@RequestMapping(value = "/admin_searchMovie.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String Admin_seachMovie(UsersVO vo ,Model model) {
			List<MovieVO> movieList = movieService.getMoiveList();
			
			model.addAttribute("movieList", movieList);
		
		return "/views/admin/admin_searchMovie.jsp";
	}
		
		@RequestMapping(value = "/admin_insertMovieWriter.do", method = {RequestMethod.GET, RequestMethod.POST})
		public String Admin_insertMovie(UsersVO vo ,Model model) {
			
			return "/views/admin/admin_insertMovieWriter.jsp";
		}

}
