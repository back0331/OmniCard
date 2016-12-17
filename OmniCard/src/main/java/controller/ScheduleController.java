package controller;

import java.util.Calendar;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import serviceImpl.ScheduleImpl;

@Controller
public class ScheduleController {

	@Resource
	private ScheduleImpl impl;
	
	public void setImpl(ScheduleImpl impl) {
		this.impl = impl;
	}
	
	private String id;
	
	@ModelAttribute
	private void setId(String id,HttpServletRequest request) {
		HttpSession session = request.getSession();
		this.id = (String) session.getAttribute("id");
	}
	
	@RequestMapping("schedule.do")
	public ModelAndView getDate(){
		ModelAndView mav = new ModelAndView();
		Calendar cal = Calendar.getInstance();
		Date date = new Date();
		cal.setTime(date);
		//get date for now that needs to show scheduler.
		mav.addObject("date", impl.getDate(date));
		//get schedules when month & year are same with now.
		mav.addObject("schedule", impl.getSchedule(id, cal.get(Calendar.YEAR), cal.get(Calendar.MONTH)+1, cal.get(Calendar.DAY_OF_MONTH)));//getYear = 2016, getMonth+1 = 12
		System.out.println(impl.getSchedule(id, cal.get(Calendar.YEAR), cal.get(Calendar.MONTH)+1, cal.get(Calendar.DAY_OF_MONTH)));
		mav.setViewName("myschedule");
		return mav;
	}
}
