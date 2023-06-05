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
	public GuestDTO getGuestId(String g_id) {
		System.out.println("GuestDAOImpl getGuestId");
		System.out.println(g_id);
			return sqlSession.selectOne(namespace+".getGuestId", g_id);
	}//getGuestId

	@Override
	public GuestDTO getGuestEmail(String g_email) {
		System.out.println("GuestDAOImpl getGuestEmail");
		System.out.println(g_email);
		return sqlSession.selectOne(namespace+".getGuestEmail", g_email);
	}//getGuestEmail
	
	
}
