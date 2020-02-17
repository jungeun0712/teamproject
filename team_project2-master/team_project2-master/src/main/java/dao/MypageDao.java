package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.ItemMapper;
import dao.mapper.MypageMapper;
import logic.Cart;
import logic.Contact;
import logic.ItemSet;

@Repository
public class MypageDao {
	@Autowired //spring-db�� �ִ� sqlSessionTemplate�� ����.
	private SqlSessionTemplate sqlSession;
	private Map<String,Object> param = new HashMap<String, Object>();
	   
	public List<ItemSet> cartview(String userid) {
		param.clear();
		param.put("userid",userid);
		return sqlSession.getMapper(MypageMapper.class).cartview(param);
	}

	public void contactinsert(Contact contact) {
		sqlSession.getMapper(MypageMapper.class).contactinsert(contact);
		
	}

	public List<Contact> conlist(String kemail) {
		param.clear();
		param.put("userid",kemail);
		return sqlSession.getMapper(MypageMapper.class).conlist(param);
	}
	   
	   
}
