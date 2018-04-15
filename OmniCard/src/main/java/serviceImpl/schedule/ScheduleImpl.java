package serviceImpl.schedule;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.joda.time.DateTime;

import command.ScheduleCommand;
import dao.schedule.ScheduleDAO;

public class ScheduleImpl {

	@Resource
	private ScheduleDAO dao;

	public ArrayList<ScheduleCommand> getSchedule(String id, int year, int month, int day) {
		// sche(VAR) needs to get schedules from database
		ArrayList<ScheduleCommand> sche = new ArrayList<ScheduleCommand>();

		// param needs to get exact schedules from database
		Map<String, String> param = new HashMap<String, String>();
		Map<String, String> modelData = new HashMap<String, String>();

		String monthStr = month + "";
		if (month < 10) {
			monthStr = "0" + monthStr;
		}
		param.put("id", id);
		param.put("yearmonth", (year + "").substring(0, 4) + monthStr);
		if (day < 10) {
			param.put("day", "0" + day);
		} else {
			param.put("day", "01");
		}

		sche = (ArrayList<ScheduleCommand>) dao.getSchedule(sche, param);

//		try{
//			for (ScheduleCommand command : sche) {
//				modelData.put(command.getTo_when().toString(), ":" + command.getPlace() + "/" + command.getWith_who());
//			}
//		}catch(Exception e){
//			e.printStackTrace();
//		}
		
		return sche;
	}

	public int ins_schedule(ScheduleCommand command) {
		// TODO Auto-generated method stub
		return (int)dao.ins_schedule(command);
	}
}
