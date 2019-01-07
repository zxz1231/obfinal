package com.ob.view.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
//"Logininformation"라는 이름의 Model이 있으면 session에 저장
@SessionAttributes("Logininformation")
public class PageChangeController {
	
	
	@RequestMapping(value = "/mainGO.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String mainGO() {
		return "/views/main/main.jsp";
	}
	@RequestMapping(value = "/joinUS.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String joinUS() {
		return "/views/joinus/joinus.jsp";
	}
	
}
