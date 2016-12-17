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

import command.AddressCommand;
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
	
	//login using id/pw
	@RequestMapping("/login.do")
	public String login(HttpServletRequest request, Model mod,
			@RequestParam("pw")String pw, @RequestParam("id") String id){
		HttpSession session = request.getSession();
		session.setAttribute("id", id);
		CardCommand command = new CardCommand(new AddressCommand());
		command = impl.loginService(id, pw, command);
		if(command.getMem_no()!=null){
			mod.addAttribute("command", command);
			mod.addAttribute("cards", impl.getAllCards(id));
			mod.addAttribute("count", impl.getCardsCount(id));
			return "main";
		}else{
			return "login";
		}
	}
	
	//goto register view
	@RequestMapping("/goRegister.do")
	public String register(Model mod){
		mod.addAttribute("command", new MemberCommand());
		//get addr1, addr2, addr3 and send it to drop_down_menu.
		return "register";
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
}
