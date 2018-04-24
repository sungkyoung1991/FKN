package kr.co.fkn.service.user.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import kr.co.fkn.common.Search;
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
	public Map<String, Object> getUserList(Search search) {
		// TODO Auto-generated method stub
		
		Map<String,Object> map = new HashMap<String, Object>();
		
		List<User> userList = new ArrayList<User>();
		
		userList = userDao.getUserList(search);
		int totalCount = userDao.getTotalCount(search);
		
		map.put("userList", userList);
		map.put("totalCount", new Integer(totalCount));
		
		return map;
	}
	
	

	}
