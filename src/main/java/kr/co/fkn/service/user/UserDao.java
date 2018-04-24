package kr.co.fkn.service.user;

import java.util.List;

import kr.co.fkn.common.Search;
import kr.co.fkn.service.domain.User;

public interface UserDao {
	
	public List<User> getUserList(Search search);
	
	public int getTotalCount(Search search);


}