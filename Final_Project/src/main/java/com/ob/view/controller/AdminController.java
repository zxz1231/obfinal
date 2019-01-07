package com.ob.view.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.ob.biz.service.MovieService;
import com.ob.biz.service.ScreenService;
import com.ob.biz.service.TheaterService;
import com.ob.biz.vo.MovieVO;
import com.ob.biz.vo.ScreenVO;
import com.ob.biz.vo.TheaterVO;

@Controller
//// 세션 어트리뷰트 사용해보고 싶었음 . 극장만 해봄
//@SessionAttributes("theaterOne")
public class AdminController {
	@Autowired
	private MovieService movieService;
	@Autowired
	private TheaterService theaterService;
	@Autowired
	private ScreenService screenService;

	// --------------------> 공통(메인페이지) ----------------- 시작
	@RequestMapping(value = "/admin_Main.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String GoAdminIndexPage(MovieVO vo, HttpSession session) {

		return "/views/admin/admin_Main.jsp";
	}
	// --------------------> 공통(메인페이지) ----------------- 끝

	// --------------------> 영화----------------- 시작
	@RequestMapping(value = "/admin_searchMovie.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String Admin_searchMovie(MovieVO vo, Model model) {
		List<MovieVO> movieList = movieService.getMovieList();

		model.addAttribute("movieList", movieList);
		model.addAttribute("password", "1234"); // 음.
		return "/views/admin/admin_searchMovie.jsp";
	}

	// 단순 페이지 이동
	@RequestMapping(value = "/admin_insertMovieWriter.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String Admin_insertMovieWriter(MovieVO vo, Model model) {

		return "/views/admin/admin_insertMovieWriter.jsp";
	}

	@RequestMapping(value = "/admin_insertMovie.do", method = RequestMethod.POST)
	public String Admin_insertMovie(MovieVO vo) throws IllegalStateException, IOException {
		System.out.println(">>> 영화 등록 요청 처리(admin_insertMovie.do)");
		System.out.println("넘어온 vo : " + vo);
		// 파일 업로드 처리
		// MultipartFile 인터페이스 주요 메소드
		// String getOriginalFilename() : 업로드한 파일명
		// void transferTo(File destFile) : 업로드한 파일을 destFile에 저장
		// boolean isEmpty() : 업로드한 파일의 존재여부(없으면 true 리턴)

		MultipartFile posterFile = vo.getPoster_file();
		if (!posterFile.isEmpty()) {
			int random = (int) (Math.random() * 10000) + 1;
			String to = Integer.toString(random);
			String fileName = posterFile.getOriginalFilename();
			posterFile.transferTo(new File("C:/gitobfinal/obfinal/Final_Project/src/main/webapp/resources/movieimg/"
					+ "(" + to + ")" + fileName));
			vo.setPoster(("(" + to + ")" + fileName));
		} else {
			if (vo.getPoster() == null)
				vo.setPoster("");
		}
		MultipartFile img1File = vo.getImg1_file();
		if (!img1File.isEmpty()) {
			int random = (int) (Math.random() * 10000) + 1;
			String to = Integer.toString(random);
			String fileName = img1File.getOriginalFilename();
			img1File.transferTo(new File("C:/gitobfinal/obfinal/Final_Project/src/main/webapp/resources/movieimg/" + "("
					+ to + ")" + fileName));
			vo.setImg1(("(" + to + ")" + fileName));
		} else {
			if (vo.getImg1() == null)
				vo.setImg1("");
		}
		MultipartFile img2File = vo.getImg2_file();
		if (!img2File.isEmpty()) {
			int random = (int) (Math.random() * 10000) + 1;
			String to = Integer.toString(random);
			String fileName = img2File.getOriginalFilename();
			img2File.transferTo(new File("C:/gitobfinal/obfinal/Final_Project/src/main/webapp/resources/movieimg/" + "("
					+ to + ")" + fileName));
			vo.setImg2(("(" + to + ")" + fileName));
		} else {
			if (vo.getImg2() == null)
				vo.setImg2("");
		}
		MultipartFile img3File = vo.getImg3_file();
		if (!img3File.isEmpty()) {
			int random = (int) (Math.random() * 10000) + 1;
			String to = Integer.toString(random);
			String fileName = img3File.getOriginalFilename();
			img3File.transferTo(new File("C:/gitobfinal/obfinal/Final_Project/src/main/webapp/resources/movieimg/" + "("
					+ to + ")" + fileName));
			vo.setImg3(("(" + to + ")" + fileName));
		} else {
			if (vo.getImg3() == null)
				vo.setImg3("");
		}
		MultipartFile img4File = vo.getImg4_file();
		if (!img4File.isEmpty()) {
			int random = (int) (Math.random() * 10000) + 1;
			String to = Integer.toString(random);
			String fileName = img4File.getOriginalFilename();
			img4File.transferTo(new File("C:/gitobfinal/obfinal/Final_Project/src/main/webapp/resources/movieimg/" + "("
					+ to + ")" + fileName));
			vo.setImg4(("(" + to + ")" + fileName));
		} else {
			if (vo.getImg4() == null)
				vo.setImg4("");
		}
		MultipartFile img5File = vo.getImg5_file();
		if (!img5File.isEmpty()) {
			int random = (int) (Math.random() * 10000) + 1;
			String to = Integer.toString(random);
			String fileName = img5File.getOriginalFilename();
			img5File.transferTo(new File("C:/gitobfinal/obfinal/Final_Project/src/main/webapp/resources/movieimg/" + "("
					+ to + ")" + fileName));
			vo.setImg5(("(" + to + ")" + fileName));
		} else {
			if (vo.getImg5() == null)
				vo.setImg5("");
		}

		movieService.insertMovie(vo);
		return "/admin_searchMovie.do";
	}

