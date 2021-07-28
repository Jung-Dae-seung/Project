package com.spring.controller;


import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.domain.Criteria;
import com.spring.domain.ReviewVO;
import com.spring.service.ReviewBoardService;

import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
@RequestMapping("/food/*")
public class ReviewController {
	
	@Autowired
	ReviewBoardService service;
	
	//food list
	@GetMapping("/list")
    public void list(Model model, Criteria cri) {
    	log.info("전체 리뷰 요청");
    	
    	List<ReviewVO> list= service.list(cri);
        model.addAttribute("list", list);
    }
	
	
	//foodReview list
	
	
	
	
	//food register
	@PreAuthorize("isAuthenticated()")
	@PostMapping("/register")
	public String register(ReviewVO vo, RedirectAttributes rttr) {
		log.info("새 리뷰 등록 요청 "+vo);
		
		if(service.insert(vo)) {
			rttr.addFlashAttribute("result", vo.getBno());
			return "redirect:/foodReview";
		}else {
			return "redirect:/food";
		}
	}
	
	
	
	@PostMapping({"/view","/update"})
	public void view(int bno, @ModelAttribute("cri") Criteria cri,Model model) {
		log.info("리뷰 하나 가져오기 "+bno+" cri : "+cri);  
		
		ReviewVO vo= service.read(bno);
		model.addAttribute("vo", vo);
	}
	
	@PreAuthorize("principal.username == #vo.reviewer")
	@PostMapping("/update")
	public String update(ReviewVO vo, Criteria cri,RedirectAttributes rttr) {
		log.info("리뷰 수정 요청 "+vo+"페이지 나누기 "+cri);
		
		service.update(vo);
		rttr.addFlashAttribute("result","성공");
		
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		return "redirect:foodReview";	
	}
	
	@PreAuthorize("principal.username == #vo.reviewer")
	@PostMapping("/delete")
	public String delete(int bno, Criteria cri, RedirectAttributes rttr) {
		log.info("리뷰 삭제 요청 "+bno);
		
		service.delete(bno);
		rttr.addFlashAttribute("result", "성공");
		
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		return "redirect:foodReview";	
	}
	
}


