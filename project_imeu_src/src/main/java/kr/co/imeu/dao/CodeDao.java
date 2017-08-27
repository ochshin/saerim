package kr.co.imeu.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;


@Repository
public class CodeDao {
	@Autowired
	@Qualifier("sqlSession")
	private SqlSession sqlSession;

	public List<Map<String, Object>> getList(Map<String, Object> paramMap){
		return sqlSession.selectList("code.getList", paramMap);
	}
	public void insertCode(Map<String, Object> paramMap){
		sqlSession.insert("code.insertCode", paramMap);
	}	
	
}
