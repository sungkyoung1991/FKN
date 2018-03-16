package kr.co.fkn.common.service;

import java.util.List;

import kr.co.fkn.common.Log;
import kr.co.fkn.service.domain.User;

public interface LogService {
	

	public List<Log> getLogList(User user);
	
	public void addLog(Log log);

}
