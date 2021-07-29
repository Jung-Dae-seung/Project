package com.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import com.spring.domain.Criteria;
import com.spring.domain.ReviewPageVO;
import com.spring.domain.ReviewVO;
import com.spring.service.ReviewBoardService;

import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
@RequestMapping("/food/*")
public class ReviewController {
	
	@Autowired
	ReviewBoardService service;
	
	// list
	@GetMapping("/pages/{storeid}/{page}")
	public ResponseEntity<ReviewPageVO>getList(@PathVariable("storeid") String storeid, @PathVariable("page") int page){
		log.info("���� �������� "+storeid+" page "+page);
		
		Criteria cri = new Criteria(page, 5);
		
		return new ResponseEntity<ReviewPageVO>(service.list(cri, storeid),HttpStatus.OK);
	}
	// ���� ��� �̱�� ��ü ����Ʈ (������ ����)
	@GetMapping("/pages/{storeid}")
	public ResponseEntity<ReviewPageVO>getStar(@PathVariable("storeid") String storeid){
		log.info("���� �������� "+storeid);
		
		return new ResponseEntity<ReviewPageVO>(service.starlist(storeid),HttpStatus.OK);
	}
	
	// insert
	@PreAuthorize("isAuthenticated()")
	@PostMapping("/new")
	public ResponseEntity<String> create(@RequestBody ReviewVO review){
		log.info("���� �Է� ��û "+review);
		
		return service.insert(review)?new ResponseEntity<String>("success",HttpStatus.OK):
			new ResponseEntity<String>("fail",HttpStatus.BAD_REQUEST);
	}
	
	
	// read
	@GetMapping("/{bno}")
	public ResponseEntity<ReviewVO> read(@PathVariable("bno") int bno){
		log.info("���� �ϳ� �������� "+bno);
		
		return new ResponseEntity<>(service.read(bno),HttpStatus.OK);
	}
	
	// update
	@PreAuthorize("principal.username == #review.reviewer")
	@PutMapping("/{bno}")
	public ResponseEntity<String> update(@PathVariable("bno") int bno,@RequestBody ReviewVO review){
		log.info("���� ���� "+bno+" ���� ���� "+review);
		
		review.setBno(bno);
		
		return service.update(review)?new ResponseEntity<String>("success",HttpStatus.OK):
			new ResponseEntity<String>("fail",HttpStatus.BAD_REQUEST);
	}
	
	// delete
	@PreAuthorize("principal.username == #vo.reviewer")
	@DeleteMapping("/{bno}")
	public ResponseEntity<String> delete(@PathVariable("bno") int bno,@RequestBody ReviewVO vo){
		log.info("���� ���� "+bno);
		
		return service.delete(bno)?new ResponseEntity<String>("success",HttpStatus.OK):
			new ResponseEntity<String>("fail",HttpStatus.BAD_REQUEST);
	}
	
	
	
	
	
//	@GetMapping("/list")
//    public void list(Model model, Criteria cri) {
//    	log.info("��ü ���� ��û");
//    	
//    	List<ReviewVO> list= service.list(cri);
//        model.addAttribute("list", list);
//    }
//	
//	
//	//foodReview list
//	
//	
//	
//	
//	//food register
//	@PreAuthorize("isAuthenticated()")
//	@PostMapping("/register")
//	public String register(ReviewVO vo, RedirectAttributes rttr) {
//		log.info("�� ���� ��� ��û "+vo);
//		
//		if(service.insert(vo)) {
//			rttr.addFlashAttribute("result", vo.getBno());
//			return "redirect:/foodReview";
//		}else {
//			return "redirect:/food";
//		}
//	}
//	
//	
//	
//	@PostMapping({"/view","/update"})
//	public void view(int bno, @ModelAttribute("cri") Criteria cri,Model model) {
//		log.info("���� �ϳ� �������� "+bno+" cri : "+cri);  
//		
//		ReviewVO vo= service.read(bno);
//		model.addAttribute("vo", vo);
//	}
//	
//	@PreAuthorize("principal.username == #vo.reviewer")
//	@PostMapping("/update")
//	public String update(ReviewVO vo, Criteria cri,RedirectAttributes rttr) {
//		log.info("���� ���� ��û "+vo+"������ ������ "+cri);
//		
//		service.update(vo);
//		rttr.addFlashAttribute("result","����");
//		
//		rttr.addAttribute("pageNum", cri.getPageNum());
//		rttr.addAttribute("amount", cri.getAmount());
//		return "redirect:foodReview";	
//	}
//	
//	@PreAuthorize("principal.username == #vo.reviewer")
//	@PostMapping("/delete")
//	public String delete(int bno, Criteria cri, RedirectAttributes rttr) {
//		log.info("���� ���� ��û "+bno);
//		
//		service.delete(bno);
//		rttr.addFlashAttribute("result", "����");
//		
//		rttr.addAttribute("pageNum", cri.getPageNum());
//		rttr.addAttribute("amount", cri.getAmount());
//		return "redirect:foodReview";	
//	}
	
}


