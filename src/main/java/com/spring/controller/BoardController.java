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
	
	//자유게시판 - list
	@GetMapping("/freeBoard")
	public void list_f(Model model,Criteria cri) {
		log.info("전체 리스트 요청 ");
		
		//사용자가 선택한 페이지 게시물
		List<FreeBoardVO> list=service.list_f(cri);
		//전체 게시물 수 
		int total = service.total_f(cri);
				
		model.addAttribute("list", list);
		model.addAttribute("pageVO", new PageVO(cri, total));
	}	
	
	
	@GetMapping("/write")
	public void view() {
		log.info("새글 등록 폼 요청");
	}
	
	//자유게시판 - 게시글 등록
	@PostMapping("/write")
	public String viewPost_f(FreeBoardVO vo,RedirectAttributes rttr) {
		log.info("새글 등록 요청 "+vo);
		
		if(service.insert_f(vo)) {
			//log.info("입력된 글 번호 "+vo.getBno());
			rttr.addFlashAttribute("result", vo.getBno());
			return "redirect:freeBoard";    //   redirect:/board/list
		}else {
			return "redirect:write"; //  redirect:/board/register
		}
	}
	
	
	//자유게시판 글 하나 읽기
	@GetMapping({"/view","/update"})
	public void read_f(int bno,@ModelAttribute("cri") Criteria cri,Model model) {
		log.info("글 하나 가져오기 "+bno+" cri : "+cri);  
		
		FreeBoardVO vo=service.read_f(bno);
		model.addAttribute("vo", vo);	//	/board/read  or  /board/modify 
	}
	
	// modify+post 수정한 후 list - 자유게시판
		@PostMapping("/update")
		public String modify_f(FreeBoardVO vo,Criteria cri,RedirectAttributes rttr) {
			log.info("수정 요청 "+vo+" 페이지 나누기 "+cri);
			
			//첨부 파일 확인
			if(vo.getAttachList()!=null) {
				vo.getAttachList().forEach(attach -> log.info(""+attach));
			}	
			
			service.update_f(vo);		
			
			rttr.addFlashAttribute("result","성공");

			rttr.addAttribute("type", cri.getType());
			rttr.addAttribute("keyword", cri.getKeyword());
			rttr.addAttribute("pageNum", cri.getPageNum());
			rttr.addAttribute("amount", cri.getAmount());
			return "redirect:freeBoard";
			
			
//			if(service.update_f(vo)) {
//				return "redirect:/freeBoard";
//			}else {
//				rttr.addFlashAttribute("tab","modify");
//				return "redirect:/";			
//			}
			
		}
		
		
		@PostMapping("/remove")
		public String delete_f(int bno,Criteria cri, RedirectAttributes rttr) {
			log.info("삭제 요청"+bno);
			
			//서버(폴더)에 저장된 첨부파일 삭제
			// 1) bno에 해당하는 첨부파일 목록 알아내기
			List<FreeAttachFileDTO> attachList=service.getAttachList_f(bno);
			
			//게시글 삭제 + 첨부파일 삭제
			if(service.delete_f(bno)) {
				// 2) 폴더 파일 삭제
				deleteFiles(attachList);
				rttr.addFlashAttribute("result","성공");
			}
			
			rttr.addAttribute("type", cri.getType());
			rttr.addAttribute("keyword", cri.getKeyword());
			rttr.addAttribute("pageNum", cri.getPageNum());
			rttr.addAttribute("amount", cri.getAmount());
			return "redirect:freeBoard";
		}
		
		
		//첨부물 가져오기
		@GetMapping("/getAttachList")
		public ResponseEntity<List<FreeAttachFileDTO>> getAttachList(int bno){
			log.info("첨부물 가져오기 "+bno);
			
			return new ResponseEntity<List<FreeAttachFileDTO>>(service.getAttachList_f(bno),HttpStatus.OK);
		}
		
		
		private void deleteFiles(List<FreeAttachFileDTO> attachList) {
			log.info("첨부파일 삭제 "+attachList);
			
			if(attachList==null || attachList.size()<=0) {
				return;
			}
			
			for(FreeAttachFileDTO dto:attachList) {
				Path path = Paths.get("d:\\upload\\", dto.getUploadPath()+"\\"+dto.getUuid()+"_"+dto.getFileName());
				
				try {
					Files.deleteIfExists(path);
					
					if(Files.probeContentType(path).startsWith("image")) {
						Path thumbnail = Paths.get("d:\\upload\\", 
								dto.getUploadPath()+"\\s_"+dto.getUuid()+"_"+dto.getFileName());
						Files.delete(thumbnail);
					}
				} catch (IOException e) {				
					e.printStackTrace();
				}
				
			}
		}
}








