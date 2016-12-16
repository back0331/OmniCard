package command;

import java.sql.Timestamp;

public class MemberCommand {
	private int mem_no;
	private String name;
	private String id;
	private String pw;
	private String addr1;
	private String addr2;
	private String addr3;
	private int zip_code1;
	private int zip_code2;
	private long cel_tel;
	private long com_tel;
	private String email;
	private Timestamp reg_date;
	
	public int getMem_no() {
		return mem_no;
	}
	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	public String getAddr3() {
		return addr3;
	}
	public void setAddr3(String addr3) {
		this.addr3 = addr3;
	}
	public int getZip_code1() {
		return zip_code1;
	}
	public void setZip_code1(int zip_code1) {
		this.zip_code1 = zip_code1;
	}
	public int getZip_code2() {
		return zip_code2;
	}
	public void setZip_code2(int zip_code2) {
		this.zip_code2 = zip_code2;
	}
	public long getCel_tel() {
		return cel_tel;
	}
	public void setCel_tel(long cel_tel) {
		this.cel_tel = cel_tel;
	}
	public long getCom_tel() {
		return com_tel;
	}
	public void setCom_tel(long com_tel) {
		this.com_tel = com_tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Timestamp getReg_date() {
		return reg_date;
	}
	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}
}
