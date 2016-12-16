package service;

import command.MemberCommand;

public interface RegisterService {
	public boolean loginService(String id, String pw);
	public void register_mem(MemberCommand command);
}
