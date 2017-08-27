package kr.co.imeu.contoller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class EditorController {
	private final Log log = LogFactory.getLog(this.getClass());
	
    @RequestMapping(value = "/editor/index.do")
	public String getList(@RequestParam Map<String, Object> paramMap, Model objModel, HttpSession httpSession){
		log.debug("\n  00000000000");
		
		return "editor/main";
	}
}
