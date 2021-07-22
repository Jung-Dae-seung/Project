package com.spring.service;

import com.spring.domain.LoginVO;
import com.spring.domain.MemberVO;
import com.spring.domain.changeMemberInfoVO;

public interface MemberService {
	public boolean signup(MemberVO vo);
	public LoginVO login(String userid,String password);
	public MemberVO dupId(String userid);
	public MemberVO memberInfo(String userid);
	public boolean updatePsw(changeMemberInfoVO vo);
	public boolean updateMobile(String userid,String new_mobile);
	public boolean updateEmail(String userid,String new_email);
	public boolean leave(String userid);
}
