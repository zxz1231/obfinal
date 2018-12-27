package com.ob.view.naver;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.scribejava.core.model.OAuth2AccessToken;
import com.ob.biz.vo.UsersVO;

import jdk.nashorn.internal.ir.RuntimeNode.Request;

/**
 * Handles requests for the application home page.
 */
@Controller
public class NaverLoginController {

	/* NaverLoginBO */
	private NaverLoginBO naverLoginBO;
	private String apiResult = null;
	
	@Autowired
	private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
		this.naverLoginBO = naverLoginBO;
	}

	/*//로그인 첫 화면 요청 메소드
	@RequestMapping(value = "/navergo.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String login(Model model, HttpSession session) {		
		String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);		
		System.out.println("네이버:" + naverAuthUrl);		
		//네이버 
		model.addAttribute("url", naverAuthUrl);
		// 생성한 인증 URL을 View로 전달 
		return "/views/login/login_naver.jsp";
	}
*/
	//로그인 첫 화면 요청 메소드
		@RequestMapping(value = "/navergo.do", method = { RequestMethod.GET, RequestMethod.POST })
		public String login(Model model, HttpSession session) {		
			String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);		
			System.out.println("네이버:" + naverAuthUrl);		
			//네이버 
			model.addAttribute("url", naverAuthUrl);
			// 생성한 인증 URL을 View로 전달 
			return "redirect:"+naverAuthUrl;
		}


	//네이버 로그인 성공시 callback호출 메소드
	@RequestMapping(value = "callback.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String callback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session)
			throws IOException {
		System.out.println("------------------------------");
		System.out.println("여기는 callback받은 후");		
		System.out.println("callback 받고 code 값"+code);
		System.out.println("callback 받고 state 값"+state);
		System.out.println("callback 받고 session 값"+session);
		System.out.println("------------------------------");
		OAuth2AccessToken oauthToken;
        oauthToken = naverLoginBO.getAccessToken(session, code, state);
        
	    apiResult = naverLoginBO.getUserProfile(oauthToken);
	    
	    JsonStringParse jsonparse = new JsonStringParse();	    

	    JSONObject jsonobj = jsonparse.stringToJson(apiResult, "response");
		String sex = jsonparse.JsonToString(jsonobj, "gender");
		String snsId = jsonparse.JsonToString(jsonobj, "id");
		String name = jsonparse.JsonToString(jsonobj, "name");
		String nickname = jsonparse.JsonToString(jsonobj, "nickname");

		UsersVO vo = new UsersVO();
		vo.setId(snsId);
		vo.setName(name);
		vo.setGender(sex);
		vo.setNickname(nickname);
		System.out.println(vo);
		/*
		try {
			vo = service.naverLogin(vo);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    */
	    
		//model.addAttribute("result", apiResult);
		session.setAttribute("result", apiResult);

        /* 네이버 로그인 성공 페이지 View 호출 */
		return "/views/login/login_success.jsp";
	}
}

