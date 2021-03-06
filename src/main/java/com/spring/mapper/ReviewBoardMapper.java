package com.spring.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.spring.domain.Criteria;
import com.spring.domain.ReviewVO;

public interface ReviewBoardMapper {
	public int insert(ReviewVO vo);
	public int delete(int bno);
	public int update(ReviewVO vo);
	public List<ReviewVO> list(@Param("cri") Criteria cri,@Param("storeid") String storeid);
	public List<ReviewVO> highStarList(@Param("cri") Criteria cri,@Param("storeid") String storeid);
	public List<ReviewVO> lowStarList(@Param("cri") Criteria cri,@Param("storeid") String storeid);
	public int getCountByStoreid(String storeid);
	public ReviewVO read(int bno);
	public List<ReviewVO> starlist(@Param("storeid") String storeid);
}
