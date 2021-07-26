package com.spring.service;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.domain.Criteria;
import com.spring.domain.FreeReplyPageVO;
import com.spring.domain.FreeReplyVO;
import com.spring.domain.InqReplyPageVO;
import com.spring.domain.InqReplyVO;
import com.spring.domain.ProReplyPageVO;
import com.spring.domain.ProReplyVO;
import com.spring.mapper.FreeBoardMapper;
import com.spring.mapper.FreeReplyMapper;
import com.spring.mapper.InqBoardMapper;
import com.spring.mapper.InqReplyMapper;
import com.spring.mapper.ProBoardMapper;
import com.spring.mapper.ProReplyMapper;

@Service
public class FreeReplyServiceImpl implements FreeReplyService {

	@Autowired
	private FreeReplyMapper mapper;
	
	@Autowired
	private ProReplyMapper promapper;
	
	@Autowired
	private InqReplyMapper inqmapper;
	
	@Autowired
	private FreeBoardMapper boardMapper;
	
	@Autowired
	private ProBoardMapper proboardMapper;
	
	@Autowired
	private InqBoardMapper inqboardMapper;
	
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

	@Transactional
	@Override
	public boolean replyInsert_p(ProReplyVO reply) {
		proboardMapper.replyCntUpdate(reply.getBno(), 1);
		return promapper.insert(reply)>0?true:false;
	}

	@Transactional
	@Override
	public boolean replyInsert_i(InqReplyVO reply) {
		inqboardMapper.replyCntUpdate(reply.getBno(), 1);
		return inqmapper.insert(reply)>0?true:false;
	}

	@Override
	public ProReplyVO replyRead_p(int rno) {
		return promapper.read(rno);
	}

	@Override
	public InqReplyVO replyRead_i(int rno) {
		return inqmapper.read(rno);
	}

	@Override
	public boolean replyUpdate_p(ProReplyVO reply) {
		return promapper.update(reply)>0?true:false;
	}

	@Override
	public boolean replyUpdate_i(InqReplyVO reply) {
		return inqmapper.update(reply)>0?true:false;
	}

	@Transactional
	@Override
	public boolean replyDelete_p(int rno) {
		//rno를 이용해서 bno 알아내기
		ProReplyVO reply = promapper.read(rno);
				
		proboardMapper.replyCntUpdate(reply.getBno(), -1);
		return promapper.delete(rno)>0?true:false;
	}

	@Transactional
	@Override
	public boolean replyDelete_i(int rno) {
		//rno를 이용해서 bno 알아내기
		InqReplyVO reply = inqmapper.read(rno);
				
		inqboardMapper.replyCntUpdate(reply.getBno(), -1);
		return inqmapper.delete(rno)>0?true:false;
	}

	@Override
	public ProReplyPageVO getList_p(Criteria cri, int bno) {
		return new ProReplyPageVO(promapper.getCountByBno(bno),promapper.list(cri, bno));
	}

	@Override
	public InqReplyPageVO getList_i(Criteria cri, int bno) {
		return new InqReplyPageVO(inqmapper.getCountByBno(bno),inqmapper.list(cri, bno));
	}

}
