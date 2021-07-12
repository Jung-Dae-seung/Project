package com.spring.service;

import com.spring.domain.LoginVO;
import com.spring.domain.MemberVO;

public interface MemberService {
	public boolean signup(MemberVO vo);
	public LoginVO login(String userid,String password);
	public MemberVO dupId(String userid);
}
