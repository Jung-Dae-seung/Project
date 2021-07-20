package com.spring.service;

import java.util.List;

import com.spring.domain.ReviewAttachFileDTO;

public interface ReviewService {
	public List<ReviewAttachFileDTO> list(int bno); //府轰 府胶飘
	
	public void create(ReviewAttachFileDTO dto); //府轰积己
	
	public int count(int bno);    //府轰 肮荐
	 
    public void reply_update(ReviewAttachFileDTO dto);    //府轰 荐沥
 
    public void delete(int bno);    //府轰 昏力

}
