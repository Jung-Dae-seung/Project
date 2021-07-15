package com.spring.mapper;

import org.apache.ibatis.annotations.Param;

import com.spring.domain.LoginVO;
import com.spring.domain.MemberVO;
import com.spring.domain.changeMemberInfoVO;

public interface MemberMapper {
	public int signup(MemberVO vo);
	public LoginVO login(@Param("userid")String userid,@Param("password")String password);
	public MemberVO dupId(String userid);
	public MemberVO memberInfo(@Param("userid")String userid,@Param("password")String password);
	public int updatePws(changeMemberInfoVO vo);
	public int updateMobile(changeMemberInfoVO vo);
	public int updateEmail(changeMemberInfoVO vo);
}
