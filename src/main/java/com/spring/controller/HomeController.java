package com.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.domain.SubwayDataVO;
import com.spring.service.SubwayService;

import lombok.extern.log4j.Log4j2;

/**
 * Handles requests for the application home page.
 */
@Controller
@Log4j2
public class HomeController {

	@Autowired
	private SubwayService service;
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		log.info("home");

			return "index";
	}
	
	@PostMapping("/")
	public String homePost(RedirectAttributes rttr, String lineNum) {
		log.info("post index : "+lineNum);
		rttr.addFlashAttribute("lineNum",lineNum);
		
		return "redirect:/";
	}
	
//	@GetMapping("/get")
//	public String getLineNum(Model model,String lineNum) {
//		log.info("getgetget index : "+lineNum);
//		model.addAttribute("lineNum",lineNum);
//		
//		return "redirect:/";
//	}
	
	@RequestMapping(value= "/except", method = RequestMethod.GET)
	public String except() {
		log.info("except ��û");
		
		return "except";
	}
	
	@GetMapping("/community")
	public String communityGet() {
		log.info("community page");
		
		return "community";
	}
	
	@PreAuthorize("isAnonymous")
	@PostMapping("food")
	public String foodPost() {
		log.info("food page");
		
		return "food";
	}
	
	@GetMapping("/foodlist")
	public void foodlistGet(@RequestParam("subway_name") String subway_name, Model model) {
		log.info("����ö �뼱�� �ҷ�����");
		log.info(subway_name);
		SubwayDataVO vo = service.subwaySelect(subway_name);
		  
		model.addAttribute("vo", vo);
		
	}	
	
}
