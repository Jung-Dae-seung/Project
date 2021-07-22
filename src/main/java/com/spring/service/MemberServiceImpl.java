package com.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.domain.LoginVO;
import com.spring.domain.MemberVO;
import com.spring.domain.changeMemberInfoVO;
import com.spring.mapper.MemberMapper;

import lombok.extern.log4j.Log4j2;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberMapper mapper;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Transactional
	@Override
	public boolean signup(MemberVO vo) {
		//패스워드 암호화
		vo.setPassword(passwordEncoder.encode(vo.getPassword()));
		
		//회원 가입 진행
		boolean result = mapper.signup(vo)==1;
		
		//회원권한 등록 (ROLE_USER로 등록)
		mapper.signup_auth(vo.getUserid());
		return result;
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
	public MemberVO memberInfo(String userid) {
		return mapper.memberInfo(userid);
	}

	@Override
	public boolean updatePsw(changeMemberInfoVO vo) {
		//뉴 패스워드 암호화
		vo.setNew_password(passwordEncoder.encode(vo.getNew_password()));
		return mapper.updatePsw(vo)>0? true:false;
	}

	@Override
	public boolean updateMobile(String userid, String new_mobile) {
		return mapper.updateMobile(userid, new_mobile)>0? true:false;
	}

	@Override
	public boolean updateEmail(String userid,String new_email) {
		return mapper.updateEmail(userid, new_email)>0? true:false;
	}
	
	@Transactional
	@Override
	public boolean leave(String userid) {
		mapper.leave_auth(userid);
		return mapper.leave(userid)>0? true:false;
	}




}
