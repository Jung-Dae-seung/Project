package com.spring.service;

import java.util.List;


import com.spring.domain.Criteria;
import com.spring.domain.FreeReplyPageVO;
import com.spring.domain.FreeReplyVO;
import com.spring.domain.InqReplyPageVO;
import com.spring.domain.InqReplyVO;
import com.spring.domain.ProReplyPageVO;
import com.spring.domain.ProReplyVO;


public interface FreeReplyService {
	public boolean replyInsert(FreeReplyVO reply);
	public boolean replyInsert_p(ProReplyVO reply);
	public boolean replyInsert_i(InqReplyVO reply);
	
	public FreeReplyVO replyRead(int rno);
	public ProReplyVO replyRead_p(int rno);
	public InqReplyVO replyRead_i(int rno);
	
	public boolean replyUpdate(FreeReplyVO reply);
	public boolean replyUpdate_p(ProReplyVO reply);
	public boolean replyUpdate_i(InqReplyVO reply);
	
	public boolean replyDelete(int rno);
	public boolean replyDelete_p(int rno);
	public boolean replyDelete_i(int rno);
	
	public FreeReplyPageVO getList(Criteria cri, int bno);
	public ProReplyPageVO getList_p(Criteria cri, int bno);
	public InqReplyPageVO getList_i(Criteria cri, int bno);
}
