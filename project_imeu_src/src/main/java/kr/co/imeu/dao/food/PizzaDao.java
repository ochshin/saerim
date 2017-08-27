package kr.co.imeu.dao.food;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository
public class PizzaDao {
	@Autowired
	@Qualifier("sqlSession")
	private SqlSession sqlSession;

	public List<Map<String, Object>> selectList(Map<String, Object> paramMap){
		return sqlSession.selectList("Food.Pizza.selectList", paramMap);
	}
	public Map<String, Object> selectOne(Map<String, Object> paramMap){
		return sqlSession.selectOne("Food.Pizza.selectOne", paramMap);
	}
}
