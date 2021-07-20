package com.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.domain.LoginVO;
import com.spring.domain.MemberVO;
import com.spring.domain.changeMemberInfoVO;
import com.spring.mapper.MemberMapper;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberMapper mapper;
	
	@Override
	public boolean signup(MemberVO vo) {
		return mapper.signup(vo)>0?true:false;
	}

	@Override
	public LoginVO login(String userid, String password) {
		return mapper.login(userid, password);
	}

	@Override
	public MemberVO dupId(String userid) {
		return mapper.dupId(userid);
	}

	@Override
	public MemberVO memberInfo(String userid, String password) {
		return mapper.memberInfo(userid, password);
	}

	@Override
	public boolean updatePsw(String userid,String password,String new_password) {
		return mapper.updatePsw(userid, password, new_password)>0? true:false;
	}

	@Override
	public boolean updateMobile(String userid,String password,String new_mobile) {
		return mapper.updateMobile(userid, password, new_mobile)>0? true:false;
	}

	@Override
	public boolean updateEmail(String userid,String password,String new_email) {
		return mapper.updateEmail(userid, password, new_email)>0? true:false;
	}

	@Override
	public boolean leave(String userid, String password) {
		return mapper.leave(userid, password)>0? true:false;
	}



}
