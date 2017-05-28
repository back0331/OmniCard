package serviceImpl;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import command.AddressCommand;
import command.CompanyCommand;
import command.MemberCommand;
import dao.InfoDAO;

public class InfoImpl {

	@Resource
	private InfoDAO dao;

	public Map<String, Object> getInfo(String id) {
		// TODO Auto-generated method stub
		MemberCommand info = new MemberCommand();
		AddressCommand mem_address = new AddressCommand();
		CompanyCommand company = new CompanyCommand();
		Map<String, Object> param = new HashMap<String, Object>();
		
		info = dao.getInfo(id, info);
		
		param.put("info", info);
		param.put("mem_addr", dao.getMemAddr(info.getMem_no(), mem_address));
		if(info.getCom_no()!=null){
			param.put("company", dao.getCompany(info.getCom_no(), company));
		}
		return param;
	}

	public void infoupdate(String id, MemberCommand info, AddressCommand mem_address, 
			CompanyCommand company, AddressCommand com_address) {
		// TODO Auto-generated method stub
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("id", id);
		param.put("addr_info", mem_address);
		param.put("com_info", company);
		param.put("mem_info", info);
		if(info.getCom_no()==null){
			info.setCom_no("");
		}
		dao.infoupdate(id,param);
	}

}
