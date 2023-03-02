package com.christiansanchez.hoppersreceipt;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HopperController {
	
//	@GetMapping("/sessions/home")
//	public String sessionHome(HttpSession session) {
//		if(session.getAttribute("count") == null) {
//			session.setAttribute("count", 0);
//		}else {
//			Integer tempCount = (Integer) session.getAttribute("count");
//			session.setAttribute("count", tempCount+1);
//		}
//		return "/sessions/home.jsp";
//	}
//	
//	@GetMapping("/sessions/display")
//	public String displaySession() {
//		return "/sessions/display.jsp";
//	}
	
//	@GetMapping("/omikuji")
//	public String displaySearchForm() {
//		return "/searchForm/searchForm.jsp";
//	}
//	
//	@GetMapping("/omikuji/show")
//	public String displaySearchResult(@RequestParam("city")String city, @RequestParam("person")String person, @RequestParam("hobby")String hobby, 
//	@RequestParam("thing")String thing, @RequestParam("something")String something, Model model) {
//		model.addAttribute("city", city);
//		model.addAttribute("person", person);
//		model.addAttribute("hobby", hobby);
//		model.addAttribute("thing", thing);
//		model.addAttribute("something", something);
//		return "/searchForm/searchResult.jsp";
//	}
	
	
	@RequestMapping("/")
    public String index(Model model) {
        
        String name = "Grace Hopper";
        String itemName = "Copper wire";
        double price = 5.25;
        String description = "Metal strips, also an illustration of nanoseconds.";
        String vendor = "Little Things Corner Store";
    
    	// Your code here! Add values to the view model to be rendered
        model.addAttribute("name", name);
        model.addAttribute("item", itemName);
        model.addAttribute("price", price);
        model.addAttribute("description", description);
        model.addAttribute("vendor", vendor);
        return "index.jsp";
    }
   
    


}
