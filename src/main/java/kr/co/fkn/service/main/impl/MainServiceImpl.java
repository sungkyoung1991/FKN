package kr.co.fkn.service.main.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import kr.co.fkn.common.Search;
import kr.co.fkn.service.domain.Main;
import kr.co.fkn.service.main.MainDao;
import kr.co.fkn.service.main.MainService;

@Service("mainServiceImpl")
public class MainServiceImpl implements MainService {

	@Autowired
	@Qualifier("mainDaoImpl")
	private MainDao mainDao;

	public Map<String, Object> getMainList(Search search) throws Exception {

		Map<String, Object> map = new HashMap<String, Object>();

		List<Main> indexList = new ArrayList<Main>();

		indexList = mainDao.getMainList(search);
//		int totalCount = mainDao.getTotalCount(search);
		
		map.put("indexList", indexList);
//		map.put("totalCount", totalCount);

		return map;
	}

}
