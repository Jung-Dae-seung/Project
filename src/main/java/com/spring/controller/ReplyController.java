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
import com.spring.domain.InqReplyPageVO;
import com.spring.domain.InqReplyVO;
import com.spring.domain.ProReplyPageVO;
import com.spring.domain.ProReplyVO;
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
	
	@PreAuthorize("isAuthenticated()")
	@PostMapping("/pnew")
	public ResponseEntity<String> create_p(@RequestBody ProReplyVO reply){
		log.info("댓글 삽입 요청 "+reply);
		
		return service.replyInsert_p(reply)?new ResponseEntity<String>("success",HttpStatus.OK):
			new ResponseEntity<String>("fail",HttpStatus.BAD_REQUEST);
	}
	
	@PreAuthorize("isAuthenticated()")
	@PostMapping("/inew")
	public ResponseEntity<String> create_i(@RequestBody InqReplyVO reply){
		log.info("댓글 삽입 요청 "+reply);
		
		return service.replyInsert_i(reply)?new ResponseEntity<String>("success",HttpStatus.OK):
			new ResponseEntity<String>("fail",HttpStatus.BAD_REQUEST);
	}
	
	@GetMapping("/{rno}")
	public ResponseEntity<FreeReplyVO> read(@PathVariable("rno") int rno){
		log.info("댓글 하나 가져오기 "+rno);
		
		return new ResponseEntity<>(service.replyRead(rno),HttpStatus.OK);
	}
	
	@GetMapping("/pro/{rno}")
	public ResponseEntity<ProReplyVO> read_p(@PathVariable("rno") int rno){
		log.info("댓글 하나 가져오기 "+rno);
		
		return new ResponseEntity<>(service.replyRead_p(rno),HttpStatus.OK);
	}
	
	@GetMapping("/inq/{rno}")
	public ResponseEntity<InqReplyVO> read_i(@PathVariable("rno") int rno){
		log.info("댓글 하나 가져오기 "+rno);
		
		return new ResponseEntity<>(service.replyRead_i(rno),HttpStatus.OK);
	}
	
	@PreAuthorize("principal.username == #reply.replyer")
	@PutMapping("/{rno}")
	public ResponseEntity<String> update(@PathVariable("rno") int rno,@RequestBody FreeReplyVO reply){
		log.info("댓글 수정 "+rno+" 수정 내용 "+reply);
		
		reply.setRno(rno);
		
		return service.replyUpdate(reply)?new ResponseEntity<String>("success",HttpStatus.OK):
			new ResponseEntity<String>("fail",HttpStatus.BAD_REQUEST);
	}
	
	@PreAuthorize("principal.username == #reply.replyer")
	@PutMapping("/pro/{rno}")
	public ResponseEntity<String> update_p(@PathVariable("rno") int rno,@RequestBody ProReplyVO reply){
		log.info("댓글 수정 "+rno+" 수정 내용 "+reply);
		
		reply.setRno(rno);
		
		return service.replyUpdate_p(reply)?new ResponseEntity<String>("success",HttpStatus.OK):
			new ResponseEntity<String>("fail",HttpStatus.BAD_REQUEST);
	}
	
	@PreAuthorize("principal.username == #reply.replyer")
	@PutMapping("/inq/{rno}")
	public ResponseEntity<String> update_i(@PathVariable("rno") int rno,@RequestBody InqReplyVO reply){
		log.info("댓글 수정 "+rno+" 수정 내용 "+reply);
		
		reply.setRno(rno);
		
		return service.replyUpdate_i(reply)?new ResponseEntity<String>("success",HttpStatus.OK):
			new ResponseEntity<String>("fail",HttpStatus.BAD_REQUEST);
	}
	
	@PreAuthorize("principal.username == #vo.replyer")
	@DeleteMapping("/{rno}")
	public ResponseEntity<String> delete(@PathVariable("rno") int rno,@RequestBody FreeReplyVO vo){
		log.info("댓글 삭제 "+rno);
		
		return service.replyDelete(rno)?new ResponseEntity<String>("success",HttpStatus.OK):
			new ResponseEntity<String>("fail",HttpStatus.BAD_REQUEST);
	}
	
	@PreAuthorize("principal.username == #vo.replyer")
	@DeleteMapping("/pro/{rno}")
	public ResponseEntity<String> delete_p(@PathVariable("rno") int rno,@RequestBody ProReplyVO vo){
		log.info("댓글 삭제 "+rno);
		
		return service.replyDelete_p(rno)?new ResponseEntity<String>("success",HttpStatus.OK):
			new ResponseEntity<String>("fail",HttpStatus.BAD_REQUEST);
	}
	
	@PreAuthorize("principal.username == #vo.replyer")
	@DeleteMapping("/inq/{rno}")
	public ResponseEntity<String> delete_i(@PathVariable("rno") int rno,@RequestBody InqReplyVO vo){
		log.info("댓글 삭제 "+rno);
		
		return service.replyDelete_i(rno)?new ResponseEntity<String>("success",HttpStatus.OK):
			new ResponseEntity<String>("fail",HttpStatus.BAD_REQUEST);
	}
	
	@GetMapping("/pages/{bno}/{page}")
	public ResponseEntity<FreeReplyPageVO> getList(@PathVariable("bno") int bno,@PathVariable("page") int page){
		log.info("댓글 가져오기 "+bno+" page "+page);
		
		Criteria cri = new Criteria(page, 10);
		
		return new ResponseEntity<FreeReplyPageVO>(service.getList(cri, bno),HttpStatus.OK);
	}
	
	@GetMapping("/pro/pages/{bno}/{page}")
	public ResponseEntity<ProReplyPageVO> getList_p(@PathVariable("bno") int bno,@PathVariable("page") int page){
		log.info("댓글 가져오기 "+bno+" page "+page);
		
		Criteria cri = new Criteria(page, 10);
		
		return new ResponseEntity<ProReplyPageVO>(service.getList_p(cri, bno),HttpStatus.OK);
	}
	
	@GetMapping("/inq/pages/{bno}/{page}")
	public ResponseEntity<InqReplyPageVO> getList_i(@PathVariable("bno") int bno,@PathVariable("page") int page){
		log.info("댓글 가져오기 "+bno+" page "+page);
		
		Criteria cri = new Criteria(page, 10);
		
		return new ResponseEntity<InqReplyPageVO>(service.getList_i(cri, bno),HttpStatus.OK);
	}
	
}
