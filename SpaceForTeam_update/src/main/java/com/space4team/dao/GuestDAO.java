package com.space4team.dao;

import com.space4team.domain.GuestDTO;

public interface GuestDAO {

	void joinGuest(GuestDTO guestDTO);

	Integer getMaxGuest();

}
