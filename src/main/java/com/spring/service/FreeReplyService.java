package com.spring.service;

import java.util.List;


import com.spring.domain.Criteria;
import com.spring.domain.FreeReplyPageVO;
import com.spring.domain.FreeReplyVO;


public interface FreeReplyService {
	public boolean replyInsert(FreeReplyVO reply);
	public FreeReplyVO replyRead(int rno);
	public boolean replyUpdate(FreeReplyVO reply);
	public boolean replyDelete(int rno);
	public FreeReplyPageVO getList(Criteria cri, int bno);
}
