package kr.co.fkn.service.user;


import kr.co.fkn.service.domain.User;



public interface UserService {
	
	
	public User getUser(String userId) throws Exception;

	public void createUser(User user);

	public String idCheck(String userId) throws Exception;

	public String nickCheck(String nickname) throws Exception;


	public User getSuperUser(Integer userNo)throws Exception;
	
	public void updateUser(User userVO)throws Exception;
	
	public void deleteUser(Integer userNo)throws Exception;
	

}    