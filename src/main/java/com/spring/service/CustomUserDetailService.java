package com.spring.service;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.spring.domain.CustomUser;
import com.spring.domain.MemberAuthVO;
import com.spring.mapper.MemberMapper;


import lombok.extern.log4j.Log4j2;

@Service
@Log4j2
public class CustomUserDetailService implements UserDetailsService {

	@Autowired
	private MemberMapper mapper;	
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		log.info("userid : "+username);
		
		MemberAuthVO member = mapper.memberAuth(username); // mapper 에서는 userid로 받음
		
		log.info("인증정보"+member);
		
		
		return new CustomUser(member);
	}

}










