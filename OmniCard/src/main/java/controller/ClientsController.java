package controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import serviceImpl.ClientsImpl;

@Controller
public class ClientsController {

	@Resource
	private ClientsImpl impl;

	public void setImpl(ClientsImpl impl) {
		this.impl = impl;
	}
	
	private String id;
	
	@ModelAttribute
	public void setId(String id,HttpServletRequest request) {
		HttpSession session = request.getSession();
		this.id = (String) session.getAttribute("id");
	}
	
	@RequestMapping("myclient.do")
	public ModelAndView getAllClients(HttpServletRequest request, 
			@RequestParam(value="pageNum", defaultValue="1")String pageNum){
		ModelAndView mav = new ModelAndView();
		mav.addObject("clients", impl.getAllClients(id, Integer.parseInt(pageNum)));
		mav.addObject("count", impl.getClientsCount(id));
		mav.setViewName("myclients");
		return mav;
	}
}
