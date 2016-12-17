package command;

public class MemoCommand {
	private String card_no;
	private String towho;
	private String fromwho;
	private String contents;
	private String reg_date;
	public String getCard_no() {
		return card_no;
	}
	public void setCard_no(String card_no) {
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
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
}
