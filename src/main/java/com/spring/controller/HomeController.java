package com.spring.controller;

import java.util.Locale;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.log4j.Log4j2;

/**
 * Handles requests for the application home page.
 */
@Controller
@Log4j2
public class HomeController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		log.info("Welcome home! The client locale is {}.", locale);
		

		return "index";
	}
	
	@GetMapping("/community")
	public String community() {
		log.info("community page");
		
		return "community";
	}
	
	@GetMapping("/food")
	public String foodGet() {
		log.info("food page");
		
		return "food";
	}
	
	@GetMapping("/foodlist")
	public String foodlistGet() {
		log.info("foodlist page");
		
		return "foodlist";
	}
	
	@GetMapping("/subway")
	public String subwayGet() {
		log.info("subway page");
		
		return "subway";
	}
	
	@GetMapping("/main")
	public String mainGet() {
		log.info("main page");
		
		return "community/main";
	}
	
	@GetMapping("/freeBoard")
	public String freeBoardGet() {
		log.info("freeBoard page");
		
		return "community/freeBoard";
	}
	
	@GetMapping("/write")
	public String writeGet() {
		log.info("write page");
		
		return "community/write";
	}
	
	@GetMapping("/view")
	public String viewGet() {
		log.info("view page");
		
		return "community/view";
	}
	
	@GetMapping("/update")
	public String updateGet() {
		log.info("update page");
		
		return "community/update";
	}
}
