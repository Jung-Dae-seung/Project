package com.spring.service;



import com.spring.domain.Criteria;
import com.spring.domain.ReviewPageVO;
import com.spring.domain.ReviewVO;

public interface ReviewBoardService {    
    public boolean insert(ReviewVO vo);
	public boolean delete(int bno);
	public boolean update(ReviewVO vo);
	public ReviewPageVO list(Criteria cri, String storeid);
	public ReviewVO read(int bno);
	public ReviewPageVO starlist(String storeid);

}
