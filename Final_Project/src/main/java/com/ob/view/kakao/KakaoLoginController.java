package com.ob.view.kakao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.databind.JsonNode;
import com.ob.biz.vo.UsersVO;

@Controller
public class KakaoLoginController {
	
	@RequestMapping(value = "/kakaologin.do" , produces = "application/json", method = {RequestMethod.GET, RequestMethod.POST})
	public String kakaoLogin(@RequestParam("code") String code , HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception{
 System.out.println("zz");
	  JsonNode token = KakaoLogin.getAccessToken(code);

	  JsonNode profile = KakaoLogin.getKakaoUserInfo(token.path("access_token").toString());
	  System.out.println(profile);
	  UsersVO vo = KakaoLogin.changeData(profile);
	  vo.setId("k"+vo.getId());

	  System.out.println(session);
	  session.setAttribute("login", vo);
	  System.out.println(vo.toString());	  

	 // vo = service.kakaoLogin(vo);  
	  return "views/login/kakaologin_ok.jsp";
	}

}
