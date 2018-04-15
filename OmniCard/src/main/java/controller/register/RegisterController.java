package controller.register;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.Async;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import command.AddressCommand;
import command.MemberCommand;
import serviceImpl.register.RegisterImpl;

@Configuration
@EnableAsync
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
		MemberCommand command = new MemberCommand();
		command = impl.loginService(id, pw, command);
		try{
			if((command.getMem_no())!=null){
				mod.addAttribute("command", command);
				mod.addAttribute("cards", impl.getAllCards(id));
				//mod.addAttribute("count", impl.getCardsCount(id));
				return "main";
			}
		}catch(NullPointerException e){
			mod.addAttribute("result", "아이디 혹은 비밀번호가 틀리셨습니다.");
		}
		return "index";
	}
	
	//goto register view
	@RequestMapping("/goRegister.do")
	public String register(Model mod){
		mod.addAttribute("mem_command", new MemberCommand());
		mod.addAttribute("addr_home_command", new AddressCommand());
		mod.addAttribute("addr_work_command", new AddressCommand());
		//get addr1, addr2, addr3 and send it to drop_down_menu.
		return "register";
	}
	
	
	
	//register member
	@Async
	@RequestMapping("/mem_register.do")
	public void register(HttpServletRequest request, 
			@ModelAttribute("mem_command")MemberCommand command,
			@RequestParam(value="mem_no", defaultValue="")String mem_no,
			@RequestParam(value="com_no", defaultValue="")String com_no){
		impl.register_mem(command, mem_no, com_no);
	}
	
	@Async
	@RequestMapping("/addr_home_register.do")
	public void addr_home_register(HttpServletRequest request, 
			@ModelAttribute("addr_home_command")AddressCommand command,
			@RequestParam(value="mem_no", defaultValue="")String mem_no,
			@RequestParam(value="com_no", defaultValue="")String com_no){
		impl.register_mem(command, mem_no, com_no);
	}
	
	@RequestMapping("/addr_work_register.do")
	public String addr_work_register(HttpServletRequest request, 
			@ModelAttribute("addr_work_command")AddressCommand command,
			@RequestParam(value="mem_no", defaultValue="")String mem_no,
			@RequestParam(value="com_no", defaultValue="")String com_no){
		impl.register_mem(command, mem_no, com_no);
		HttpSession session = request.getSession();
		session.setAttribute("check", "check");
		return "login";
	}
	
	@RequestMapping("/logout.do")
	public String logout(){
		return "index";
	}
}
