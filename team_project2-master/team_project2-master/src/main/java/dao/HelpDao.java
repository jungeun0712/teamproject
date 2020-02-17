package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.HelpMapper;
import logic.Help;

@Repository 
public class HelpDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	private Map<String, Object> param = new HashMap<String, Object>();
	
	public List<Help> selectboard(int boardcode, Object filter, Integer pageNum, int limit) {
		param.clear();
		if(pageNum != null) { // and limit?
			param.put("startrow", (pageNum - 1) * limit);
			param.put("limit", limit);
		}
		param.put("boardcode", boardcode);
		param.put("filter", filter);
		List<Help> list = sqlSession.getMapper(HelpMapper.class).selectboard(param);
		return list;
	}

	public int count(int boardcode, Object filter) {
		param.clear();
		param.put("boardcode", boardcode);
		param.put("filter", filter);
		return sqlSession.getMapper(HelpMapper.class).count(param);
	}

	public Help selectOne(Integer no) {
		param.clear();
		param.put("qnano", no);
		Help help = sqlSession.getMapper(HelpMapper.class).selectOne(param);
		return help;
	}

	public void boardupdate(Help help) {
		sqlSession.getMapper(HelpMapper.class).boardupdate(help);
		
	}

	public int maxnum() {
		return sqlSession.getMapper(HelpMapper.class).maxnum();
	}

	public void insert(Help help) {
		sqlSession.getMapper(HelpMapper.class).insert(help);
	}


	public void boardDelete(int qnano) {
		param.clear();
		param.put("qnano", qnano);
		sqlSession.getMapper(HelpMapper.class).boardDelete(param);
		
	}
}
