package com.spring.service;

import java.util.List;

import org.springframework.stereotype.Service;
import com.spring.domain.Criteria;
import com.spring.domain.ReviewVO;


@Service
public class ReviewBoardServiceImpl implements ReviewBoardService {

	@Override
	public boolean insert(ReviewVO vo) {
		return false;
	}

	@Override
	public boolean delete(int bno) {
		return false;
	}

	@Override
	public boolean update(ReviewVO vo) {
		return false;
	}

	@Override
	public List<ReviewVO> list(Criteria cri) {
		return null;
	}

	@Override
	public ReviewVO read(int bno) {
		return null;
	}


	

}
