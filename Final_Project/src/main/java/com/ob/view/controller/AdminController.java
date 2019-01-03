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
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.ob.biz.service.MovieService;
import com.ob.biz.vo.MovieVO;

@Controller
@SessionAttributes("movieOne")
public class AdminController {
	@Autowired
	private MovieService movieService;

	@RequestMapping(value = "/admin_Main.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String GoAdminIndexPage(MovieVO vo, HttpSession session) {

		return "/views/admin/admin_Main.jsp";
	}

	@RequestMapping(value = "/admin_searchMovie.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String Admin_seachMovie(MovieVO vo, Model model) {
		List<MovieVO> movieList = movieService.getMoiveList();

		model.addAttribute("movieList", movieList);

		return "/views/admin/admin_searchMovie.jsp";
	}

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
			String fileName = posterFile.getOriginalFilename();
			posterFile.transferTo(
					new File("C:/gitobfinal/obfinal/Final_Project/src/main/webapp/resources/movieimg/" + fileName));
			vo.setPoster(fileName);
		} else {
			if (vo.getPoster() == null)
				vo.setPoster("");
		}
		MultipartFile img1File = vo.getImg1_file();
		if (!img1File.isEmpty()) {
			String fileName = img1File.getOriginalFilename();
			img1File.transferTo(
					new File("C:/gitobfinal/obfinal/Final_Project/src/main/webapp/resources/movieimg/" + fileName));
			vo.setImg1((fileName));
		} else {
			if (vo.getImg1() == null)
				vo.setImg1("");
		}
		MultipartFile img2File = vo.getImg2_file();
		if (!img2File.isEmpty()) {
			String fileName = img2File.getOriginalFilename();
			img2File.transferTo(
					new File("C:/gitobfinal/obfinal/Final_Project/src/main/webapp/resources/movieimg/" + fileName));
			vo.setImg2((fileName));
		} else {
			if (vo.getImg2() == null)
				vo.setImg2("");
		}
		MultipartFile img3File = vo.getImg3_file();
		if (!img3File.isEmpty()) {
			String fileName = img3File.getOriginalFilename();
			img3File.transferTo(
					new File("C:/gitobfinal/obfinal/Final_Project/src/main/webapp/resources/movieimg/" + fileName));
			vo.setImg3((fileName));
		} else {
			if (vo.getImg3() == null)
				vo.setImg3("");
		}
		MultipartFile img4File = vo.getImg4_file();
		if (!img4File.isEmpty()) {
			String fileName = img4File.getOriginalFilename();
			img4File.transferTo(
					new File("C:/gitobfinal/obfinal/Final_Project/src/main/webapp/resources/movieimg/" + fileName));
			vo.setImg4((fileName));
		} else {
			if (vo.getImg4() == null)
				vo.setImg4("");
		}
		MultipartFile img5File = vo.getImg5_file();
		if (!img5File.isEmpty()) {
			String fileName = img5File.getOriginalFilename();
			img5File.transferTo(
					new File("C:/gitobfinal/obfinal/Final_Project/src/main/webapp/resources/movieimg/" + fileName));
			vo.setImg5((fileName));
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

		model.addAttribute("result", "result");

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
}
