package com.spring.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.domain.LoginVO;
import com.spring.domain.MemberVO;
import com.spring.service.MemberService;

import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
public class MemberController {
	
	@Autowired
	private MemberService service;
	
	@GetMapping("/login")
	public void loginGet2() {
		log.info("loginget 요청");
		
	}
	
	@PostMapping("/login")
	public String loginPost(String userid,@RequestParam("current_password")String password,HttpSession session, RedirectAttributes rttr) {
		log.info("loginpost 로그인 정보 가져오기");
		log.info("유저 아이디 : "+userid);
		log.info("패스워드 : "+password);
		
		LoginVO login = service.login(userid, password);
		
		if(login==null) {
			rttr.addFlashAttribute("error","아이디나 비밀번호를 확인해 주세요");
			return "redirect:login";
		}else {
			session.setAttribute("login", login);	
			return "redirect:/";
		}
	}
	
	@GetMapping("/signup")
	public String signupGet() {
		log.info("signup page");
		
		return "signup";
	}
	
	//회원 가입 요청 페이지
	@PostMapping("/signup")
	public String signupPost(@ModelAttribute("member") MemberVO vo) {
		log.info("signupPost 회원가입 요청"+vo);
		
		if(service.signup(vo)) {
			return "redirect:login"; //성공
		}else {	
			return "signup"; //실패
		}	
	}

	//중복 아이디 검사
	@ResponseBody //테이블 데이터 확인
	@PostMapping("/checkId")
	public String checkId(String userid) {
		log.info("중복 아이디 검사 요청... "+userid);
		
		MemberVO vo = service.dupId(userid);
		
		if(vo!=null) { //아이디가 사용중일때
			return "false"; 
		}
		return "true";
	}
}
