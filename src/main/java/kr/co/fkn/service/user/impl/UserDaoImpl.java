package kr.co.fkn.service.user.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import kr.co.fkn.common.Search;
import kr.co.fkn.service.domain.User;
import kr.co.fkn.service.user.UserDao;

@Repository("userDaoImpl")
public class UserDaoImpl implements UserDao {

	/// Field
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	/// Constructor
	public UserDaoImpl() {
		System.out.println(this.getClass());
	}

	@Override
	public List<User> getUserList(Search search) {
		// TODO Auto-generated method stub

		return sqlSession.selectList("UserMapper.getUserList", search);
	}

	@Override
	public int getTotalCount(Search search) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("UserMapper.totalCount", search);
	}

}