	@RequestMapping(value = "/admin_deleteMovie.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String Admin_deleteMovie(MovieVO vo, Model model) {
		System.out.println("요기까징");
		System.out.println("확인 vo : " + vo);
		movieService.deleteMovie(vo);

		model.addAttribute("result", "delete");

		return "/admin_searchMovie.do";
	}

	@RequestMapping(value = "/admin_getMovie.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String Admin_getMovie(MovieVO vo, Model model) {
		System.out.println("요기까징");
		System.out.println("확인 vo : " + vo);
		MovieVO movieOne = movieService.getMovie(vo);

		System.out.println("쓸 movieOne 확인 :" + movieOne);

		model.addAttribute("movieOne", movieOne);

		return "/views/admin/admin_detailMovie.jsp";
	}

	// 단순 페이지 이동
	@RequestMapping(value = "/admin_updateMovie.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String Admin_updateMovie(MovieVO vo, Model model) {
		MovieVO movieOne = movieService.getMovie(vo);
		model.addAttribute("movieOne", movieOne);

		return "/views/admin/admin_updateMovie.jsp";
	}

	@RequestMapping(value = "/admin_modifyMovie.do", method = RequestMethod.POST)
	public String Admin_modifyMovie(MovieVO vo, Model model) throws IllegalStateException, IOException {

		System.out.println(">>> --------------------------------------------- <<<<");
		System.out.println(">>> 영화 등록 요청 처리(/admin_modifyMovie.do)");
		System.out.println("넘어온 vo : " + vo);
		// 파일 업로드 처리
		// MultipartFile 인터페이스 주요 메소드
		// String getOriginalFilename() : 업로드한 파일명
		// void transferTo(File destFile) : 업로드한 파일을 destFile에 저장
		// boolean isEmpty() : 업로드한 파일의 존재여부(없으면 true 리턴)

		MultipartFile posterFile = vo.getPoster_file();
		if (!posterFile.isEmpty()) {
			int random = (int) (Math.random() * 10000) + 1;
			String to = Integer.toString(random);
			String fileName = posterFile.getOriginalFilename();
			posterFile.transferTo(new File("C:/gitobfinal/obfinal/Final_Project/src/main/webapp/resources/movieimg/"
					+ "(" + to + ")" + fileName));
			vo.setPoster(("(" + to + ")" + fileName));
		} else {
			if (vo.getPoster() == null)
				vo.setPoster("");
		}
		MultipartFile img1File = vo.getImg1_file();
		if (!img1File.isEmpty()) {
			int random = (int) (Math.random() * 10000) + 1;
			String to = Integer.toString(random);
			String fileName = img1File.getOriginalFilename();
			img1File.transferTo(new File("C:/gitobfinal/obfinal/Final_Project/src/main/webapp/resources/movieimg/" + "("
					+ to + ")" + fileName));
			vo.setImg1(("(" + to + ")" + fileName));
		} else {
			if (vo.getImg1() == null)
				vo.setImg1("");
		}
		MultipartFile img2File = vo.getImg2_file();
		if (!img2File.isEmpty()) {
			int random = (int) (Math.random() * 10000) + 1;
			String to = Integer.toString(random);
			String fileName = img2File.getOriginalFilename();
			img2File.transferTo(new File("C:/gitobfinal/obfinal/Final_Project/src/main/webapp/resources/movieimg/" + "("
					+ to + ")" + fileName));
			vo.setImg2(("(" + to + ")" + fileName));
		} else {
			if (vo.getImg2() == null)
				vo.setImg2("");
		}
		MultipartFile img3File = vo.getImg3_file();
		if (!img3File.isEmpty()) {
			int random = (int) (Math.random() * 10000) + 1;
			String to = Integer.toString(random);
			String fileName = img3File.getOriginalFilename();
			img3File.transferTo(new File("C:/gitobfinal/obfinal/Final_Project/src/main/webapp/resources/movieimg/" + "("
					+ to + ")" + fileName));
			vo.setImg3(("(" + to + ")" + fileName));
		} else {
			if (vo.getImg3() == null)
				vo.setImg3("");
		}
		MultipartFile img4File = vo.getImg4_file();
		if (!img4File.isEmpty()) {
			int random = (int) (Math.random() * 10000) + 1;
			String to = Integer.toString(random);
			String fileName = img4File.getOriginalFilename();
			img4File.transferTo(new File("C:/gitobfinal/obfinal/Final_Project/src/main/webapp/resources/movieimg/" + "("
					+ to + ")" + fileName));
			vo.setImg4(("(" + to + ")" + fileName));
		} else {
			if (vo.getImg4() == null)
				vo.setImg4("");
		}
		MultipartFile img5File = vo.getImg5_file();
		if (!img5File.isEmpty()) {
			int random = (int) (Math.random() * 10000) + 1;
			String to = Integer.toString(random);
			String fileName = img5File.getOriginalFilename();
			img5File.transferTo(new File("C:/gitobfinal/obfinal/Final_Project/src/main/webapp/resources/movieimg/" + "("
					+ to + ")" + fileName));
			vo.setImg5(("(" + to + ")" + fileName));
		} else {
			if (vo.getImg5() == null)
				vo.setImg5("");
		}

		System.out.println("확인 : " + vo);

		movieService.updateMovie(vo);
		model.addAttribute("result", "update");

		return "/admin_searchMovie.do";
	}
	// --------------------> 영화 ----------------- 끝

