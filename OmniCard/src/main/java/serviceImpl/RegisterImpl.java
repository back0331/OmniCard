package serviceImpl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import command.CardCommand;
import command.MemberCommand;
import dao.RegisterDAO;
import service.RegisterService;

public class RegisterImpl implements RegisterService{

	private RegisterDAO dao;
	public void setDao(RegisterDAO dao) {
		this.dao = dao;
	}
	@Override
	public boolean loginService(String id, String pw) {
		// TODO Auto-generated method stub
		Map<String, String> info = new HashMap<String, String>();
		info.put("id", id);
		info.put("pw", pw);
		if(dao.login(info)==null){
			return false;
		}else{
			return true;
		}
		/*try{
			dao.login(info);	
		}catch(NullPointerException e){
			System.out.println("nullpointer");
			return false;
		}
		return true;*/
	}
	public void register_mem(MemberCommand command) {
		// TODO Auto-generated method stub
		dao.register_mem(command);
	}
	public Map<String, Object> getAddress() {
		// TODO Auto-generated method stub
		Map<String, Object> address = new HashMap<String, Object>();
		address.put("address1", dao.getAddr1());
		address.put("address2", dao.getAddr2());
		address.put("address3", dao.getAddr3());
		address.put("zip_code1", dao.getZip_code1());
		address.put("zip_code2", dao.getZip_code2());
		return address;
	}
	
	public ArrayList<String> getAddr2(String addr1){
		ArrayList<String> addr2 = (ArrayList<String>) dao.getAddr2();
		return addr2;
	}

	public ArrayList<String> getAddr3(String addr2){
		ArrayList<String> addr3 = (ArrayList<String>) dao.getAddr3();
		return addr3;
	}
	public List<CardCommand> getAllCards(String id) {
		// TODO Auto-generated method stub
		Map<String, Object> param = new HashMap<>();
		param.put("id", id);
		param.put("startnum", 1);
		param.put("endnum", 10);
		List<CardCommand> cards = dao.getAllCards(param);
		return cards;
	}
	public int getCardsCount(String id) {
		// TODO Auto-generated method stub
		int count = 0;
		count = dao.getCardsCount(id);
		if(count<=10){
			count=1;
		}else{
			count=(count%10)+1;
		}
		return count;
	}
}