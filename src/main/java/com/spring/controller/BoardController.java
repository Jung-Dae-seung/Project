package com.spring.controller;

import java.io.IOException;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
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
	@GetMapping("/freeBoard")
	public void list_f(Model model,Criteria cri) {
		log.info("��ü ����Ʈ ��û ");
		
		//����ڰ� ������ ������ �Խù�
		List<FreeBoardVO> list=service.list_f(cri);
		//��ü �Խù� �� 
		int total = service.total_f(cri);
				
		model.addAttribute("list", list);
		model.addAttribute("pageVO", new PageVO(cri, total));
	}	
	
	//ȫ���Խ��� - list
	@GetMapping("/proBoard")
	public void list_p(Model model,Criteria cri) {
		log.info("��ü ����Ʈ ��û ");
		
		//����ڰ� ������ ������ �Խù�
		List<ProBoardVO> list=service.list_p(cri);
		//��ü �Խù� �� 
		int total = service.total_p(cri);
				
		model.addAttribute("list", list);
		model.addAttribute("pageVO", new PageVO(cri, total));
	}	
	
	@GetMapping("/InqBoard")
	public void list_i(Model model,Criteria cri) {
		log.info("��ü ����Ʈ ��û ");
		
		//����ڰ� ������ ������ �Խù�
		List<InqBoardVO> list=service.list_i(cri);
		//��ü �Խù� �� 
		int total = service.total_i(cri);
		
		model.addAttribute("list", list);
		model.addAttribute("pageVO", new PageVO(cri, total));
	}	
	
	
	//�����Խ��� - �Խñ� ���
	@PreAuthorize("isAuthenticated()")
	@GetMapping("/write")
	public void write_f() {
		log.info("���� ��� �� ��û");
	}
	
	@PreAuthorize("isAuthenticated()")
	@PostMapping("/write")
	public String writePost_f(FreeBoardVO vo,RedirectAttributes rttr) {
		log.info("���� ��� ��û "+vo);
		
		//÷�� ���� Ȯ��
		if(vo.getAttachList()!=null) {
			vo.getAttachList().forEach(attach -> log.info(""+attach));
		}	
		
		if(service.insert_f(vo)) {
			//log.info("�Էµ� �� ��ȣ "+vo.getBno());
			rttr.addFlashAttribute("result", vo.getBno());
			return "redirect:freeBoard";   
		}else {
			return "redirect:write"; 
		}
	}
	
	
	//ȫ���Խ��� - �Խñ� ���
		@PreAuthorize("isAuthenticated()")
		@GetMapping("/Pwrite")
		public void write_p() {
			log.info("���� ��� �� ��û");
		}
		
		@PreAuthorize("isAuthenticated()")
		@PostMapping("/Pwrite")
		public String writePost_p(ProBoardVO vo,RedirectAttributes rttr) {
			log.info("���� ��� ��û "+vo);
			
			//÷�� ���� Ȯ��
			if(vo.getAttachList()!=null) {
				vo.getAttachList().forEach(attach -> log.info(""+attach));
			}	
			
			if(service.insert_p(vo)) {
				//log.info("�Էµ� �� ��ȣ "+vo.getBno());
				rttr.addFlashAttribute("result", vo.getBno());
				return "redirect:proBoard";   
			}else {
				return "redirect:Pwrite"; 
			}
		}
	
		@PreAuthorize("isAuthenticated()")
		@GetMapping("/inqwrite")
		public void write_i() {
			log.info("���� ��� �� ��û");
		}
		
		@PreAuthorize("isAuthenticated()")
		@PostMapping("/inqwrite")
		public String writePost_i(InqBoardVO vo,RedirectAttributes rttr) {
			log.info("���� ��� ��û "+vo);
			
			//÷�� ���� Ȯ��
			if(vo.getAttachList()!=null) {
				vo.getAttachList().forEach(attach -> log.info(""+attach));
			}	
			
			if(service.insert_i(vo)) {
				//log.info("�Էµ� �� ��ȣ "+vo.getBno());
				rttr.addFlashAttribute("result", vo.getBno());
				return "redirect:InqBoard";    //   redirect:/board/list
			}else {
				return "redirect:inqwrite"; //  redirect:/board/register
			}
		}
	
	//�����Խ��� �� �ϳ� �б�
	@GetMapping({"/view","/update"})
	public void read_f(int bno,@ModelAttribute("cri") Criteria cri,Model model) {
		log.info("�� �ϳ� �������� "+bno+" cri : "+cri);  
		
		FreeBoardVO vo=service.read_f(bno);
		model.addAttribute("vo", vo);	
	}
	
	
	//ȫ���Խ��� �� �ϳ� �б�
		@GetMapping({"/Pview","/Pupdate"})
		public void read_p(int bno,@ModelAttribute("cri") Criteria cri,Model model) {
			log.info("�� �ϳ� �������� "+bno+" cri : "+cri);  
			
			ProBoardVO vo=service.read_p(bno);
			model.addAttribute("vo", vo);	
		}
	
		@GetMapping({"/inqview","/inqupdate"})
		public void read_i(int bno,@ModelAttribute("cri") Criteria cri,Model model) {
			log.info("�� �ϳ� �������� "+bno+" cri : "+cri);  
			
			InqBoardVO vo=service.read_i(bno);
			model.addAttribute("vo", vo);	//	/board/read  or  /board/modify 
		}
		
	
	// �����Խ���-modify+post ������ �� list 
	 	@PreAuthorize("principal.username == #vo.writer")
		@PostMapping("/update")
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
			return "redirect:freeBoard";	
		}
	 	
	 	
	 // ȫ���Խ���-modify+post ������ �� list 
	 	 	@PreAuthorize("principal.username == #vo.writer")
	 		@PostMapping("/Pupdate")
	 		public String modify_p(ProBoardVO vo,Criteria cri,RedirectAttributes rttr) {
	 			log.info("���� ��û "+vo+" ������ ������ "+cri);
	 			
	 			//÷�� ���� Ȯ��
	 			if(vo.getAttachList()!=null) {
	 				vo.getAttachList().forEach(attach -> log.info(""+attach));
	 			}	
	 			
	 			service.update_p(vo);
	 			
	 			rttr.addFlashAttribute("result","����");

	 			rttr.addAttribute("type", cri.getType());
	 			rttr.addAttribute("keyword", cri.getKeyword());
	 			rttr.addAttribute("pageNum", cri.getPageNum());
	 			rttr.addAttribute("amount", cri.getAmount());
	 			return "redirect:proBoard";	
	 		}
	 	
		 	@PreAuthorize("principal.username == #vo.writer")
		 	@PostMapping("/inqupdate")
		 	public String modify_i(InqBoardVO vo,Criteria cri,RedirectAttributes rttr) {
		 		log.info("���� ��û "+vo+" ������ ������ "+cri);
		 		
		 		//÷�� ���� Ȯ��
		 		if(vo.getAttachList()!=null) {
		 			vo.getAttachList().forEach(attach -> log.info(""+attach));
		 		}	
		 		
		 		service.update_i(vo);		
		 		
		 		rttr.addFlashAttribute("result","����");
		 		
		 		rttr.addAttribute("type", cri.getType());
		 		rttr.addAttribute("keyword", cri.getKeyword());
		 		rttr.addAttribute("pageNum", cri.getPageNum());
		 		rttr.addAttribute("amount", cri.getAmount());
		 		return "redirect:InqBoard";
		 	}
	 	
		// �����Խ��� - �Խñ� ����
		@PreAuthorize("principal.username == #vo.writer")
		@PostMapping("/remove")
		public String delete_f(int bno,Criteria cri, RedirectAttributes rttr) {
			log.info("���� ��û"+bno);
			
			//����(����)�� ����� ÷������ ����
			// 1) bno�� �ش��ϴ� ÷������ ��� �˾Ƴ���
			List<FreeAttachFileDTO> attachList=service.getAttachList_f(bno);
			
			//�Խñ� ���� + ÷������ ����
			if(service.delete_f(bno)) {
				// 2) ���� ���� ����
				deleteFiles(attachList);
				rttr.addFlashAttribute("result","����");
			}
			
			rttr.addAttribute("type", cri.getType());
			rttr.addAttribute("keyword", cri.getKeyword());
			rttr.addAttribute("pageNum", cri.getPageNum());
			rttr.addAttribute("amount", cri.getAmount());
			return "redirect:freeBoard";
		}
		
		
		// ȫ���Խ��� - �Խñ� ����
				@PreAuthorize("principal.username == #vo.writer")
				@PostMapping("/Premove")
				public String delete_p(int bno,Criteria cri, RedirectAttributes rttr) {
					log.info("���� ��û"+bno);
					
					//����(����)�� ����� ÷������ ����
					// 1) bno�� �ش��ϴ� ÷������ ��� �˾Ƴ���
					List<ProAttachFileDTO> attachList=service.getAttachList_p(bno);
					
					//�Խñ� ���� + ÷������ ����
					if(service.delete_p(bno)) {
						// 2) ���� ���� ����
						deleteFiles_p(attachList);
						rttr.addFlashAttribute("result","����");
					}
					
					rttr.addAttribute("type", cri.getType());
					rttr.addAttribute("keyword", cri.getKeyword());
					rttr.addAttribute("pageNum", cri.getPageNum());
					rttr.addAttribute("amount", cri.getAmount());
					return "redirect:proBoard";
				}
		
				@PreAuthorize("principal.username == #vo.writer")
				@PostMapping("/inqremove")
				public String delete_i(int bno,Criteria cri, RedirectAttributes rttr) {
					log.info("���� ��û"+bno);
					
					//����(����)�� ����� ÷������ ����
					// 1) bno�� �ش��ϴ� ÷������ ��� �˾Ƴ���
					List<FreeAttachFileDTO> attachList=service.getAttachList_f(bno);
					
					//�Խñ� ���� + ÷������ ����
					if(service.delete_i(bno)) {
						// 2) ���� ���� ����
						deleteFiles(attachList);
						rttr.addFlashAttribute("result","����");
					}
					
					rttr.addAttribute("type", cri.getType());
					rttr.addAttribute("keyword", cri.getKeyword());
					rttr.addAttribute("pageNum", cri.getPageNum());
					rttr.addAttribute("amount", cri.getAmount());
					return "redirect:InqBoard";
				}
				
		//�����Խ��� - ÷�ι� ��������
		@GetMapping("/getAttachList")
		public ResponseEntity<List<FreeAttachFileDTO>> getAttachList(int bno){
			log.info("÷�ι� �������� "+bno);
			
			return new ResponseEntity<List<FreeAttachFileDTO>>(service.getAttachList_f(bno),HttpStatus.OK);
		}
		
		
		private void deleteFiles(List<FreeAttachFileDTO> attachList) {
			log.info("÷������ ���� "+attachList);
			
			if(attachList==null || attachList.size()<=0) {
				return;
			}
			
			for(FreeAttachFileDTO dto:attachList) {
				Path path = Paths.get("c:\\upload\\", dto.getUploadPath()+"\\"+dto.getUuid()+"_"+dto.getFileName());
				
				try {
					Files.deleteIfExists(path);
					
					if(Files.probeContentType(path).startsWith("image")) {
						Path thumbnail = Paths.get("c:\\upload\\", 
								dto.getUploadPath()+"\\s_"+dto.getUuid()+"_"+dto.getFileName());
						Files.delete(thumbnail);
					}
				} catch (IOException e) {				
					e.printStackTrace();
				}
				
			}
		}
		
		//ȫ���Խ��� - ÷�ι� ��������
				@GetMapping("/PgetAttachList")
				public ResponseEntity<List<ProAttachFileDTO>> getAttachList_p(int bno){
					log.info("÷�ι� �������� "+bno);
					
					return new ResponseEntity<List<ProAttachFileDTO>>(service.getAttachList_p(bno),HttpStatus.OK);
				}
				
				
				private void deleteFiles_p(List<ProAttachFileDTO> attachList) {
					log.info("÷������ ���� "+attachList);
					
					if(attachList==null || attachList.size()<=0) {
						return;
					}
					
					for(ProAttachFileDTO dto:attachList) {
						Path path = Paths.get("c:\\upload\\", dto.getUploadPath()+"\\"+dto.getUuid()+"_"+dto.getFileName());
						
						try {
							Files.deleteIfExists(path);
							
							if(Files.probeContentType(path).startsWith("image")) {
								Path thumbnail = Paths.get("c:\\upload\\", 
										dto.getUploadPath()+"\\s_"+dto.getUuid()+"_"+dto.getFileName());
								Files.delete(thumbnail);
							}
						} catch (IOException e) {				
							e.printStackTrace();
						}
						
					}
				}
}

