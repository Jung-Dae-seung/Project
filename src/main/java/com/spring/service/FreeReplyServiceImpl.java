package com.spring.service;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.domain.Criteria;
import com.spring.domain.FreeReplyPageVO;
import com.spring.domain.FreeReplyVO;
import com.spring.mapper.FreeBoardMapper;
import com.spring.mapper.FreeReplyMapper;

@Service
public class FreeReplyServiceImpl implements FreeReplyService {

	@Autowired
	private FreeReplyMapper mapper;
	
	@Autowired
	private FreeBoardMapper boardMapper;
	
	@Transactional
	@Override
	public boolean replyInsert(FreeReplyVO reply) {
		boardMapper.replyCntUpdate(reply.getBno(), 1);
		return mapper.insert(reply)>0?true:false;
	}

	@Override
	public FreeReplyVO replyRead(int rno) {
		
		return mapper.read(rno);
	}

	@Override
	public boolean replyUpdate(FreeReplyVO reply) {
		
		return mapper.update(reply)>0?true:false;
	}

	@Transactional
	@Override
	public boolean replyDelete(int rno) {
		//rno를 이용해서 bno 알아내기
		FreeReplyVO reply = mapper.read(rno);
		
		boardMapper.replyCntUpdate(reply.getBno(), -1);
		return mapper.delete(rno)>0?true:false;
	}

	@Override
	public FreeReplyPageVO getList(Criteria cri, int bno) {
		
		return new FreeReplyPageVO(mapper.getCountByBno(bno),mapper.list(cri, bno));
	}

}
