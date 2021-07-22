package com.spring.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.spring.domain.Criteria;
import com.spring.domain.FreeReplyPageVO;
import com.spring.domain.FreeReplyVO;
import com.spring.service.FreeReplyService;

import lombok.extern.log4j.Log4j2;

@RestController
@Log4j2
@RequestMapping("/replies/*")
public class ReplyController {

	@Autowired
	private FreeReplyService service;
	
	@PreAuthorize("isAuthenticated()")
	@PostMapping("/new")
	public ResponseEntity<String> create(@RequestBody FreeReplyVO reply){
		log.info("댓글 삽입 요청 "+reply);
		
		return service.replyInsert(reply)?new ResponseEntity<String>("success",HttpStatus.OK):
			new ResponseEntity<String>("fail",HttpStatus.BAD_REQUEST);
	}
	
	@GetMapping("/{rno}")
	public ResponseEntity<FreeReplyVO> read(@PathVariable("rno") int rno){
		log.info("댓글 하나 가져오기 "+rno);
		
		return new ResponseEntity<>(service.replyRead(rno),HttpStatus.OK);
	}
	
	@PreAuthorize("principal.username == #reply.replyer")
	@PutMapping("/{rno}")
	public ResponseEntity<String> update(@PathVariable("rno") int rno,@RequestBody FreeReplyVO reply){
		log.info("댓글 수정 "+rno+" 수정 내용 "+reply);
		
		reply.setRno(rno);
		
		return service.replyUpdate(reply)?new ResponseEntity<String>("success",HttpStatus.OK):
			new ResponseEntity<String>("fail",HttpStatus.BAD_REQUEST);
	}
	
	@PreAuthorize("principal.username == #vo.replyer")
	@DeleteMapping("/{rno}")
	public ResponseEntity<String> delete(@PathVariable("rno") int rno,@RequestBody FreeReplyVO vo){
		log.info("댓글 삭제 "+rno);
		
		return service.replyDelete(rno)?new ResponseEntity<String>("success",HttpStatus.OK):
			new ResponseEntity<String>("fail",HttpStatus.BAD_REQUEST);
	}
	
	@GetMapping("/pages/{bno}/{page}")
	public ResponseEntity<FreeReplyPageVO> getList(@PathVariable("bno") int bno,@PathVariable("page") int page){
		log.info("댓글 가져오기 "+bno+" page "+page);
		
		Criteria cri = new Criteria(page, 10);
		
		return new ResponseEntity<FreeReplyPageVO>(service.getList(cri, bno),HttpStatus.OK);
	}
}
