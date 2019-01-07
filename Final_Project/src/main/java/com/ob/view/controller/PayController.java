package com.ob.view.controller;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ob.biz.service.ReservationService;
import com.ob.biz.service.ScheduleService;
import com.ob.biz.vo.ReservationVO;
import com.ob.biz.vo.ScheduleVO;

@Controller
public class PayController {
	@Autowired
	private ReservationService reservationService;
	@Autowired
	private ScheduleService scheduleService;
	
	@RequestMapping("pay.do")
	public String pay(ScheduleVO scheduleVO,ReservationVO reservationVO
			,@RequestParam("check_seat") String rowCol, HttpServletRequest request
			,HttpSession session) {
		
		String seats[] = request.getParameterValues("check_seat");
		
		System.out.println(scheduleVO);
		
		String scheduleVODate = scheduleVO.getDate();
		
		scheduleVO = scheduleService.getSchOne(scheduleVO);
		
		scheduleVO.setDate(scheduleVODate);
		
		int totPrice = 0;
		
		List<ReservationVO> reservationList = new ArrayList<>();
		for(String seat: seats) {
			totPrice += Integer.parseInt(scheduleVO.getPrice());
			
			System.out.println("seat:" + seat);
			System.out.println(seat.substring(0,1));
			System.out.println(seat.substring(1,2));
			
			//임시로 아이디 지정
			reservationVO.setU_id(11);
			
			reservationVO.setSeat_row(Integer.parseInt(seat.substring(0,1)));
			reservationVO.setSeat_col(Integer.parseInt(seat.substring(1,2)));
			reservationVO.setSch_id(scheduleService.getSchId(scheduleVO).getSch_id());
			
			//String to Date
			Date date = Date.valueOf(scheduleVO.getDate());
			reservationVO.setR_date(date);
			
			System.out.println("reservationVO : " + reservationVO);
			reservationList.add(reservationVO);
			System.out.println("reservationList : " + reservationList);
		}
		System.out.println(totPrice);
		System.out.println("reservationList : " + reservationList);
		
		session.setAttribute("totPrice", totPrice);
		session.setAttribute("reservationList", reservationList);
		
		
		return "/views/pay.jsp";
	}

}



