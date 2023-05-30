package com.space4team.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.space4team.domain.GuestDTO;
import com.space4team.service.GuestService;

@Controller
public class guestController {
	@Inject
	private GuestService guestService;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		System.out.println("GuestController login()");
		
		return "page/login";
	}//login

	@RequestMapping(value = "/loginPro", method = RequestMethod.POST)
	public String loginPro() {
		System.out.println("GuestController loginPro()");
		
		
		return "page/main";
	}//loginPro

	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String insert() {
		System.out.println("GuestController insert()");
		
		return "page/join";
	}//join

	@RequestMapping(value = "/joinPro", method = RequestMethod.POST)
	public String joinPro(GuestDTO guestDTO){
		System.out.println("GuestController joinPro()");
		guestService.joinGuest(guestDTO);
		return "page/join";
	}//joinPro

	
}// UserController
