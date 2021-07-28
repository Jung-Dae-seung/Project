package com.spring.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.domain.ReviewAttachFileDTO;

@Service
public class ReviewServiceImpl implements ReviewService {
	
	

	// review list
	@Override
	public List<ReviewAttachFileDTO> list(int bno) {
		return null;
	}

	// create review
	@Override
	public void create(ReviewAttachFileDTO dto) {
		
	}

	// review count
	@Override
	public int count(int bno) {
		return 0;
	}

	// review update
	@Override
	public void reply_update(ReviewAttachFileDTO dto) {
		
	}

	// review delete
	@Override
	public void delete(int bno) {
		
	}
	
	


}
