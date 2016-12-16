package controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import command.MemberCommand;
import serviceImpl.InfoImpl;

@Controller
public class InfoController {
	
	@Resource
	private InfoImpl impl;

	private String id;
	
	@ModelAttribute
	public void setId(HttpServletRequest request) {
		HttpSession session = request.getSession();
		this.id = (String) session.getAttribute("id");
	}
	
	@RequestMapping("getMyInfo.do")
	public String getMyInfo(Model mod){
		mod.addAttribute("command", impl.getMyInfo(id));
		return "infoupdate";//tilesdef
	}
	
	@RequestMapping("infoupdate.do")
	public String infoupdate(@ModelAttribute("command")MemberCommand command){
		impl.infoupdate(id,command);
		return "infoupdate";
	}
}
