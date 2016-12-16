package dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import command.CardCommand;
import command.MemberCommand;
import serviceImpl.RegisterImpl;

public class RegisterDAO extends SqlSessionDaoSupport {

	public RegisterImpl impl;
	
	public void setImpl(RegisterImpl impl) {
		this.impl = impl;
	}

	public String login(Map<String, String> info) {
		// TODO Auto-generated method stub
		String id = "";
		id = getSqlSession().selectOne("member.login", info);
		return id;
	}

	public void register_mem(MemberCommand command) {
		// TODO Auto-generated method stub
		getSqlSession().insert("member.register_mem",command);
	}

	public List<String> getAddr1() {
		// TODO Auto-generated method stub
		List<String> address = new ArrayList<String>();
		address = getSqlSession().selectList("member.getAddress1");
		return address;
	}
	
	public List<String> getAddr2() {
		// TODO Auto-generated method stub
		List<String> address = new ArrayList<String>();
		address = getSqlSession().selectList("member.getAddress2");
		return address;
	}
	
	public List<String> getAddr3() {
		// TODO Auto-generated method stub
		List<String> address = new ArrayList<String>();
		address = getSqlSession().selectList("member.getAddress3");
		return address;
	}

	public Object getZip_code1() {
		// TODO Auto-generated method stub
		List<String> zip_code1 = new ArrayList<String>();
		zip_code1 = getSqlSession().selectList("member.getZip_code1");
		return null;
	}

	public Object getZip_code2() {
		// TODO Auto-generated method stub
		List<String> zip_code2 = new ArrayList<String>();
		zip_code2 = getSqlSession().selectList("member.getZip_code1");
		return null;
	}

	public List<CardCommand> getAllCards(Map<String, Object> param) {
		// TODO Auto-generated method stub
		List<CardCommand> cards = new ArrayList<CardCommand>();
		cards = getSqlSession().selectList("member.getAllCards", param);
		return cards;
	}

	public int getCardsCount(String id) {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("member.getCardsCount", id);
	}

}
