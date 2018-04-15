package dao.schedule;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import command.ScheduleCommand;

public class ScheduleDAO extends SqlSessionDaoSupport  {

	public List<ScheduleCommand> getSchedule(List<ScheduleCommand> sche, Map<String, String> param) {
		// TODO Auto-generated method stub
		sche = getSqlSession().selectList("myschedule.getSchedule", param);
		return sche;
	}

	public int ins_schedule(ScheduleCommand command) {
		// TODO Auto-generated method stub
		return getSqlSession().insert("myschedule.ins_schedule", command);
	}

}
