package com.spring.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.spring.domain.Criteria;
import com.spring.domain.ReviewPageVO;
import com.spring.domain.ReviewVO;
import com.spring.mapper.ReviewBoardMapper;


@Service
public class ReviewBoardServiceImpl implements ReviewBoardService {

	
	@Autowired
	private ReviewBoardMapper mapper;
	
	
	@Override
	public boolean insert(ReviewVO vo) {
		return mapper.insert(vo)>0?true:false;
	}

	@Override
	public boolean delete(int bno) {
		return mapper.delete(bno)>0?true:false;
	}

	@Override
	public boolean update(ReviewVO vo) {
		return mapper.update(vo)>0?true:false;
	}

	@Override
	public ReviewPageVO list(Criteria cri, String storeid) {
		return new ReviewPageVO(mapper.getCountByStoreid(storeid) ,mapper.list(cri, storeid));
	}

	@Override
	public ReviewVO read(int bno) {
		return mapper.read(bno);
	}

	@Override
	public ReviewPageVO starlist(String storeid) {
		return new ReviewPageVO(mapper.getCountByStoreid(storeid) ,mapper.starlist(storeid));
	}

	@Override
	public ReviewPageVO lowStarList(Criteria cri, String storeid) {
		return new ReviewPageVO(mapper.getCountByStoreid(storeid) ,mapper.lowStarList(cri, storeid));
	}

	@Override
	public ReviewPageVO highStarList(Criteria cri, String storeid) {
		return new ReviewPageVO(mapper.getCountByStoreid(storeid) ,mapper.highStarList(cri, storeid));
	}



	

}
