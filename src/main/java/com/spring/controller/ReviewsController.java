package com.spring.controller;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.domain.ReviewVO;

@Controller
public class ReviewsController {

    @ResponseBody
    @RequestMapping(value = "/reviews", method = RequestMethod.POST)
    public String create(@ModelAttribute ReviewVO review) {
    	System.out.println(review);
        return review.toString();
    }
}