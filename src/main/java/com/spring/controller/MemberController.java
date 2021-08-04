package com.spring.controller;

import javax.servlet.http.HttpServletRequest;
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
	public void loginGet(HttpServletRequest request) {
		log.info("loginget ��û");
	    String referrer = request.getHeader("Referer");
	    log.info("�α��� ��û ������ �ּ� �ޱ� : "+referrer);
	    request.getSession().setAttribute("prevPage", referrer);	
	}
	@GetMapping("/logout")
	public void logoutget() {
		log.info("logoutget ��û");
		
	}
	
	
	@PostMapping("/logout")
	public void logoutpost() {
		log.info("logoupost ��û");
		
	}
	
//	@PostMapping("/login")
//	public String loginPost(String userid,String password,HttpSession session, RedirectAttributes rttr) {
//		log.info("loginpost �α��� ���� ��������");
//		log.info("���� ���̵� : "+userid);
//		log.info("�н����� : "+password);
//		
//		LoginVO login = service.login(userid, password);
//		
//		if(login==null) {
//			rttr.addFlashAttribute("error","���̵� ��й�ȣ�� Ȯ���� �ּ���");
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
	
	//ȸ�� ���� ��û
	@PostMapping("/insertMember")
	public String insertMember(@ModelAttribute("member") MemberVO vo) {
		log.info("insertMember ȸ������ ��û"+vo);
		
			if(service.signup(vo)) {
				return "redirect:login"; //ȸ������ ����
			}else {	
				return "signup"; //ȸ������ ����
			}	
	}

	//�ߺ� ���̵� �˻�
	@ResponseBody //���̺� ������ Ȯ��
	@PostMapping("/checkId")
	public String checkId(String userid) {
		log.info("�ߺ� ���̵� �˻� ��û... "+userid);
		
		MemberVO vo = service.dupId(userid);
		
		if(vo!=null) { //���̵� ������϶�
			return "false"; 
		}
		return "true";
	}
	
	//ȸ�� ���� ���� ������
	@PreAuthorize("isAuthenticated()")
	@GetMapping("/changememberinfo")
	public String changeMemberInfoGet() {
		log.info("changeMemberInfo page");
		
		return "changememberinfo";
	}
	
	//ȸ�� ���� ���� ������ �� ��й�ȣ Ȯ�� ������
	@GetMapping("/checkpsw")
	public String CheckPswGet(Model model,Authentication authentication) {
		log.info("checkpsw page ��û");
	       UserDetails userDetails = (UserDetails) authentication.getPrincipal();
	       log.info("�������̵� �ޱ� : "+ userDetails.getUsername());
	       model.addAttribute("userid",userDetails.getUsername());
	        
		
		return "checkpsw";
	}
	//��й�ȣ Ȯ�� �� ��� ������ ���ǿ� ��� changeMemberInfo �������� �̵�
	@PostMapping("/checkpsw")
	public String CheckPswPost(String userid,String password,HttpSession session, RedirectAttributes rttr) {
		log.info("checkpsw ��� ���� ��������");
		log.info("���� ���̵� : "+userid);
		log.info("�н����� : "+password);
		
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		MemberVO memberinfo = service.memberInfo(userid);
		log.info("��� ���� : "+memberinfo);
		
		if(encoder.matches(password, memberinfo.getPassword())) {
			session.setAttribute("memberinfo", memberinfo);	
			return "redirect:changememberinfo";
		}else {
			rttr.addFlashAttribute("error","��й�ȣ�� Ȯ���� �ּ���");
			return "redirect:checkpsw";
		}
	}
	
	@GetMapping("/login-error")
	public String loginError(Model model) {
		
		model.addAttribute("loginError", "���̵� ��� ��ȣ�� Ȯ���� �ּ���");
		
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
