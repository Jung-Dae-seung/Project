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
	public int updatePsw(@Param("userid")String userid,@Param("password")String password,@Param("new_password")String new_password);
	public int updateMobile(@Param("userid")String userid,@Param("password")String password,@Param("new_mobile")String new_mobile);
	public int updateEmail(@Param("userid")String userid,@Param("password")String password,@Param("new_email")String new_email);
	public int leave(@Param("userid")String userid,@Param("password")String password);
}
