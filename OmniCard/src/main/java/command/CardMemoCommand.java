package command;

import java.sql.Timestamp;

public class CardMemoCommand {

	private int card_no;
	private String towho;
	private String fromwho;
	private String contents;
	private Timestamp reg_date;
	
	public int getCard_no() {
		return card_no;
	}
	public void setCard_no(int card_no) {
		this.card_no = card_no;
	}
	public String getTowho() {
		return towho;
	}
	public void setTowho(String towho) {
		this.towho = towho;
	}
	public String getFromwho() {
		return fromwho;
	}
	public void setFromwho(String fromwho) {
		this.fromwho = fromwho;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public Timestamp getReg_date() {
		return reg_date;
	}
	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}
	
}
