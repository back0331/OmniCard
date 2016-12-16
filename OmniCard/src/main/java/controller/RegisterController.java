package controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import command.CardCommand;
import command.MemberCommand;
import dao.RegisterDAO;
import net.sf.json.JSONObject;
import serviceImpl.RegisterImpl;

@Controller
public class RegisterController {

	private RegisterImpl impl;
	
	public void setImpl(RegisterImpl impl) {
		this.impl = impl;
	}

	private String id;
	
	@ModelAttribute
	public void setId(HttpServletRequest request, @RequestParam("id") String id) {
		HttpSession session = request.getSession();
		session.setAttribute("id", id);
		this.id = (String) session.getAttribute("id");
	}
	
	//login using id/pw
	@RequestMapping("/login.do")
	public String login(HttpServletRequest request, Model mod,
			@RequestParam("pw")String pw){
		HttpSession session = request.getSession();
		session.setAttribute("id", id);
		
		if(impl.loginService(id, pw)){
			mod.addAttribute("command", new CardCommand());
			mod.addAttribute("cards", impl.getAllCards(id));
			mod.addAttribute("count", impl.getCardsCount(id));
			return "main";
		}else{
			return "login";
		}
	}
	
	//goto register view
	@RequestMapping("goRegister.do")
	public String register(HttpServletRequest request){
		HttpSession session = request.getSession();
		//get addr1, addr2, addr3 and send it to drop_down_menu.
		session.setAttribute("address", impl.getAddress());
		return "Register/register";
	}
	
	//get addr2 as List. send it to drop_down_menu.
	@RequestMapping("getAddr2.do")
	public void getAddr2(@RequestParam("addr1")String addr1){
		
	}
	
	//get addr3 as List. send it to drop_down_menu.
	@RequestMapping("getAddr3.do")
	public void getAddr3(@RequestParam("addr2")String addr2){
		
	}
	
	//register member
	@RequestMapping("register.do")
	public String register_mem(HttpServletRequest request, 
			@ModelAttribute("command")MemberCommand command){
		impl.register_mem(command);
		HttpSession session = request.getSession();
		session.setAttribute("check", "check");
		return "login";
	}

	//method for ajax/json
	public void forJSON(ArrayList<String> param){
		JSONObject object = new JSONObject();
		object.put("data", param);
		object.toString();
	}
}
