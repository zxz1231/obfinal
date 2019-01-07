package com.ob.biz.service;

import java.util.List;

import com.ob.biz.vo.MovieVO;

public interface MovieService {
   //CRUD 기능 구현 메소드 정의
   //영화 입력
   void insertMovie(MovieVO vo);
   //영화 수정
   void updateMovie(MovieVO vo);
   //영화 삭제
   void deleteMovie(MovieVO vo);
   //영화 상세 조회
   MovieVO getMovieOne(MovieVO vo);
   //영화 목록 전체 조회
   List<MovieVO> getMovieList();
   
}