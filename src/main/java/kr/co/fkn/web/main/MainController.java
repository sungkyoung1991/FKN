package kr.co.fkn.web.main;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.fkn.common.Page;
import kr.co.fkn.common.Search;
import kr.co.fkn.service.domain.Main;
import kr.co.fkn.service.main.MainService;

@Controller
@RequestMapping("/main/*")
public class MainController {

	@Autowired
	@Qualifier("mainServiceImpl")
	private MainService mainService;
	
	@Value("#{commonProperties['pageSize']}")
	int pageSize;
	
	@Value("#{commonProperties['pageUnit']}")
	int pageUnit;
	
	@RequestMapping(value = "index")
	public String getMainList(
			@ModelAttribute("search") Search search,
			@ModelAttribute("page") Page page,
			Model model
			) throws Exception {

		System.out.println("cc");
		
		if (search.getCurrentPage() == 0) {
			search.setCurrentPage(1);
		}
		search.setPageSize(pageSize);

		Map<String, Object> map = mainService.getMainList(search);
		
		System.out.println("controller Map check..." + map);
		
		System.out.println("end");
		
		model.addAttribute("indexList", map.get("indexList"));
		return "home";


	}


}
