package com.space4team.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.space4team.dao.GuestDAO;
import com.space4team.domain.GuestDTO;

@Service
public class GuestServiceImpl implements GuestService{
	
	@Inject
	private GuestDAO guestDAO;

	@Override
	public void joinGuest(GuestDTO guestDTO) {
		System.out.println("GuestServiceImpl joinGuest()");
		if(guestDAO.getMaxGuest()==null) {
			guestDTO.setG_no("G001");
		}else if(guestDAO.getMaxGuest()<10){
			guestDTO.setG_no("G"+"00"+ guestDAO.getMaxGuest());
		}else if(guestDAO.getMaxGuest()>=10 && guestDAO.getMaxGuest()<100){
			guestDTO.setG_no("G"+"0"+ guestDAO.getMaxGuest());
		}else{
			guestDTO.setG_no("G"+ guestDAO.getMaxGuest());
		};
		
		guestDAO.joinGuest(guestDTO);
	}// joinGuest

	@Override
	public GuestDTO getGuestId(String g_id) {
		System.out.println("GuestServiceImpl getGuestId()");
		return guestDAO.getGuestId(g_id);
	}//getGuestId

	@Override
	public GuestDTO getGuestEmail(String g_email) {
		System.out.println("GuestServiceImpl getGuestEmail()");
		return guestDAO.getGuestEmail(g_email);
	}//getGuestEmail	
}
