package kr.co.fkn.service.user.impl;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import kr.co.fkn.service.domain.User;
import kr.co.fkn.service.user.UserDao;


@Repository("userDaoImpl")
public class UserDaoImpl implements UserDao{
	
	///Field
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	///Constructor
	public UserDaoImpl() {
		System.out.println(this.getClass());
	}


	public User getUser(String userId) throws Exception {
		return sqlSession.selectOne("UserMapper.getUser", userId);
	}

	@Override
	public void createUser(User user) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.insert("UserMapper.createUser",user);
	}

	@Override
	public String idCheck(String userId) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("UserMapper.idCheck", userId);
	}

	@Override
	public String nickCheck(String nickname) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("UserMapper.nickCheck",nickname);
	}


	@Override
	public User getSuperUser(Integer userNo) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("UserMapper.getSuperUser",userNo);
	}

	@Override
	public void updateUser(User userVO) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.update("UserMapper.updateUser",userVO);
	}

	@Override
	public void deleteUser(Integer userNo) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.delete("UserMapper.deleteUser",userNo);
	}


	
}