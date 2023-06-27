package com.space4team.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.space4team.dao.HostDAO;
import com.space4team.domain.HostDTO;

@Service
public class HostServiceImpl implements HostService{
	
	@Inject
	private HostDAO hostDAO;
	
	@Override
	public void joinHost(HostDTO hostDTO) {
		System.out.println("HostServiceImpl joinHost()");
		if(hostDAO.getMaxHost()==null) {
			hostDTO.setH_no("H001");
		}else if(hostDAO.getMaxHost()<10){
			hostDTO.setH_no("H"+"00"+ hostDAO.getMaxHost());
		}else if(hostDAO.getMaxHost()>=10 && hostDAO.getMaxHost()<100){
			hostDTO.setH_no("H"+"0"+ hostDAO.getMaxHost());
		}else{
			hostDTO.setH_no("H"+ hostDAO.getMaxHost());
		};
		
		hostDAO.joinHost(hostDTO);
	}// joinGuest
}
