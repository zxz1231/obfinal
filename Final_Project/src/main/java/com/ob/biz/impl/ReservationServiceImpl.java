package com.ob.biz.impl;

import java.util.List;

import com.ob.biz.dao.ReservationDAO;
import com.ob.biz.service.ReservationService;
import com.ob.biz.vo.ReservationVO;

public class ReservationServiceImpl implements ReservationService {
	private ReservationDAO reservationDAO;

	@Override
	public void insertReservation(ReservationVO vo) {
		reservationDAO.insertReservation(vo);
	}

	@Override
	public void updateReservation(ReservationVO vo) {
		reservationDAO.updateReservation(vo);
	}
	
	@Override
	public void deleteReservation(ReservationVO vo) {
		reservationDAO.deleteReservation(vo);
	}

	@Override
	public ReservationVO getReservation(ReservationVO vo) {
		return reservationDAO.getReservation(vo);
	}

	@Override
	public List<ReservationVO> getReservationList() {
		return reservationDAO.getReservationList();
	}

}
