package kr.kr.OnAirAuction.Service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import kr.kr.OnAirAuction.DAO.MyPageDAO;

import kr.kr.OnAirAuction.Pagination.Criteria;

import kr.kr.OnAirAuction.VO.HeldAuctionVO;

import kr.kr.OnAirAuction.VO.ParticipateAuctionVO;

@Service
public class MyPageServiceImp implements MyPageService{
	
	@Autowired
	MyPageDAO myPageDao;
	
	// 경매 참가 내역 조회 서비스

	@Override
	public ArrayList<ParticipateAuctionVO> getPartAuctList(Criteria criteria) {
		
		if(criteria == null) {
			
			criteria = new Criteria();
			
		}
		
		return myPageDao.selectPartAuctList(criteria);
		
	}
	
	// 경매 참가 내역 조회 서비스

	@Override
	public int getPartAuctTotalCount(Criteria criteria) {

		return myPageDao.selectPartAuctTotalCount(criteria);
		
	}

	@Override
	public ArrayList<HeldAuctionVO> getHeldAuctList(Criteria criteria) {
		
		if(criteria == null) {
			
			criteria = new Criteria();
			
		}
		
		return myPageDao.selectHeldAuctList(criteria);
		
	}

	@Override
	public int getHeldAuctTotalCount(Criteria criteria) {
		
		return myPageDao.selectHeldAuctTotalCount(criteria);
		
	}

	@Override
	public ArrayList<ParticipateAuctionVO> getPartAuctList2(Criteria criteria) {
		
		if(criteria == null) {
			
			criteria = new Criteria();
			
		}
		
		return myPageDao.selectPartAuctList2(criteria);
	}

	@Override
	public HeldAuctionVO getHeldAuct() {
		
		return myPageDao.selectHeldAuct();
		
	}
	
}