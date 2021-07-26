package com.spring.mapper;

import java.util.List;


import org.apache.ibatis.annotations.Param;

import com.spring.domain.Criteria;
import com.spring.domain.FreeReplyVO;
import com.spring.domain.InqReplyVO;


public interface InqReplyMapper {
	public int insert(InqReplyVO reply);
	public InqReplyVO read(int rno);
	public int update(InqReplyVO reply);
	public int delete(int rno);
	public int getCountByBno(int bno);
	public List<InqReplyVO> list(@Param("cri") Criteria cri,@Param("bno") int bno);
}
