package com.spring.controller;

import java.util.ArrayList;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.domain.ReviewVO;
import com.spring.service.ReviewService;

@Controller
public class ReviewsController {
	@Inject
	ReviewService service;

    @ResponseBody
    @RequestMapping(value = "/reviews", method = RequestMethod.GET)
    public String create(@ModelAttribute ReviewVO review) {
    	System.out.println(review);
        return review.toString();
//        return "review";
    }
}