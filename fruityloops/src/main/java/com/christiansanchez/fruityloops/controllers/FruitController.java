package com.christiansanchez.fruityloops.controllers;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.christiansanchez.fruityloops.models.Fruit;
@Controller
public class FruitController{
	
	@RequestMapping("/fruityLoop")
	public String fruityLoop(Model model) {
		
	ArrayList<Fruit> fruitList = new ArrayList<Fruit>();
	fruitList.add(new Fruit("Kiwi", 1.5));
	fruitList.add(new Fruit("Mango", 2.0));
	fruitList.add(new Fruit("Goji Berries", 4.0));
	fruitList.add(new Fruit("Guava", 0.75));
	
	model.addAttribute("fruitList", fruitList);
	
	return "fruityLoop.jsp";
	
	}
	
}
