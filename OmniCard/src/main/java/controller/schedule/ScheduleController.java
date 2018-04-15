package controller.schedule;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.joda.time.DateTime;
import org.joda.time.MutableDateTime;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import command.ScheduleCommand;
import net.sf.json.JSONObject;
import serviceImpl.schedule.ScheduleImpl;

@Controller
public class ScheduleController {

	@Resource
	private ScheduleImpl impl;

	public void setImpl(ScheduleImpl impl) {
		this.impl = impl;
	}

	private String id;

	@ModelAttribute
	private void setId(String id, HttpServletRequest request) {
		HttpSession session = request.getSession();
		this.id = (String) session.getAttribute("id");
	}

	@RequestMapping("schedule.do")
	public ModelAndView getDate(@RequestParam(value = "year", defaultValue = "none") String year,
			@RequestParam(value = "month", defaultValue = "none") String month,
			@RequestParam(value = "day", defaultValue = "none") String day, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();

		if (year.equals("none") || month.equals("none") || day.equals("none")) {
			DateTime date = new DateTime(new Date());
			mav.addObject("date", date);
			mav.addObject("month", date.getMonthOfYear());
			// cal.get(Calendar.MONTH)+1
			mav.addObject("schedule",
					impl.getSchedule(id, date.getYear(), date.getMonthOfYear(), date.getDayOfMonth()));
		} else {
			DateTime date = new DateTime();
			date.withYear(Integer.parseInt(year));
			date.withMonthOfYear(Integer.parseInt(month));
			date.withDayOfMonth(Integer.parseInt(day));
			mav.addObject("date", date);
			mav.addObject("month", Integer.parseInt(month));
			mav.addObject("schedule",
					impl.getSchedule(id, Integer.parseInt(year), Integer.parseInt(month) + 1, Integer.parseInt(day)));
			
		}
		
		mav.addObject("ScheduleCommand", new ScheduleCommand());
		mav.setViewName("myschedule");
		return mav;
	}

	@RequestMapping("ins_schedule.do")
	public ModelAndView ins_schedule(@ModelAttribute("ScheduleCommand") ScheduleCommand command,
			HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();

		int check = impl.ins_schedule(command);

		if (check > 0) {
			mav.addObject("result", "스케줄 등록이 성공적으로 되었습니다!");
		} else {
			mav.addObject("result", "스케줄 등록에 실패하였습니다. 데이터를 한번 더 확인해주세요!");
		}

		mav.addObject("ScheduleCommand", new ScheduleCommand());
		mav.setViewName("myschedule");
		return mav;
	}
}
