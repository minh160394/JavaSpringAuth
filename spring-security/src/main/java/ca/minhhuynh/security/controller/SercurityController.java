package ca.minhhuynh.security.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SercurityController {
	@GetMapping("/")
	public String showHome(){
		return "home";
	}
	
	//add request mapping for / leader
	@GetMapping("/leaders")
	public String showLeaders(){
		return "leaders";
	}
	
}
