package command;

public class CardCommand {
	private String card_no;
	private String mem_no;
	private String mem_id;
	private String com_no;
	private String client_id;
	private String client_name;
	private String form_code;
	private String com_name;
	private String client_level;
	private String web_addr;
	private String cel_tel;
	private String com_tel;
	private String email;
	private String addr;
	private String zip;
	private String addr_desc;
	private AddressCommand command;

	public CardCommand(){}
	
	public CardCommand(AddressCommand command){
		this.command = command;
	}
	
	public String getCard_no() {
		return card_no;
	}
	public void setCard_no(String card_no) {
		this.card_no = card_no;
	}
	public String getMem_no() {
		return mem_no;
	}
	public void setMem_no(String mem_no) {
		this.mem_no = mem_no;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getCom_no() {
		return com_no;
	}
	public void setCom_no(String com_no) {
		this.com_no = com_no;
	}
	public String getClient_id() {
		return client_id;
	}
	public void setClient_id(String client_id) {
		this.client_id = client_id;
	}
	public String getClient_name() {
		return client_name;
	}
	public void setClient_name(String client_name) {
		this.client_name = client_name;
	}
	public String getForm_code() {
		return form_code;
	}
	public void setForm_code(String form_code) {
		this.form_code = form_code;
	}
	public String getCom_name() {
		return com_name;
	}
	public void setCom_name(String com_name) {
		this.com_name = com_name;
	}
	public String getClient_level() {
		return client_level;
	}
	public void setClient_level(String client_level) {
		this.client_level = client_level;
	}
	public String getWeb_addr() {
		return web_addr;
	}
	public void setWeb_addr(String web_addr) {
		this.web_addr = web_addr;
	}
	public String getCel_tel() {
		return cel_tel;
	}
	public void setCel_tel(String cel_tel) {
		this.cel_tel = cel_tel;
	}
	public String getCom_tel() {
		return com_tel;
	}
	public void setCom_tel(String com_tel) {
		this.com_tel = com_tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public AddressCommand getCommand() {
		return command;
	}
	public void setCommand(AddressCommand command) {
		this.command = command;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
	}
	public String getAddr_desc() {
		return addr_desc;
	}
	public void setAddr_desc(String addr_desc) {
		this.addr_desc = addr_desc;
	}
}
