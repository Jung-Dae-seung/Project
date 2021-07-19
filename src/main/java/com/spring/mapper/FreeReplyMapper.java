package com.spring.mapper;

import java.util.List;


import org.apache.ibatis.annotations.Param;

import com.spring.domain.Criteria;
import com.spring.domain.FreeReplyVO;


public interface FreeReplyMapper {
	public int insert(FreeReplyVO reply);
	public FreeReplyVO read(int rno);
	public int update(FreeReplyVO reply);
	public int delete(int rno);
	public int getCountByBno(int bno);
	public List<FreeReplyVO> list(@Param("cri") Criteria cri,@Param("bno") int bno);
}
