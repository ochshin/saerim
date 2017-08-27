package kr.co.imeu.util;

import java.io.IOException;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;


public class StringUtil {	
	public static String getJSONString(Object obj) throws JsonGenerationException, JsonMappingException, IOException {
		ObjectMapper objectMapper = new ObjectMapper();
		String jsonString = "";

		jsonString = objectMapper.writeValueAsString(obj);
		
		return jsonString;
	}
	
}
