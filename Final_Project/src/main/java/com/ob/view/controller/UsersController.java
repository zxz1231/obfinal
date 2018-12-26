package com.ob.view.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ob.biz.dao.UsersDAO;
import com.ob.biz.service.UsersService;
import com.ob.biz.vo.UsersVO;

@Controller
public class UsersController {
	@Autowired
	private UsersService usersService;
	
	@RequestMapping(value="/login.do", method=RequestMethod.POST) 
	public String login(UsersVO vo, UsersDAO usersDAO,
			HttpSession session) {
		System.out.println(">> 로그인 처리(UsersVO,UsersDAO)");
		UsersVO user = usersService.getUsers(vo);
		if (user != null) {
			session.setAttribute("userName", user.getName());
			return "/getBoardList.do";
		} else {
			return "/views/login.jsp";
		}
	}
	//@ModelAttribute : 모델의 속성값으로 지정(속성명 별도 지정가능)
	//별도 이름 지정을 안한 경우
	//public String loginView(@ModelAttribute UserVO vo) {
	//속성명 : userVO - 타입의 첫글자를 소문자로 변경한 이름이 사용됨
	@RequestMapping(value="/login.do", method=RequestMethod.GET)
	public String loginView(@ModelAttribute("users") UsersVO vo) {
		System.out.println(">> 로그인 화면으로 이동(loginView)");
		vo.setId("test");
		vo.setPassword("test");

		return "/views/login.jsp";
	}
	
//	public String loginView(UserVO vo, Model model) {
//		System.out.println(">> 로그인 화면으로 이동(loginView)");
//		vo.setId("test");
//		vo.setPassword("test");
//		model.addAttribute("user", vo);
//		return "login.jsp";
//	}
	
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		System.out.println(">>> 로그아웃 요청 처리(logout)");
		session.invalidate();
		return "views/login.jsp";
	}
	
	
	@RequestMapping(value="/join.do", method=RequestMethod.GET)
	public String join(@ModelAttribute("users") UsersVO vo) {
		return "views/join.jsp";
	}
	
}
