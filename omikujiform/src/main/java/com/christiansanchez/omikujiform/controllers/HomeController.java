package com.christiansanchez.omikujiform.controllers;

import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {
	
	//Display form
	@GetMapping("/omikuji")
	public String displaySearchForm() {
		return "/searchForm/searchForm.jsp";
	}
	
	//Process form
	@PostMapping("/omikuji/process")
	public String processResultForm(
			@RequestParam("number")Integer number,
			@RequestParam("city")String city,
			@RequestParam("person")String person,
			@RequestParam("hobby")String hobby,
			@RequestParam("thing")String thing,
			@RequestParam("something")String something,
			HttpSession session
			) {
		session.setAttribute("number", number);
		session.setAttribute("city", city);
		session.setAttribute("person", person);
		session.setAttribute("hobby", hobby);
		session.setAttribute("thing", thing);
		session.setAttribute("something", something);
		
		return "redirect:/omikuji/show";
	}
	
	//Display results
	@RequestMapping("/omikuji/show")
	public String displayResultForm() {
		return "/searchForm/searchResult.jsp";
	}
}
