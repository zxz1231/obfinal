package com.ob.view.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ob.biz.service.UsersService;
import com.ob.biz.vo.MovieVO;
import com.ob.biz.vo.UsersVO;

@Controller
public class LoginController {
	@Autowired
	private UsersService usersService;

	@RequestMapping(value = "/logIN.do", method = RequestMethod.POST)
	public String loginIN(UsersVO vo, HttpSession session) {
		// System.out.println("입력받은 : 아이디" + vo);
		UsersVO login = usersService.getUsers(vo);
		if (login != null) {
			session.setAttribute("Logininformation", login);
			// System.out.println("[로그]:로그인 성공후 메인페이지로 전환");
			// System.out.println("[로그]:로그인 성공후 vo 확인: " + login);

			return "/mainGO.do";
		} else {
			System.out.println("로그인 실패");
			return "/mainGO.do";
		}
	}

	@RequestMapping(value = "/logIN.do", method = RequestMethod.GET)
	public String loginINget(UsersVO vo, HttpSession session) {
		// System.out.println("입력받은 : 아이디" + vo);
		UsersVO login = usersService.getUsers(vo);
		if (login != null) {
			session.setAttribute("Logininformation", login);
			// System.out.println("[로그]:로그인 성공후 메인페이지로 전환");
			// System.out.println("[로그]:로그인 성공후 vo 확인: " + login);

			return "/mainGO.do";
		} else {
			System.out.println("로그인 실패");
			return "/mainGO.do";
		}
	}

	@RequestMapping(value = "/logOUT.do", method = RequestMethod.GET)
	public String loginOUT(UsersVO vo, HttpSession session) {
		System.out.println(">>> 로그아웃 요청 처리(logout)");
		System.out.println("session" + session);
		session.invalidate();
		return "redirect: /mainGO.do";
	}

	@RequestMapping(value = "/loginchk.do", method = RequestMethod.POST)
	public @ResponseBody String loginCHK(UsersVO vo, HttpSession session) {
		System.out.println("넘어온 데이터" + vo);
		UsersVO login = usersService.getUsers(vo);
		if (login != null) {
			session.setAttribute("Logininformation", login);
			// System.out.println("[로그]:로그인 성공후 메인페이지로 전환");
			// System.out.println("[로그]:로그인 성공후 vo 확인: " + login);
			return "success";
		} else {
			return "fail";
		}
	}

	/// 단순 ID, PW 찾기 페이지로 이동
	@RequestMapping(value = "/findIDPW.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String findIDPW() {

		return "/views/login/find_id_pw.jsp";
	}

	@RequestMapping(value = "/findIDchk.do", method = RequestMethod.POST)
	public @ResponseBody String findIDchk(UsersVO vo, HttpSession session) {
		System.out.println("넘어온 데이터" + vo);
		String getfindID = usersService.findIDchk(vo);
		System.out.println("짠 : " +getfindID);
		
		if(getfindID != null) {
			return getfindID;
			}
		else {
			return "notfound";
		}
		
	
	}
}
