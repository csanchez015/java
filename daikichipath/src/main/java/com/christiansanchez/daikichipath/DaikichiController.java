package com.christiansanchez.daikichipath;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController

public class DaikichiController {

		@RequestMapping("/daikichi")
		public String hello() {
			return "Welcome!";
		}
		
		@RequestMapping("/daikichi/today")
		public String today() {
			return "Today you will find luck in all your endeavors!";
		}
		
		@RequestMapping("/daikichi/tomorrow")
		public String tomorrow() {
			return "Tomorrow, an opportunity will arise. so be sure to be open to new ideas!";
		}
		
		@RequestMapping("/daikichi/{color}/{number}/{adjective}")
		public String crossRoads(@PathVariable("color") String color, @PathVariable("number") String number, @PathVariable("adjective") String adjective) {
			return "Wondering how I would make a "+color +" "+"library that has "+number+" "+"and "+adjective+" "+"people walking around.";
		}
		@RequestMapping("/daikichi/travel/{kyoto}")
		public String travel(@PathVariable("kyoto") String kyoto) {
			return "Congragulations! You will soon travel to kyoto!" ;
		}
		
		@RequestMapping("/daikichi/lotto/{number}")
		public String enjoy(@PathVariable("number") int number) {
			if(number %2 != 0) {
				return "You have enjoyed the fruits of your labor but now is a great time to spend time with family and friends.";
			}else {
				return "You will take a grand journey in the near future, but be weary of tempting offers.";
			}
		}
		
}