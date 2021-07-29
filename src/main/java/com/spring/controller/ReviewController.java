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
		log.info("리뷰 가져오기 "+storeid+" page "+page);
		
		Criteria cri = new Criteria(page, 5);
		
		return new ResponseEntity<ReviewPageVO>(service.list(cri, storeid),HttpStatus.OK);
	}
	// 별점 평균 뽑기용 전체 리스트 (페이지 제거)
	@GetMapping("/pages/{storeid}")
	public ResponseEntity<ReviewPageVO>getStar(@PathVariable("storeid") String storeid){
		log.info("리뷰 가져오기 "+storeid);
		
		return new ResponseEntity<ReviewPageVO>(service.starlist(storeid),HttpStatus.OK);
	}
	
	// insert
	@PreAuthorize("isAuthenticated()")
	@PostMapping("/new")
	public ResponseEntity<String> create(@RequestBody ReviewVO review){
		log.info("리뷰 입력 요청 "+review);
		
		return service.insert(review)?new ResponseEntity<String>("success",HttpStatus.OK):
			new ResponseEntity<String>("fail",HttpStatus.BAD_REQUEST);
	}
	
	
	// read
	@GetMapping("/{bno}")
	public ResponseEntity<ReviewVO> read(@PathVariable("bno") int bno){
		log.info("리뷰 하나 가져오기 "+bno);
		
		return new ResponseEntity<>(service.read(bno),HttpStatus.OK);
	}
	
	// update
	@PreAuthorize("principal.username == #review.reviewer")
	@PutMapping("/{bno}")
	public ResponseEntity<String> update(@PathVariable("bno") int bno,@RequestBody ReviewVO review){
		log.info("리뷰 수정 "+bno+" 리뷰 내용 "+review);
		
		review.setBno(bno);
		
		return service.update(review)?new ResponseEntity<String>("success",HttpStatus.OK):
			new ResponseEntity<String>("fail",HttpStatus.BAD_REQUEST);
	}
	
	// delete
	@PreAuthorize("principal.username == #vo.reviewer")
	@DeleteMapping("/{bno}")
	public ResponseEntity<String> delete(@PathVariable("bno") int bno,@RequestBody ReviewVO vo){
		log.info("리뷰 삭제 "+bno);
		
		return service.delete(bno)?new ResponseEntity<String>("success",HttpStatus.OK):
			new ResponseEntity<String>("fail",HttpStatus.BAD_REQUEST);
	}
	
	
	
	
	
//	@GetMapping("/list")
//    public void list(Model model, Criteria cri) {
//    	log.info("전체 리뷰 요청");
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
//		log.info("새 리뷰 등록 요청 "+vo);
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
//		log.info("리뷰 하나 가져오기 "+bno+" cri : "+cri);  
//		
//		ReviewVO vo= service.read(bno);
//		model.addAttribute("vo", vo);
//	}
//	
//	@PreAuthorize("principal.username == #vo.reviewer")
//	@PostMapping("/update")
//	public String update(ReviewVO vo, Criteria cri,RedirectAttributes rttr) {
//		log.info("리뷰 수정 요청 "+vo+"페이지 나누기 "+cri);
//		
//		service.update(vo);
//		rttr.addFlashAttribute("result","성공");
//		
//		rttr.addAttribute("pageNum", cri.getPageNum());
//		rttr.addAttribute("amount", cri.getAmount());
//		return "redirect:foodReview";	
//	}
//	
//	@PreAuthorize("principal.username == #vo.reviewer")
//	@PostMapping("/delete")
//	public String delete(int bno, Criteria cri, RedirectAttributes rttr) {
//		log.info("리뷰 삭제 요청 "+bno);
//		
//		service.delete(bno);
//		rttr.addFlashAttribute("result", "성공");
//		
//		rttr.addAttribute("pageNum", cri.getPageNum());
//		rttr.addAttribute("amount", cri.getAmount());
//		return "redirect:foodReview";	
//	}
	
}


