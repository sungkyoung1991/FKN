package kr.co.fkn.common.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import kr.co.fkn.common.Log;
import kr.co.fkn.common.service.LogDao;
import kr.co.fkn.common.service.LogService;
import kr.co.fkn.service.domain.User;

@Service("logServiceImpl")
public class LogServiceImpl implements LogService{
	
	@Autowired
	@Qualifier("logDaoImpl")
	private LogDao logDao;
	
	public LogServiceImpl() {
		System.out.println("Constructor :: "+getClass().getName());
	}

	@Override
	public List<Log> getLogList(User user) {
		// TODO Auto-generated method stub
		return logDao.getLogList(user);
	}

	@Override
	public void addLog(Log log) {
		// TODO Auto-generated method stub
		logDao.addLog(log);
	}
	
	
}


