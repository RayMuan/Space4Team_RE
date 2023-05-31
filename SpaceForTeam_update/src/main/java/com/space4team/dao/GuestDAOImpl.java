package com.space4team.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.space4team.domain.GuestDTO;

@Repository
public class GuestDAOImpl implements GuestDAO{
	@Inject
	private SqlSession sqlSession;
	private static final String namespace="com.space4team.mappers.guestMapper";
	
	@Override
	public void joinGuest(GuestDTO guestDTO) {
		System.out.println("GuestDAOImpl joinGuest");
		sqlSession.insert(namespace+".joinGuest", guestDTO);
	}// joinGuest

	@Override
	public Integer getMaxGuest() {
		System.out.println("GuestDAOImpl getMaxGuest");
		
		return sqlSession.selectOne(namespace+".getMaxGuest");
	}// getMaxGuest

	@Override
	public GuestDTO getGuest(String g_id) {
		System.out.println("GuestDAOImpl getGuest");
		System.out.println(g_id);
		return sqlSession.selectOne(namespace+".getGuest", g_id);
	}//getGuest
	
	
}
