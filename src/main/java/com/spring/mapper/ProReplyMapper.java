package com.spring.mapper;

import java.util.List;


import org.apache.ibatis.annotations.Param;

import com.spring.domain.Criteria;
import com.spring.domain.FreeReplyVO;
import com.spring.domain.ProReplyVO;


public interface ProReplyMapper {
	public int insert(ProReplyVO reply);
	public ProReplyVO read(int rno);
	public int update(ProReplyVO reply);
	public int delete(int rno);
	public int getCountByBno(int bno);
	public List<ProReplyVO> list(@Param("cri") Criteria cri,@Param("bno") int bno);
}
