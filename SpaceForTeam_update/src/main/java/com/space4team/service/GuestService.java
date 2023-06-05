package com.space4team.service;

import com.space4team.domain.GuestDTO;

public interface GuestService {

	void joinGuest(GuestDTO guestDTO);

	GuestDTO getGuestId(String g_id);

	GuestDTO getGuestEmail(String g_email);

}
