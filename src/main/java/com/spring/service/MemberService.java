package com.spring.service;

import com.spring.domain.LoginVO;
import com.spring.domain.MemberVO;
import com.spring.domain.changeMemberInfoVO;

public interface MemberService {
	public boolean signup(MemberVO vo);
	public LoginVO login(String userid,String password);
	public MemberVO dupId(String userid);
	public MemberVO memberInfo(String userid,String password);
	public boolean updatePsw(String userid,String password,String new_password);
	public boolean updateMobile(String userid,String password,String new_mobile);
	public boolean updateEmail(String userid,String password,String new_email);	
	public boolean leave(String userid, String password);
}
