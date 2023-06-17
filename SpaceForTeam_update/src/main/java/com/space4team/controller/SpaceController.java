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

	//로그인 페이지 이동
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		System.out.println("GuestController login()");
		
		return "page/login";
	}//login
	
	@RequestMapping(value = "/spaceInfo", method = RequestMethod.GET)
	public String spaceInfo() {
		System.out.println("SpaceController spaceInfo");
		
	return "page/spaceInfo";
	}
	
}//SpaceController
