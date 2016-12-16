package dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import command.ScheduleCommand;

public class ScheduleDAO extends SqlSessionDaoSupport  {

	public List<ScheduleCommand> getSchedule(List<ScheduleCommand> sche, Map<String, String> param) {
		// TODO Auto-generated method stub
		System.out.println(param);
		sche = getSqlSession().selectList("myschedule.getSchedule", param);
		System.out.println(sche.isEmpty());
		return sche;
	}

}
