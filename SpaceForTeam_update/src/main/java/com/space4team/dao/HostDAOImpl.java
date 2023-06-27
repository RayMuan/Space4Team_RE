package com.space4team.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.space4team.domain.HostDTO;

@Repository
public class HostDAOImpl implements HostDAO{

	@Inject
	private SqlSession sqlSession;
	private static final String namespace="com.space4team.mappers.hostMapper";
	
	
	@Override
	public Integer getMaxHost() {
		System.out.println("HostDAOImpl getMaxHost");
		
		return sqlSession.selectOne(namespace+".getMaxHost");
	}//getMaxHost()

	@Override
	public void joinHost(HostDTO hostDTO) {
		System.out.println("HostDAOImpl joinHost");
		sqlSession.insert(namespace+".joinHost", hostDTO);
	}//joinHost()
	
}
