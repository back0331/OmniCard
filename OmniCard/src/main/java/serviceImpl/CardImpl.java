package serviceImpl;

import java.util.ArrayList;
import java.util.List;
import java.util.Queue;

import command.CardCommand;
import command.MemberCommand;
import command.MemoCommand;
import dao.CardDAO;

public class CardImpl {

	private CardDAO dao;
	
	public void setDao(CardDAO dao) {
		this.dao = dao;
	}

	public int send(int check, MemoCommand command) {
		// TODO Auto-generated method stub
		check = dao.send(check, command);
		return check;
	}

	public void insertcard(String id, CardCommand command) {
		// TODO Auto-generated method stub
		command.setMem_id(id);
		command.setClient_id("");
		dao.insertcard(command);
	}

	public List<MemberCommand> search(String client_name) {
		// TODO Auto-generated method stub
		List<MemberCommand> list = new ArrayList<>();
		list = dao.search(client_name, list);
		return list;
	}

	public int memcount(String client_name) {
		// TODO Auto-generated method stub
		int count = 0;
		count = dao.memcount(client_name);
		if(count<11){
			count=1;
		}else{
			count=(count%10)+1;
		}
		return count;
	}

	
}
