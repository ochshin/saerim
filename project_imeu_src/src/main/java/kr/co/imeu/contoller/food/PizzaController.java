package kr.co.imeu.contoller.food;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import kr.co.imeu.service.food.PizzaService;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PizzaController {
	private final Log log = LogFactory.getLog(this.getClass());
	
	@Autowired
	private PizzaService pizzaService;

	@RequestMapping("/food/pizza/list.do")
	public String selectList(@RequestParam Map<String, Object> paramMap, Model objModel, HttpSession httpSession) throws Exception {
		log.info("\n000000000000000000000000000000000");
		List<Map<String, Object>> list = pizzaService.selectList(paramMap);	
		
		log.info("\n1111111111111111111");
		for(int i=0; i<list.size(); i++){
			log.info("list[" + i + "] :" + list.get(i).toString());	
		}
		log.info("\n22222222222222");
		objModel.addAttribute("list", list);

		return "food/pizza/list";
	}
}
