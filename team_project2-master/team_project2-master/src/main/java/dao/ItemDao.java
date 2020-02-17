package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.ItemMapper;
import logic.Item;
import logic.ItemSet;
import logic.Orderitem;
import logic.Pick;
import logic.Review;
import logic.Up;
@Repository
public class ItemDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	private Map<String, Object> param = new HashMap<String, Object>();
	
	public List<Item> itemlist(Integer category, Integer subcategory, Integer character, Integer select2, String userid) {
		param.clear();
		param.put("category", category);
		param.put("subcategory", subcategory);
		param.put("character_c", character);
		param.put("userid",  userid);
		if(select2 != null) {
			param.put("select2",  select2);
		}
		return sqlSession.getMapper(ItemMapper.class).itemlist(param);
	}

	public int itemlistcount(Integer category, Integer subcategory, Integer character) {
		param.clear();
		param.put("category", category);
		param.put("subcategory", subcategory);
		param.put("character_c", character);
		
		return sqlSession.getMapper(ItemMapper.class).itemlistcount(param);
	}

	public List<Item> itemsale(Integer category, Integer subcategory, Integer character_c) {
		param.clear();
		param.put("character_c",  character_c);
		param.put("subcategory",  subcategory);
		param.put("category", category);
		return sqlSession.getMapper(ItemMapper.class).itemsale(param);
	}

	public Item itemdetail(int no) {
		param.clear();
		param.put("itemnum", no);
		return sqlSession.getMapper(ItemMapper.class).itemdetail(param);
	}

	public List<Review> reviewlist(int no, String sort) {
		param.clear();
		param.put("itemnum", no);
		param.put("sort", sort);
		return sqlSession.getMapper(ItemMapper.class).reviewlist(param);
	}

	public int reviewcount(int no) {
		param.clear();
		param.put("itemnum",  no);
		return sqlSession.getMapper(ItemMapper.class).reviewcount(no);
	}

	public void reviewwrite(Review review) {
		param.clear();
		param.put("review", review);
		sqlSession.getMapper(ItemMapper.class).reviewwrite(param);
		
	}

	public int maxnum() {
		return sqlSession.getMapper(ItemMapper.class).maxnum();
	}

	// ��õ ����Ʈ
	public List<Up> uplist(int reviewno) {
		param.clear();
		param.put("reviewno",reviewno);
		return sqlSession.getMapper(ItemMapper.class).uplist(param);
		
	}

	public List<Item> indexlist(int i) {
		param.clear();
		param.put("i",  i);
		return sqlSession.getMapper(ItemMapper.class).indexlist(param);
	}

	
	public void reviewup(Up up) {
		param.clear();
		param.put("reviewno",  up.getReviewno());
		param.put("userid",  up.getUserid());
		param.put("upno", up.getUpno());
		sqlSession.getMapper(ItemMapper.class).reviewup(param);
		
	}

	public int maxnumup() {
		return sqlSession.getMapper(ItemMapper.class).maxnumup();
		
	}

	public void reviewdown(Up up) {
		param.clear();
		param.put("reviewno",  up.getReviewno());
		param.put("userid",  up.getUserid());
		sqlSession.getMapper(ItemMapper.class).reviewdown(param);
		
	}

	public List<Review> reviewlist2(int no, String sort) {
		param.clear();
		param.put("itemnum", no);
		param.put("sort", sort);
		return sqlSession.getMapper(ItemMapper.class).reviewlist2(param);
	}

	public Pick pickselect(String userid, int itemnum) {
		param.clear();
		param.put("userid", userid);
		param.put("itemnum", itemnum);
		return sqlSession.getMapper(ItemMapper.class).pickselect(param);
	}

	public void heartup(Pick p) {
		param.clear();
		param.put("userid",  p.getUserid());
		param.put("itemnum", p.getItemnum());
		param.put("pickno", p.getPickno());
		sqlSession.getMapper(ItemMapper.class).heartup(param);
		
	}

	public void heartdown(Pick p) {
		param.clear();
		param.put("pickno", p.getPickno());
		sqlSession.getMapper(ItemMapper.class).heartdown(param);
		
	}

	public void cartadd(ItemSet itemSet) {
		param.clear();
		param.put("itemnum", itemSet.getItem().getItemnum());
		param.put("price", itemSet.getPrice());
		param.put("quantity",  itemSet.getQuantity());
		param.put("userid",  itemSet.getUserid());
		sqlSession.getMapper(ItemMapper.class).cartadd(param);
		
	}

	public void cartdelete(ItemSet itemSet) {
		param.clear();
		param.put("itemnum", itemSet.getItem().getItemnum());
		param.put("userid",  itemSet.getUserid());
		sqlSession.getMapper(ItemMapper.class).cartdelete(param);
		
	}

	public ItemSet cartone(String userid, int itemnum) {
		param.clear();
		param.put("itemnum", itemnum);
		param.put("userid", userid);
		return sqlSession.getMapper(ItemMapper.class).cartone(param);
	}

	public void cartaddupdate(ItemSet itemSet) {
		param.clear();
		param.put("itemnum", itemSet.getItem().getItemnum());
		param.put("quantity",  itemSet.getQuantity());
		param.put("userid",  itemSet.getUserid());
		sqlSession.getMapper(ItemMapper.class).cartaddupdate(param);
		
	}

	public int maxpix() {
		return sqlSession.getMapper(ItemMapper.class).maxpix(param);
	}

	public List<Item> indexitemlist(String userid, int i) {
		param.clear();
		param.put("userid",  userid);
		param.put("i", i);
		return sqlSession.getMapper(ItemMapper.class).indexitemlist(param);
	}

	public void deletecart(String userid) {
		param.clear();
		param.put("userid", userid);
		sqlSession.getMapper(ItemMapper.class).deletecart(param);
		
	}

	public List<Orderitem> orderitemselect(String userid, int itemnum) {
		param.clear();
		param.put("userid", userid);
		param.put("itemnum",  itemnum);
		return sqlSession.getMapper(ItemMapper.class).orderitemselect(param);
	}


	
}
