package serviceImpl;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.annotation.Resource;

import command.ScheduleCommand;
import dao.ScheduleDAO;

public class ScheduleImpl {

	@Resource
	private ScheduleDAO dao;
	
	public Timestamp getDate(Date date) {
		// TODO Auto-generated method stub
		Timestamp timestamp = new Timestamp(date.getTime());
		return timestamp;
	}

	public Map<String, String> getSchedule(String id, int year, int month, int day) {
		//sche needs to get schedules from database
		ArrayList<ScheduleCommand> sche = new ArrayList<ScheduleCommand>();
		
		//map needs to form the model data
		Map<String, String> map = new HashMap<String, String>();
		
		//param needs to get exact schedules from database
		Map<String, String> param = new HashMap<String, String>();
		param.put("id", id);
		param.put("yearmonth", (year+"").substring(0, 2)+(month+""));
		if(day<10){
			param.put("day", "0"+day);
		}else{
			param.put("day", day+"");
		}
		
		sche = (ArrayList<ScheduleCommand>) dao.getSchedule(sche, param);
		
		Iterator<ScheduleCommand> iter = sche.iterator();

		while(iter.hasNext()){
			ScheduleCommand command = iter.next();
			String key = command.getFrom_when().getDate()+"/";
					key+=command.getTo_when().getDate()+"";
			map.put(key, command.getPlace()+"/"+command.getWithwho());
		}
		
		
		return map;
	}

}
