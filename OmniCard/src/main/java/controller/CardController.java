package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import command.CardCommand;
import command.MemoCommand;
import net.sf.json.JSONObject;
import serviceImpl.CardImpl;
import serviceImpl.RegisterImpl;

@Controller
public class CardController {
	
	
	private RegisterImpl registerImpl;
	
	public void setRegisterImpl(RegisterImpl registerImpl) {
		this.registerImpl = registerImpl;
	}

	private CardImpl impl;
	
	public void setImpl(CardImpl impl) {
		this.impl = impl;
	}

	private String id;
	
	@ModelAttribute
	private void setId(HttpServletRequest request) {
		HttpSession session = request.getSession();
		this.id = (String) session.getAttribute("id");
	}

	@RequestMapping("mycard.do")
	private String mycard(Model mod){
		System.out.println(id);
		mod.addAttribute("command", new CardCommand());
		mod.addAttribute("cards", registerImpl.getAllCards(id));
		return "main";
	}
	
	//@RequestParam("card_no")String card_no,
	//@RequestParam("towho")String towho,@RequestParam("contents")String contents,
	//@RequestParam("fromwho")String fromwho
	@RequestMapping(value="send.do", method=RequestMethod.POST)
	private ModelAndView send(@ModelAttribute MemoCommand command){
		ModelAndView mav = new ModelAndView();
		System.out.println(command.getTowho());
		int check = 0;
		check = impl.send(check, command);
		if(check==1){
			mav.addObject("check", "성공적으로 전송되었습니다!!!");
		}else{
			mav.addObject("check", "전송에 실패하였습니다. 다시 시도하시거나 메일 주시기 바랍니다 ㅠㅠ.");
		}
		mav.addObject("cards", registerImpl.getAllCards(id));
		mav.setViewName("main");
		return mav;
	}
	
	@RequestMapping(value="insertcard.do", method=RequestMethod.POST)
	private String insertcard(Model mod,@ModelAttribute("command")CardCommand command){
		impl.insertcard(id, command);
		mod.addAttribute("command", new CardCommand());
		mod.addAttribute("cards", registerImpl.getAllCards(id));
		return "main";
	}
	
	@RequestMapping("search.do")
	private void search(@RequestParam("client_name")String client_name,HttpServletResponse response) throws IOException{
		JSONObject object = new JSONObject();
		PrintWriter writer = response.getWriter();
		object.put("searchmem", impl.search(client_name));
		writer.println(object.toString());
	}
	
}
