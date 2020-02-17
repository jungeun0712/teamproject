package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.QnaboardMapper;
import logic.Qnaboard;

@Repository
public class QnaboardDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	private Map<String, Object> param = new HashMap<String, Object>();

	public void qnainsert(Qnaboard qnaboard) {
		sqlSession.getMapper(QnaboardMapper.class).qnainsert(qnaboard);
	}

	public Qnaboard getboard(Integer qnano) {
		param.clear();
		param.put("qnano", qnano);
		return sqlSession.getMapper(QnaboardMapper.class).getboard(param);
	}

}