	// --------------------> 극장 ----------------- 시작
	@RequestMapping(value = "/admin_searchTheater.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String Admin_searchTheater(TheaterVO vo, Model model) {
		List<TheaterVO> theaterList = theaterService.getTheaterList();
		model.addAttribute("theaterList", theaterList);

		return "/views/admin/admin_searchTheater.jsp";
	}

	// 단순 페이지 이동
	@RequestMapping(value = "/admin_insertTheaterWriter.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String Admin_insertTheaterWriter(MovieVO vo, Model model) {

		return "/views/admin/admin_insertTheaterWriter.jsp";
	}

	@RequestMapping(value = "/admin_insertTheater.do", method = RequestMethod.POST)
	public String Admin_insertTheater(TheaterVO vo) throws IllegalStateException, IOException {
		System.out.println(">>> 극장 등록 요청 처리(admin_insertTheater.do)");
		System.out.println("넘어온 vo : " + vo);
		// 파일 업로드 처리
		// MultipartFile 인터페이스 주요 메소드
		// String getOriginalFilename() : 업로드한 파일명
		// void transferTo(File destFile) : 업로드한 파일을 destFile에 저장
		// boolean isEmpty() : 업로드한 파일의 존재여부(없으면 true 리턴)

		MultipartFile img1File = vo.getImg1_file();
		if (!img1File.isEmpty()) {
			int random = (int) (Math.random() * 10000) + 1;
			System.out.println(random);
			String to = Integer.toString(random);
			String fileName = img1File.getOriginalFilename();
			img1File.transferTo(new File("C:/gitobfinal/obfinal/Final_Project/src/main/webapp/resources/theaterimg/"
					+ "(" + to + ")" + fileName));
			vo.setImg1(("(" + to + ")" + fileName));
		} else {
			if (vo.getImg1() == null)
				vo.setImg1("");
		}
		MultipartFile img2File = vo.getImg2_file();
		if (!img2File.isEmpty()) {
			int random = (int) (Math.random() * 10000) + 1;
			System.out.println(random);
			String to = Integer.toString(random);
			String fileName = img2File.getOriginalFilename();
			img2File.transferTo(new File("C:/gitobfinal/obfinal/Final_Project/src/main/webapp/resources/theaterimg/"
					+ "(" + to + ")" + fileName));
			vo.setImg2(("(" + to + ")" + fileName));
		} else {
			if (vo.getImg2() == null)
				vo.setImg2("");
		}
		MultipartFile img3File = vo.getImg3_file();
		if (!img3File.isEmpty()) {
			int random = (int) (Math.random() * 10000) + 1;
			System.out.println(random);
			String to = Integer.toString(random);
			String fileName = img3File.getOriginalFilename();
			img3File.transferTo(new File("C:/gitobfinal/obfinal/Final_Project/src/main/webapp/resources/theaterimg/"
					+ "(" + to + ")" + fileName));
			vo.setImg3(("(" + to + ")" + fileName));
		} else {
			if (vo.getImg3() == null)
				vo.setImg3("");
		}
		MultipartFile img4File = vo.getImg4_file();
		if (!img4File.isEmpty()) {
			int random = (int) (Math.random() * 10000) + 1;
			System.out.println(random);
			String to = Integer.toString(random);
			String fileName = img4File.getOriginalFilename();
			img4File.transferTo(new File("C:/gitobfinal/obfinal/Final_Project/src/main/webapp/resources/theaterimg/"
					+ "(" + to + ")" + fileName));
			vo.setImg4(("(" + to + ")" + fileName));
		} else {
			if (vo.getImg4() == null)
				vo.setImg4("");
		}
		MultipartFile img5File = vo.getImg5_file();
		if (!img5File.isEmpty()) {
			int random = (int) (Math.random() * 10000) + 1;
			System.out.println(random);
			String to = Integer.toString(random);
			String fileName = img5File.getOriginalFilename();
			img5File.transferTo(new File("C:/gitobfinal/obfinal/Final_Project/src/main/webapp/resources/theaterimg/"
					+ "(" + to + ")" + fileName));
			vo.setImg5(("(" + to + ")" + fileName));
		} else {
			if (vo.getImg5() == null)
				vo.setImg5("");
		}

		int count = theaterService.insertTheater(vo);
		System.out.println(count + "건 정상 등록");

		return "redirect:/admin_searchTheater.do";
	}

