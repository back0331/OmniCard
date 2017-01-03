package dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import command.CardCommand;
import command.MemberCommand;
import command.MemoCommand;

public class CardDAO extends SqlSessionDaoSupport  {

	public int send(int check, MemoCommand command) {
		// TODO Auto-generated method stub
		check = getSqlSession().insert("member.sendcard",command);
		return check;
	}

	public void insertcard1(CardCommand command) {
		// TODO Auto-generated method stub
		getSqlSession().insert("member.insertcard1",command);
	}
	
	public void insertcard2(Map<String, String> param){
		getSqlSession().update("member.insertcard2", param);
	}

	public List<MemberCommand> search(String client_name, List<MemberCommand> list) {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("member.search", client_name);
	}

	public CardCommand getMyCard(String id) {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("member.getmycard", id);
	}

	public void updateMyCard(CardCommand command) {
		// TODO Auto-generated method stub
		getSqlSession().update("member.updatemycard", command);
	}

}
