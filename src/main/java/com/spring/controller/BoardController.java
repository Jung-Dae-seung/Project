package com.spring.controller;

import java.io.IOException;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.domain.FreeAttachFileDTO;
import com.spring.domain.FreeBoardVO;
import com.spring.domain.InqAttachFileDTO;
import com.spring.domain.InqBoardVO;
import com.spring.domain.Criteria;
import com.spring.domain.PageVO;
import com.spring.domain.ProAttachFileDTO;
import com.spring.domain.ProBoardVO;
import com.spring.service.BoardService;

import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
@RequestMapping("/")
public class BoardController {

	@Autowired
	private BoardService service;
	
	//�����Խ��� - list
	@GetMapping("/free_community")
	public void list_f(Model model,Criteria cri) {
		log.info("��ü ����Ʈ ��û ");
		
		//����ڰ� ������ ������ �Խù�
		List<FreeBoardVO> list=service.list_f(cri);
		//��ü �Խù� �� 
		int total = service.total_f(cri);
				
		model.addAttribute("list", list);
		model.addAttribute("pageVO", new PageVO(cri, total));
	}	
	
	//�����Խ��� �� �ϳ� �б�
	@GetMapping({"/read","/modify"})
	public void read_f(int bno,@ModelAttribute("cri") Criteria cri,Model model) {
		log.info("�� �ϳ� �������� "+bno+" cri : "+cri);  
		
		FreeBoardVO vo=service.read_f(bno);
		model.addAttribute("vo", vo);	//	/board/read  or  /board/modify 
	}
	
	// modify+post ������ �� list - �����Խ���
		@PostMapping("/modify")
		public String modify_f(FreeBoardVO vo,Criteria cri,RedirectAttributes rttr) {
			log.info("���� ��û "+vo+" ������ ������ "+cri);
			
			//÷�� ���� Ȯ��
			if(vo.getAttachList()!=null) {
				vo.getAttachList().forEach(attach -> log.info(""+attach));
			}	
			
			service.update_f(vo);		
			
			
			rttr.addFlashAttribute("result","����");
			
			rttr.addAttribute("type", cri.getType());
			rttr.addAttribute("keyword", cri.getKeyword());
			rttr.addAttribute("pageNum", cri.getPageNum());
			rttr.addAttribute("amount", cri.getAmount());
			
			
			return "redirect:free_board_list";
		}
		
		@GetMapping("/register")
		public void register() {
			log.info("���� ��� �� ��û");
		}
		
		@PostMapping("/register")
		public String registerPost_f(FreeBoardVO vo,RedirectAttributes rttr) {
			log.info("���� ��� ��û "+vo);
			
			//÷�� ���� Ȯ��
			if(vo.getAttachList()!=null) {
				vo.getAttachList().forEach(attach -> log.info(""+attach));
			}	
			
			
			if(service.insert_f(vo)) {
				//log.info("�Էµ� �� ��ȣ "+vo.getBno());
				rttr.addFlashAttribute("result", vo.getBno());
				return "redirect:free_community";    //   redirect:/board/list
			}else {
				return "redirect:register"; //  redirect:/board/register
			}
		}
		

}






















