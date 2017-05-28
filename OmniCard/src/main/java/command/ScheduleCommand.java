package command;

import java.util.Date;

public class ScheduleCommand {
	private String sche_no;
	private String mem_no;
	private String id;
	private Date from_when;
	private Date to_when;
	private String place;
	private String with_who;
	private Date reg_date;
	
	public String getSche_no() {
		return sche_no;
	}
	public void setSche_no(String sche_no) {
		this.sche_no = sche_no;
	}
	public String getMem_no() {
		return mem_no;
	}
	public void setMem_no(String mem_no) {
		this.mem_no = mem_no;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Date getFrom_when() {
		return from_when;
	}
	public void setFrom_when(Date from_when) {
		this.from_when = from_when;
	}
	public Date getTo_when() {
		return to_when;
	}
	public void setTo_when(Date to_when) {
		this.to_when = to_when;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public String getWith_who() {
		return with_who;
	}
	public void setWith_who(String with_who) {
		this.with_who = with_who;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
}
