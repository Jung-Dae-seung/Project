package com.spring.service;

import com.spring.domain.LoginVO;
import com.spring.domain.MemberVO;
import com.spring.domain.changeMemberInfoVO;

public interface MemberService {
	public boolean signup(MemberVO vo);
	public LoginVO login(String userid,String password);
	public MemberVO dupId(String userid);
	public MemberVO memberInfo(String userid,String password);
	public boolean updatePws(changeMemberInfoVO vo);
	public boolean updateMobile(changeMemberInfoVO vo);
	public boolean updateEmail(changeMemberInfoVO vo);	
}
