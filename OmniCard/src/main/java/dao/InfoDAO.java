package dao;

import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import command.AddressCommand;
import command.CompanyCommand;
import command.MemberCommand;

public class InfoDAO extends SqlSessionDaoSupport  {

	public MemberCommand getInfo(String id, MemberCommand command) {
		// TODO Auto-generated method stub
		command = getSqlSession().selectOne("info.getInfo", id);
		return command;
	}

	public AddressCommand getMemAddr(String mem_no, AddressCommand mem_address) {
		// TODO Auto-generated method stub
		mem_address = getSqlSession().selectOne("info.getMemAddr", mem_no);
		return null;
	}

	public AddressCommand getComAddr(String com_no, AddressCommand com_address) {
		// TODO Auto-generated method stub
		com_address = getSqlSession().selectOne("info.getComAddr", com_no);
		return null;
	}

	public CompanyCommand getCompany(String com_no, CompanyCommand company) {
		// TODO Auto-generated method stub
		company = getSqlSession().selectOne("info.getCompany", com_no);
		return null;
	}

	public void infoupdate(String id, Map<String, Object> map) {
		// TODO Auto-generated method stub
		getSqlSession().update("info.infoupdate",map);
	}	

}
