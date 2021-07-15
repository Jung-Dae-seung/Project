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
	public boolean updatePws(changeMemberInfoVO vo) {
		return mapper.updatePws(vo)>0? true:false;
	}

	@Override
	public boolean updateMobile(changeMemberInfoVO vo) {
		return mapper.updateMobile(vo)>0? true:false;
	}

	@Override
	public boolean updateEmail(changeMemberInfoVO vo) {
		return mapper.updateEmail(vo)>0? true:false;
	}



}
