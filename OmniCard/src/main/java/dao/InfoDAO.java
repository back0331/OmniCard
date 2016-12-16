package dao;

import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import command.MemberCommand;

public class InfoDAO extends SqlSessionDaoSupport  {

	public MemberCommand getMyInfo(String id, MemberCommand command) {
		// TODO Auto-generated method stub
		command = getSqlSession().selectOne("info.getMyInfo", id);
		return command;
	}

	public void infoupdate(String id, Map<String, Object> map) {
		// TODO Auto-generated method stub
		getSqlSession().update("info.infoupdate",map);
	}

	

}
