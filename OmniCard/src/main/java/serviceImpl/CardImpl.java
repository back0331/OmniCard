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

	public ArrayList<MemberCommand> search(String client_name) {
		// TODO Auto-generated method stub
		List<MemberCommand> list = new ArrayList<>();
		list = dao.search(client_name, list);
		return (ArrayList<MemberCommand>) list;
	}
	
}
