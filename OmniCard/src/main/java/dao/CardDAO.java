package dao;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import command.CardCommand;
import command.CardMemoCommand;

public class CardDAO extends SqlSessionDaoSupport  {

	public int send(int check, CardMemoCommand command) {
		// TODO Auto-generated method stub
		check = getSqlSession().insert("member.sendcard",command);
		return check;
	}

	public void insertcard(CardCommand command) {
		// TODO Auto-generated method stub
		getSqlSession().insert("member.insertcard",command);
	}

}
