package serviceImpl.clients;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import command.ClientsCommand;
import command.MemberCommand;
import dao.clients.ClientsDAO;

public class ClientsImpl {

	@Resource
	private ClientsDAO dao;

	public List<ClientsCommand> getAllClients(String id, int pageNum) {
		// TODO Auto-generated method stub
		List<ClientsCommand> clients = new ArrayList<ClientsCommand>();
		Map<String, Object> param = new HashMap<String, Object>();
		
		param.put("id", id);
		if(pageNum==1){
			param.put("pageNum1", Integer.valueOf(1));
			param.put("pageNum2", Integer.valueOf(10));
		}else {
			param.put("pageNum1", Integer.valueOf(pageNum*10));
			param.put("pageNum2", Integer.valueOf((pageNum+1)*10));
		}
		
		clients = dao.getAllClients(clients, param);
		return clients;
	}

	public Integer getClientsCount(String id) {
		// TODO Auto-generated method stub
		int count = 0;
		count = dao.getClientsCount(id);
		if(count<=10){
			count = 1;
		}else{
			count = count/10+1;
		}
		return count;
	}

}
