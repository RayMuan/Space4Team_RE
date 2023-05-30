package com.space4team.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SpaceController {

	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main() {
		System.out.println("UserController main()");
		
	return "page/main";
	}//main
	
	@RequestMapping(value = "/spaceInfo", method = RequestMethod.GET)
	public String spaceInfo() {
		System.out.println("SpaceController spaceInfo");
		
	return "page/spaceInfo";
	}
	
}//SpaceController
