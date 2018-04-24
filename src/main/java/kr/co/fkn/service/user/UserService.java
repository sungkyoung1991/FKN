package kr.co.fkn.service.user;


import java.util.Map;

import kr.co.fkn.common.Search;



public interface UserService {
	
	public Map<String,Object> getUserList(Search search);
	

}    