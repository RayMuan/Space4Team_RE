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
	
	@RequestMapping(value = "/dupChk", method = RequestMethod.POST)
	public ResponseEntity<String> guestchk(HttpServletRequest request){
		// (임시)게스트만 가능
		GuestDTO guestDTO=null;
		String result="";
		String id=request.getParameter("id");
		String email=request.getParameter("email");
		
		if(id!=null) {
			guestDTO=guestService.getGuestId(id);			
		}else if(email != null) {
			guestDTO=guestService.getGuestEmail(email);						
		}
		
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
