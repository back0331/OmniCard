package command;

import java.sql.Timestamp;

public class ScheduleCommand {
	private String mem_no;
	private String id;
	private Timestamp from_when;
	private Timestamp to_when;
	private String place;
	private String withwho;
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
	public Timestamp getFrom_when() {
		return from_when;
	}
	public void setFrom_when(Timestamp from_when) {
		this.from_when = from_when;
	}
	public Timestamp getTo_when() {
		return to_when;
	}
	public void setTo_when(Timestamp to_when) {
		this.to_when = to_when;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public String getWithwho() {
		return withwho;
	}
	public void setWithwho(String withwho) {
		this.withwho = withwho;
	}
}
