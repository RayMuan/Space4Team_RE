package com.space4team.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.space4team.domain.HostDTO;
import com.space4team.service.HostService;

@Controller
public class hostController {
	@Inject
	private HostService hostService;

	@RequestMapping(value = "/hostLoginPro", method = RequestMethod.POST)
	public String loginPro() {
		System.out.println("HostController hostLoginPro()");
		
		
		return "page/main";
	}//loginPro

	@RequestMapping(value = "/hostJoin", method = RequestMethod.GET)
	public String guestJoin() {
		System.out.println("HostController hostJoin()");
		
		return "page/hostJoin";
	}//join

	@RequestMapping(value = "/hostJoinPro", method = RequestMethod.POST)
	public String guestJoinPro(HostDTO hostDTO){
		System.out.println("HostController hostJoinPro()");
		hostService.joinHost(hostDTO);	
		return "page/main";
	}//joinPro

	
}// UserController
