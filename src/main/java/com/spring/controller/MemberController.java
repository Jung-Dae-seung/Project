package com.spring.controller;

import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.domain.MemberVO;
import com.spring.service.MemberService;

import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
public class MemberController {
	
	@Autowired
	private MemberService service;
	
	@GetMapping("/login")
	public void loginGet() {
		log.info("loginget 요청");
		
	}
	
	@GetMapping("/logout")
	public void logoutGet() {
		log.info("logoutGet 요청");
		
	}
	
//	@PostMapping("/login")
//	public String loginPost(String userid,String password,HttpSession session, RedirectAttributes rttr) {
//		log.info("loginpost 로그인 정보 가져오기");
//		log.info("유저 아이디 : "+userid);
//		log.info("패스워드 : "+password);
//		
//		LoginVO login = service.login(userid, password);
//		
//		if(login==null) {
//			rttr.addFlashAttribute("error","아이디나 비밀번호를 확인해 주세요");
//			return "redirect:login";
//		}else {
//			session.setAttribute("login", login);	
//			return "redirect:/";
//		}
//	}
	@PreAuthorize("isAnonymous")
	@GetMapping("/signup")
	public String signupGet() {
		log.info("signup page");
		
		return "signup";
	}
	
	//회원 가입 요청
	@PostMapping("/insertMember")
	public String insertMember(@ModelAttribute("member") MemberVO vo) {
		log.info("insertMember 회원가입 요청"+vo);
		
			if(service.signup(vo)) {
				return "redirect:login"; //회원가입 성공
			}else {	
				return "signup"; //회원가입 실패
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
	
	//회원 정보 수정 페이지
	@PreAuthorize("isAuthenticated()")
	@GetMapping("/changememberinfo")
	public String changeMemberInfoGet() {
		log.info("changeMemberInfo page");
		
		return "changememberinfo";
	}
	
	//회원 정보 수정 페이지 전 비밀번호 확인 페이지
	@GetMapping("/checkpsw")
	public String CheckPswGet(Model model,Authentication authentication) {
		log.info("checkpsw page 요청");
	       UserDetails userDetails = (UserDetails) authentication.getPrincipal();
	       log.info("유저아이디 받기 : "+ userDetails.getUsername());
	       model.addAttribute("userid",userDetails.getUsername());
	        
		
		return "checkpsw";
	}
	//비밀번호 확인 후 멤버 정보를 세션에 담아 changeMemberInfo 페이지로 이동
	@PostMapping("/checkpsw")
	public String CheckPswPost(String userid,String password,HttpSession session, RedirectAttributes rttr) {
		log.info("checkpsw 멤버 정보 가져오기");
		log.info("유저 아이디 : "+userid);
		log.info("패스워드 : "+password);
		
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		MemberVO memberinfo = service.memberInfo(userid);
		log.info("멤버 정보 : "+memberinfo);
		
		if(encoder.matches(password, memberinfo.getPassword())) {
			session.setAttribute("memberinfo", memberinfo);	
			return "redirect:changememberinfo";
		}else {
			rttr.addFlashAttribute("error","비밀번호를 확인해 주세요");
			return "redirect:checkpsw";
		}
	}
	
	@GetMapping("/login-error")
	public String loginError(Model model) {
		
		model.addAttribute("loginError", "아이디나 비밀 번호를 확인해 주세요");
		
		return "/login";
	}
	
	@GetMapping("/admin-page")
	public String adminPage() {
		log.info("admin");
		return "/AdminPage";
	}
	
	@GetMapping("/access-denied")
	public String accessDenied() {
		return "index";
	}
	
}
