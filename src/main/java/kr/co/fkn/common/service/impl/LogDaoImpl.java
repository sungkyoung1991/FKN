package kr.co.fkn.common.service.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import kr.co.fkn.common.CommonUtil;
import kr.co.fkn.common.Log;
import kr.co.fkn.common.service.LogDao;
import kr.co.fkn.service.domain.User;

@Repository("logDaoImpl")
public class LogDaoImpl implements LogDao {

	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;
	
	public LogDaoImpl() {
		System.out.println("Constructor :: "+getClass().getName());
	}

	@Override
	public List<Log> getLogList(User user) {
		// TODO Auto-generated method stub
		List<Log> logList = sqlSession.selectList("LogMapper.getLogList", user);
		for(Log log : logList) {
			Map<String, Object> map = CommonUtil.mappingCategoryTarget(log.getCategoryNo(), log.getTargetNo());
			map.put("category", CommonUtil.getConstProp().getProperty("S_C"+log.getCategoryNo()));
		}
		return logList;
	}

	@Override
	public void addLog(Log log) {
		// TODO Auto-generated method stub
		sqlSession.insert("LogMapper.addLog", log);
	}

	
	
}
