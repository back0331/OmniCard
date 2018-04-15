package serviceImpl.card;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Queue;

import command.CardCommand;
import command.MemberCommand;
import command.MemoCommand;
import dao.card.CardDAO;

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

	public void insertcard(CardCommand command, String id) {
		// TODO Auto-generated method stub
		dao.insertcard1(command);
		Map<String, String> param = new HashMap<>();
		param.put("cardid", command.getId());
		param.put("id", id);
		dao.insertcard2(param);
	}

	public List<MemberCommand> search(String client_name) {
		// TODO Auto-generated method stub
		List<MemberCommand> list = new ArrayList<>();
		list = dao.search(client_name, list);
		return list;
	}

	public CardCommand getMyCard(String id, CardCommand list) {
		// TODO Auto-generated method stub
		list = new CardCommand();
		list = dao.getMyCard(id);
		return list;
	}

	public void updateMyCard(String id, CardCommand command) {
		// TODO Auto-generated method stub
		command.setId(id);
		dao.updateMyCard(command);
	}
	
}
