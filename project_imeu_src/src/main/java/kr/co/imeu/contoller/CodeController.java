package kr.co.imeu.contoller;

import java.io.StringWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import kr.co.imeu.service.CodeService;
import kr.co.imeu.util.StringUtil;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class CodeController {
	private final Log log = LogFactory.getLog(this.getClass());
	
	@Autowired
	private CodeService codeService;

	@RequestMapping("/code/index.do")
	public String moveIndex(@RequestParam Map<String, Object> paramMap, Model objModel, HttpSession httpSession) throws Exception {
		return "code/list";
	}

	@RequestMapping(value = "/code/list.do")
	@ResponseBody
	public ResponseEntity<String> list(@RequestParam Map<String, Object> paramMap, Model objModel, HttpSession httpSession) throws Exception {
		Map<String, Object> modelMap = new HashMap<String, Object>();
		StringWriter sw = new StringWriter();
		ObjectMapper mapper = new ObjectMapper();

		try{
			List<Map<String, Object>> list = codeService.getList(paramMap);

			modelMap.put("list", StringUtil.getJSONString(list));
			mapper.writeValue(sw, modelMap);	
		}catch (Exception e){
			log.error("", e);
		}
		
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=UTF-8");

		return new ResponseEntity<String>(sw.toString(), responseHeaders, HttpStatus.CREATED);
	}

	@RequestMapping(value = "/code/create.do")
	@ResponseBody
	public ResponseEntity<String> create(@RequestParam Map<String, Object> paramMap, Model objModel, HttpSession httpSession) throws Exception {
		Map<String, Object> modelMap = new HashMap<String, Object>();
		StringWriter sw = new StringWriter();
		ObjectMapper mapper = new ObjectMapper();

		modelMap.put("success", false);
		
		try{			
			codeService.insertCode(paramMap);	
			
			modelMap.put("message", "저장되었습니다.");
			modelMap.put("success", true);
			
			mapper.writeValue(sw, modelMap);			
		} catch (Exception e) {
			log.error("", e);
		}

		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=UTF-8");

		return new ResponseEntity<String>(sw.toString(), responseHeaders, HttpStatus.CREATED);
	}
	
	
	

	@RequestMapping("/code/codeList.do")
	public String getList(@RequestParam Map<String, Object> paramMap, Model objModel, HttpSession httpSession) throws Exception {
		log.debug("\n\nCodeController /code/codeList.do    start!!!!!!!!!!!!!!!!!!!");
		
		List<Map<String, Object>> list = codeService.getList(paramMap);	
		
		log.debug("\n000000000000000000000000000000000");
		for(int i=0; i<list.size(); i++){
			log.debug("list[" + i + "] :" + list.get(i).toString());	
		}
		log.debug("\n111111111111111111111111111111111");
		objModel.addAttribute("list", list);

		return "code/codeList";
	}
}
