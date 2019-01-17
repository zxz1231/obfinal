package com.ob.view.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ob.biz.service.UsersService;
import com.ob.biz.vo.Pay_infoVO;
import com.ob.biz.vo.ReservationVO;
import com.ob.biz.vo.UsersVO;

@Controller
public class PayControllerTest {
	@Autowired
	private UsersService usersService;
	
	@RequestMapping("payTest.do")
	public String pay(Model model,HttpServletRequest request, HttpSession session,UsersVO usersVO, Pay_infoVO pay_info) {

		session.setAttribute("pay_info", pay_info);
//		model.addAttribute("pay_info", pay_info);
		
		List<ReservationVO> reservationList = (List) session.getAttribute("reservationList");
		
		ReservationVO reservationVO = reservationList.get(0);
		
		usersVO.setU_id(reservationVO.getU_id());
		
//		System.out.println(usersService.getUserOne(usersVO));

		usersVO = usersService.getUserOne(usersVO);
		
		session.setAttribute("usersVO", usersVO);
//		model.addAttribute("usersVO", usersVO);
		
		int totPrice = 0;
		for (ReservationVO reservationOne : reservationList) {
			totPrice += Integer.parseInt(reservationOne.getPrice());
		}
		
		session.setAttribute("totPrice", totPrice);
//		model.addAttribute("price", totPrice);
		session.setAttribute("reservationList", reservationList);
//		model.addAttribute("usersVO", usersVO);
		
		return "/views/reservation/payOk.jsp";
	}

}
