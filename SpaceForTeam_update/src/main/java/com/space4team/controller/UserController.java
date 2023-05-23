package com.space4team.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserController {
//	@Inject
//	private UserService userService;
//	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main() {
		System.out.println("UserController main()");
		
	return "page/main";
	}//main

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		System.out.println("UserController login()");
		
		return "page/login";
	}//login

	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String insert() {
		System.out.println("UserController insert()");
		
		return "page/join";
	}//join
	
}// UserController
