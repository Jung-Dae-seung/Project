package com.spring.service;

import java.util.List;

import com.spring.domain.ReviewAttachFileDTO;

public interface ReviewService {
	public List<ReviewAttachFileDTO> list(int bno); //���� ����Ʈ
	
	public void create(ReviewAttachFileDTO dto); //�������
	
	public int count(int bno);    //���� ����
	 
    public void reply_update(ReviewAttachFileDTO dto);    //���� ����
 
    public void delete(int bno);    //���� ����

}
