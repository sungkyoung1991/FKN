package kr.co.fkn.service.main;

import java.util.List;

import kr.co.fkn.common.Search;
import kr.co.fkn.service.domain.Main;

public interface MainDao {
	
	public List<Main> getMainList(Search search) throws Exception;
	
	public int getTotalCount(Search search) throws Exception;

}
