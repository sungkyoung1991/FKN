package kr.co.fkn.service.main.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import kr.co.fkn.common.Search;
import kr.co.fkn.service.domain.Main;
import kr.co.fkn.service.main.MainDao;

@Repository("mainDaoImpl")
public class MainDaoImpl implements MainDao {

	@Autowired
	@Qualifier("sqlSessionTemplate")
	SqlSession sqlSession;

	public MainDaoImpl() {
		super();
	}

	@Override
	public List<Main> getMainList(Search search) throws Exception {
		// TODO Auto-generated method stub
		
		System.out.println("dao check... " );
		
		return sqlSession.selectList("MainMapper.getMainList", search);
	}

	@Override
	public int getTotalCount(Search search) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("MainMapper.getTotalCount", search);
	}


}
