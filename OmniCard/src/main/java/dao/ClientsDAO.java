package dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import command.ClientsCommand;
import command.MemberCommand;

public class ClientsDAO extends SqlSessionDaoSupport  {

	public List<ClientsCommand> getAllClients(List<ClientsCommand> clients, Map<String, Object> param) {
		// TODO Auto-generated method stub
		clients = getSqlSession().selectList("myclients.getAllClients", param);
		return clients;
	}

	public Integer getClientsCount(String id) {
		// TODO Auto-generated method stub
		return (Integer)getSqlSession().selectOne("myclients.getClientsCount", id);
	}

}
