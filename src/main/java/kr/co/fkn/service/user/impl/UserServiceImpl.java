package kr.co.fkn.service.user.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import kr.co.fkn.service.domain.User;
import kr.co.fkn.service.user.UserDao;
import kr.co.fkn.service.user.UserService;;

@Service("userServiceImpl")
public class UserServiceImpl implements UserService {

	/// Field
	@Autowired
	@Qualifier("userDaoImpl")
	private UserDao userDao;

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	/// Constructor
	public UserServiceImpl() {
		System.out.println(this.getClass());
	}

	@Override
	public User getUser(String userId) throws Exception {
		// TODO Auto-generated method stub
		return userDao.getUser(userId);
	}

	@Override
	public void createUser(User user) {
		// TODO Auto-generated method stub
		try {
			userDao.createUser(user);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public String idCheck(String userId) throws Exception {
		// TODO Auto-generated method stub
		return userDao.idCheck(userId);
	}

	@Override
	public String nickCheck(String nickname) throws Exception {
		// TODO Auto-generated method stub
		return userDao.nickCheck(nickname);
	}

	@Override
	public User getSuperUser(Integer userNo) throws Exception {
		// TODO Auto-generated method stub
		return userDao.getSuperUser(userNo);
	}

	@Override
	public void updateUser(User userVO) throws Exception {
		// TODO Auto-generated method stub
		userDao.updateUser(userVO);
	}

	@Override
	public void deleteUser(Integer userNo) throws Exception {
		// TODO Auto-generated method stub
		userDao.deleteUser(userNo);
	}

}
