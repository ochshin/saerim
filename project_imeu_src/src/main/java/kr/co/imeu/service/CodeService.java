package kr.co.imeu.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.co.imeu.dao.CodeDao;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CodeService {
	private final Log log = LogFactory.getLog(this.getClass());
	
	@Autowired
	private CodeDao codedao;

	public List<Map<String, Object>> getList(Map<String, Object> paramMap){
		return codedao.getList(paramMap);
	}
	

	public void insertCode(Map<String, Object> paramMap){
		
		
		Map<String, Object> inMap = new HashMap<String, Object>();
		for(int i=0; i<5; i++){
			inMap.put("GROUP_ID", "F_BOARD_TYPE");
			inMap.put("CODE_ID", String.valueOf(i));
			inMap.put("CODE_TEXT", "TEST NUM");
			inMap.put("ORDER_SEQ", i+5);
			
			if(3 == i){
				inMap.put("CODE_ID", String.valueOf(0));
			}
			
			
			log.debug("inMap[" + i + "] :" + inMap.toString());
			
			codedao.insertCode(inMap);
		}
		
	}
	
}
