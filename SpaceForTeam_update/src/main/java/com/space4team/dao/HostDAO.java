package com.space4team.dao;

import com.space4team.domain.HostDTO;

public interface HostDAO {

	Integer getMaxHost();

	void joinHost(HostDTO hostDTO);

}
