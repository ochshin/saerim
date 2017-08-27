package kr.co.imeu.service.food;

import java.util.List;
import java.util.Map;

import kr.co.imeu.dao.food.PizzaDao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PizzaService {
	@Autowired
	private PizzaDao pizzadao;

	public List<Map<String, Object>> selectList(Map<String, Object> paramMap){
		return pizzadao.selectList(paramMap);
	}
	public Map<String, Object> selectOne(Map<String, Object> paramMap){
		return pizzadao.selectOne(paramMap);
	}
}
