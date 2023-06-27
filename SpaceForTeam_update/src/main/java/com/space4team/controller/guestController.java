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

	@RequestMapping(value = "/guestLoginPro", method = RequestMethod.POST)
	public String loginPro() {
		System.out.println("GuestController guestLoginPro()");
		
		
		return "page/main";
	}//loginPro

	@RequestMapping(value = "/guestJoin", method = RequestMethod.GET)
	public String guestJoin() {
		System.out.println("GuestController guestJoin()");
		
		return "page/guestJoin";
	}//join

	@RequestMapping(value = "/guestJoinPro", method = RequestMethod.POST)
	public String guestJoinPro(GuestDTO guestDTO){
		System.out.println("GuestController guestJoinPro()");
		guestService.joinGuest(guestDTO);	
		return "page/main";
	}//joinPro

	
}// UserController
