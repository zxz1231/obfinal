package com.ob.view.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ob.biz.service.UsersService;
import com.ob.biz.vo.UsersVO;

@Controller
public class MypageController {
	private UsersService usersService;

	@RequestMapping(value="/mypage.do", method= {RequestMethod.POST, RequestMethod.GET})
	public String mypage(Model model) {
		
		return "/views/mypage/myReservation.jsp";
	}
	
	@RequestMapping(value="/myReservation.do", method= {RequestMethod.POST, RequestMethod.GET})
	public String myReservation(Model model) {
		
		return "/views/mypage/myReservation.jsp";
	}
	
	@RequestMapping(value="/updateUsersGo.do", method= {RequestMethod.POST, RequestMethod.GET})
	public String updateUsersGo() {
		return "/views/mypage/updateUsers.jsp";
	}
	
	@RequestMapping(value="/updateUsers.do", method= RequestMethod.POST)
	public String updateUsers(UsersVO uvo, Model model, HttpSession session) {
		System.out.println("updateUsers실행");
		System.out.println("uvo : " + uvo);
//		UsersVO uvoOri = (UsersVO)session.getAttribute("Logininformation");
//		System.out.println("uvoOri : " + uvoOri);
//		uvo.setU_id(uvoOri.getU_id());
//		uvo.setGrade(uvoOri.getGrade());
//		uvo.setId(uvoOri.getId());
//		uvo.setVotedmovie(uvoOri.getVotedmovie());
//		
//		System.out.println("uvo' : " + uvo);
		session.invalidate();

		usersService.updateUsers(uvo);
		
		session.setAttribute("Logininformation", uvo);
		
		model.addAttribute("result","success");
		
		return "/views/mypage/updateUsers.jsp";
	}
}
