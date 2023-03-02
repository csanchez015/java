package com.christiansanchez.dojosandninjas.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.christiansanchez.dojosandninjas.models.Dojo;
import com.christiansanchez.dojosandninjas.models.Ninja;
import com.christiansanchez.dojosandninjas.services.DojoService;
import com.christiansanchez.dojosandninjas.services.NinjaService;


@Controller
public class MainController {
	
	@Autowired
	private DojoService dojoService;
	
	@Autowired
	private NinjaService ninjaService;
	
	
	@GetMapping("/")
	public String index() {
		return "redirect:/dojos/new";
	}
	
	
	@GetMapping("/dojos/new")
	public String newDojo(@ModelAttribute("dojo") Dojo dojo, Model model) {
		model.addAttribute("dojos", dojoService.allDojos());
		return "newDojo.jsp";
	}
	
	
	@PostMapping("/dojos/new")
	public String newDojo(@Valid @ModelAttribute("dojo") Dojo dojo, BindingResult result) {
		if(result.hasErrors()) {
			return "newDojo.jsp";
		}else {
			dojoService.addDojo(dojo);
			return "redirect:/ninjas/new";
		}
	}
	
	
	@GetMapping("/ninjas/new")
	public String newNinja( @ModelAttribute("ninja")Ninja ninja, Model model) {
		List<Ninja> ninjas = ninjaService.allNinjas();
		model.addAttribute("ninjas", ninjas);
		model.addAttribute("dojos", dojoService.allDojos());
		return "newNinja.jsp";
	}
	
	
	@PostMapping("/ninjas/new")
	public String addNewNinja(@Valid @ModelAttribute("ninja")Ninja ninja, BindingResult result, Model model) {
		if(result.hasErrors()) {
			model.addAttribute("dojo", dojoService.allDojos());
			return "newNinja.jsp";
		}else {
			ninjaService.addNinja(ninja);
			return "redirect:/dojos/" + ninja.getDojo().getId();
		}
	}
	
	
	@GetMapping("/dojos/{id}")
	public String allNinjas(@PathVariable("id")Long id, @ModelAttribute("ninja")Ninja ninja, Model model) {
		List<Ninja> ninjas = ninjaService.dojoNinjas(id);
		model.addAttribute("ninjas", ninjas);
		model.addAttribute("dojos", dojoService.oneDojo(id));
		return "ninjas.jsp";
	}
	


}
