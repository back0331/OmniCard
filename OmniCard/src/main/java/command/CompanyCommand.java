package command;

import java.sql.Timestamp;

public class CompanyCommand {
	private String com_no;
	private String com_name;
	private String ceo_name;
	private String com_tel;
	private String com_fax;
	private String job_fam;
	private String build_date;
	private String web_addr;
	private String com_desc;
	private Timestamp reg_date;
	public String getCom_no() {
		return com_no;
	}
	public void setCom_no(String com_no) {
		this.com_no = com_no;
	}
	public String getCom_name() {
		return com_name;
	}
	public void setCom_name(String com_name) {
		this.com_name = com_name;
	}
	public String getCeo_name() {
		return ceo_name;
	}
	public void setCeo_name(String ceo_name) {
		this.ceo_name = ceo_name;
	}
	public String getCom_tel() {
		return com_tel;
	}
	public void setCom_tel(String com_tel) {
		this.com_tel = com_tel;
	}
	public String getCom_fax() {
		return com_fax;
	}
	public void setCom_fax(String com_fax) {
		this.com_fax = com_fax;
	}
	public String getJob_fam() {
		return job_fam;
	}
	public void setJob_fam(String job_fam) {
		this.job_fam = job_fam;
	}
	public String getBuild_date() {
		return build_date;
	}
	public void setBuild_date(String build_date) {
		this.build_date = build_date;
	}
	public String getWeb_addr() {
		return web_addr;
	}
	public void setWeb_addr(String web_addr) {
		this.web_addr = web_addr;
	}
	public String getCom_desc() {
		return com_desc;
	}
	public void setCom_desc(String com_desc) {
		this.com_desc = com_desc;
	}
	public Timestamp getReg_date() {
		return reg_date;
	}
	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}

}
