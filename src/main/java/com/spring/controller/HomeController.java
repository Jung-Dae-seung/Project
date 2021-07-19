package com.spring.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
	public String home(Locale locale, Model model) {
		log.info("Welcome home! The client locale is {}.", locale);
		

		return "index";
	}
	
	@GetMapping("/community")
	public String community() {
		log.info("community page");
		
		return "community/main";
	}
	
	@GetMapping("/food")
	public String foodGet() {
		log.info("food page");
		
		return "food";
	}
	
	@GetMapping("/foodlist")
	public void foodlistGet(@RequestParam("subway_name") String subway_name, Model model) {
		log.info("지하철 값 넘기기");
		log.info(subway_name);
		SubwayDataVO vo = service.subwaySelect(subway_name);
		  
		model.addAttribute("vo", vo);
		
	}
	 
	
	@GetMapping("/main")
	public String mainGet() {
		log.info("main page");
		
		return "community/main";
	}
	
	
	
}
