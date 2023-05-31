package com.space4team.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.space4team.domain.GuestDTO;
import com.space4team.service.GuestService;

@RestController
public class ajaxController {
	
	@Inject
	private GuestService guestService;
	
	@RequestMapping(value = "/idchk", method = RequestMethod.POST)
	public ResponseEntity<String> idchk(HttpServletRequest request){
		// (임시)게스트만 가능
		String result="";
		String g_id=request.getParameter("id");
		GuestDTO guestDTO=guestService.getGuest(g_id);
		System.out.println(guestDTO);
		if(guestDTO==null) {
			result="OK";
		}else {
			result="Retry";			
		}
		ResponseEntity<String> entity=
				new ResponseEntity<String>(result, HttpStatus.OK);
		return entity;
	}
}
