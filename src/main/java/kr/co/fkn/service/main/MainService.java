package kr.co.fkn.service.main;

import java.util.Map;

import kr.co.fkn.common.Search;

public interface MainService {
	
	public Map<String,Object> getMainList(Search search) throws Exception; 
	

}
