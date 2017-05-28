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
		return getSqlSession().selectOne("member.login", info);
	}

	public void register_mem(Object command) {
		// TODO Auto-generated method stub
		getSqlSession().insert("member.register_mem", command);
	}

	public void register_addr(Object command) {
		getSqlSession().insert("member.register_addr", command);
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
