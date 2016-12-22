package dao;

import java.util.List;

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

	public void insertcard(CardCommand command) {
		// TODO Auto-generated method stub
		getSqlSession().insert("member.insertcard",command);
	}

	public List<MemberCommand> search(String client_name, List<MemberCommand> list) {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("member.search", client_name);
	}

	public int memcount(String client_name) {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("member.memcount", client_name);
	}

}
