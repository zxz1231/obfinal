package com.ob.biz.service;

import java.util.List;

import com.ob.biz.vo.ReservationVO;

public interface ReservationService {
	void insertReservation(ReservationVO vo);
	void updateReservation(ReservationVO vo);
	void deleteReservation(ReservationVO vo);
	ReservationVO getReservation(ReservationVO vo);
	List<ReservationVO> getReservationList();
}