	@RequestMapping(value = "/admin_getTheater.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String Admin_getTheater(TheaterVO vo, Model model) {
		System.out.println("요기까징");
		System.out.println("확인 vo : " + vo);
		TheaterVO theaterOne = theaterService.getTheater(vo);

		System.out.println("쓸 theaterOne 확인 :" + theaterOne);

		model.addAttribute("theaterOne", theaterOne);

		return "/views/admin/admin_detailTheater.jsp";
	}

	// 단순 페이지 이동
	@RequestMapping(value = "/admin_updateTheater.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String Admin_updateTheater(TheaterVO vo, Model model) {
		TheaterVO theaterOne = theaterService.getTheater(vo);

		model.addAttribute("theaterOne", theaterOne);

		return "/views/admin/admin_updateTheater.jsp";
	}

	@RequestMapping(value = "/admin_modifyTheater.do", method = RequestMethod.POST)
	public String Admin_modifyTheater(TheaterVO vo, Model model) throws IllegalStateException, IOException {
		System.out.println(">>> --------------------------------------------- <<<<");
		System.out.println(">>> 영화 등록 요청 처리(/admin_modifyTheater.do)");
		System.out.println("넘어온 vo : " + vo);
		// 파일 업로드 처리
		// MultipartFile 인터페이스 주요 메소드
		// String getOriginalFilename() : 업로드한 파일명
		// void transferTo(File destFile) : 업로드한 파일을 destFile에 저장
		// boolean isEmpty() : 업로드한 파일의 존재여부(없으면 true 리턴)

		MultipartFile img1File = vo.getImg1_file();
		if (!img1File.isEmpty()) {
			int random = (int) (Math.random() * 10000) + 1;
			String to = Integer.toString(random);
			String fileName = img1File.getOriginalFilename();
			img1File.transferTo(new File("C:/gitobfinal/obfinal/Final_Project/src/main/webapp/resources/theaterimg/"
					+ "(" + to + ")" + fileName));
			vo.setImg1(("(" + to + ")" + fileName));
		} else {
			if (vo.getImg1() == null)
				vo.setImg1("");
		}
		MultipartFile img2File = vo.getImg2_file();
		if (!img2File.isEmpty()) {
			int random = (int) (Math.random() * 10000) + 1;
			String to = Integer.toString(random);
			String fileName = img2File.getOriginalFilename();
			img2File.transferTo(new File("C:/gitobfinal/obfinal/Final_Project/src/main/webapp/resources/theaterimg/"
					+ "(" + to + ")" + fileName));
			vo.setImg2(("(" + to + ")" + fileName));
		} else {
			if (vo.getImg2() == null)
				vo.setImg2("");
		}
		MultipartFile img3File = vo.getImg3_file();
		if (!img3File.isEmpty()) {
			int random = (int) (Math.random() * 10000) + 1;
			String to = Integer.toString(random);
			String fileName = img3File.getOriginalFilename();
			img3File.transferTo(new File("C:/gitobfinal/obfinal/Final_Project/src/main/webapp/resources/theaterimg/"
					+ "(" + to + ")" + fileName));
			vo.setImg3(("(" + to + ")" + fileName));
		} else {
			if (vo.getImg3() == null)
				vo.setImg3("");
		}
		MultipartFile img4File = vo.getImg4_file();
		if (!img4File.isEmpty()) {
			int random = (int) (Math.random() * 10000) + 1;
			String to = Integer.toString(random);
			String fileName = img4File.getOriginalFilename();
			img4File.transferTo(new File("C:/gitobfinal/obfinal/Final_Project/src/main/webapp/resources/theaterimg/"
					+ "(" + to + ")" + fileName));
			vo.setImg4(("(" + to + ")" + fileName));
		} else {
			if (vo.getImg4() == null)
				vo.setImg4("");
		}
		MultipartFile img5File = vo.getImg5_file();
		if (!img5File.isEmpty()) {
			int random = (int) (Math.random() * 10000) + 1;
			String to = Integer.toString(random);
			String fileName = img5File.getOriginalFilename();
			img5File.transferTo(new File("C:/gitobfinal/obfinal/Final_Project/src/main/webapp/resources/theaterimg/"
					+ "(" + to + ")" + fileName));
			vo.setImg5(("(" + to + ")" + fileName));
		} else {
			if (vo.getImg5() == null)
				vo.setImg5("");
		}

		System.out.println("확인 : " + vo);

		theaterService.upateTheater(vo);
		model.addAttribute("result", "update");

		return "/admin_searchTheater.do";
	}
	
	@RequestMapping(value = "/admin_deleteTheater.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String Admin_deleteTheater(TheaterVO vo, Model model) {
		System.out.println("요기까징");
		System.out.println("확인 vo : " + vo);
		theaterService.deleteTheater(vo);
		model.addAttribute("result", "delete");

		return "/admin_searchTheater.do";
	}

	// --------------------> 극장 ----------------- 끝
	
	
	
	// --------------------> 스크린 ----------------- 시작
	
	@RequestMapping(value = "/admin_searchScreen.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String Admin_searchScreen(MovieVO vo, Model model) {
		List<ScreenVO> screenList = screenService.getScreenList();

		model.addAttribute("screenList", screenList);
		model.addAttribute("password", "1234"); // 음.
		return "/views/admin/admin_searchScreen.jsp";
	}
	
	
	
	
	
	
	
	
	
	
	// --------------------> 스크린 ----------------- 끝
	

}
