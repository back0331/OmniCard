package serviceImpl;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import command.MemberCommand;
import dao.InfoDAO;

public class InfoImpl {

	@Resource
	private InfoDAO dao;

	public MemberCommand getMyInfo(String id) {
		// TODO Auto-generated method stub
		MemberCommand command = new MemberCommand();
		command = dao.getMyInfo(id, command);
		return command;
	}

	public void infoupdate(String id, MemberCommand command) {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("command", command);
		dao.infoupdate(id,map);
	}

}
