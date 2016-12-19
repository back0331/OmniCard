package controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import command.AddressCommand;
import command.CompanyCommand;
import command.MemberCommand;
import serviceImpl.InfoImpl;

@Controller
public class InfoController {
	
	@Resource
	private InfoImpl impl;

	private String id;
	
	@ModelAttribute
	private void setId(HttpServletRequest request) {
		HttpSession session = request.getSession();
		this.id = (String) session.getAttribute("id");
	}
	
	@RequestMapping("getMyInfo.do")
	public String getMyInfo(Model mod){
		mod.addAllAttributes(impl.getInfo(id));
		return "infoupdate";
	}
	
	@RequestMapping("infoupdate.do")
	public String infoupdate(@ModelAttribute("info")MemberCommand info,@ModelAttribute("mem_address")AddressCommand mem_address,
			@ModelAttribute("company")CompanyCommand company,@ModelAttribute("com_address")AddressCommand com_address,Model mod){
		impl.infoupdate(id,info,mem_address,company,com_address);
		mod.addAllAttributes(impl.getInfo(id));
		return "infoupdate";
	}
}
