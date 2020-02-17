package dao;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.WhousingMapper;
import logic.Whousing;

@Repository
public class WhousingDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	private Map<String, Object> param = new HashMap<String, Object>();

	public int maxwhousingnum() {
		return sqlSession.getMapper(WhousingMapper.class).maxwhousingnum();
	}

	public void insert(Whousing whousing) {
		param.clear();
		sqlSession.getMapper(WhousingMapper.class).insert(whousing);
	}

	public Whousing selectOne(Integer whousingnum) {
		param.clear();
		param.put("whousingnum", whousingnum);
		return sqlSession.getMapper(WhousingMapper.class).select(param).get(0);
	}

	public List<Whousing> list() {
		return sqlSession.getMapper(WhousingMapper.class).select(param);
	}

	public List<Whousing> keep() {
		return sqlSession.getMapper(WhousingMapper.class).keepselect(param);
	}

	public void update(Whousing whousing) {
		System.out.println(whousing.getItemnum());
		sqlSession.getMapper(WhousingMapper.class).update(whousing);
	}

	public void insert(int itemnum, int whousingnum) {
		param.clear();
		param.put("itemnum", itemnum);
		param.put("whousingnum", ++whousingnum);
		sqlSession.getMapper(WhousingMapper.class).whousing_st_insert(param);
//      param.put("whousingnum",whousingnum+1);
//      sqlSession.getMapper(WhousingMapper.class).whousing_in_insert(param);
//      param.put("whousingnum",whousingnum+2);
//      sqlSession.getMapper(WhousingMapper.class).whousing_out_insert(param); 
	}

	public List<Whousing> out() {
		return sqlSession.getMapper(WhousingMapper.class).outselect(param);
	}

	public void outupdate(Whousing whousing) {
		sqlSession.getMapper(WhousingMapper.class).outinsert(whousing);
	}

	public Whousing getdbWhousing(int itemnum, int whousing_code) {
		param.clear();
		param.put("itemnum", itemnum);
		param.put("whousing_code", whousing_code);
		return sqlSession.getMapper(WhousingMapper.class).dbselect(param);
	}

	public List<Whousing> in(Integer pageNum, int limit) {
		param.clear();
		param.put("startrow", (pageNum - 1) * limit);
		param.put("limit", limit);
		return sqlSession.getMapper(WhousingMapper.class).inselect(param);
	}

	public List<Whousing> whousingoutwhousing(Integer pageNum, int limit) {
		param.clear();
		param.put("startrow", (pageNum - 1) * limit);
		param.put("limit", limit);
		return sqlSession.getMapper(WhousingMapper.class).whousingoutwhousing(param);
	}

	public int count() {
		return sqlSession.getMapper(WhousingMapper.class).count(param);
	}

	public void chg_w_bad_insert(int whousingnum, int itemnum, int price, int quantity, Date currentTime) {
		param.put("whousingnum", whousingnum);
		param.put("itemnum", itemnum);
		// 기존 price
		// 기존 quant
		param.put("whousingprice", price);
		param.put("whousingquant", quantity);
		param.put("in_date", currentTime);
		sqlSession.getMapper(WhousingMapper.class).chg_w_bad_insert(param);
	}

	public void chg_w_bad_update(int itemnum, int price, int quantity, Date currentTime) {
		param.clear();
		param.put("itemnum", itemnum);
		// 기존 price
		// 기존 quant
		long add = price * quantity;
		param.put("whousingprice", add);
		param.put("whousingquant", quantity);
		param.put("in_date", currentTime);

		sqlSession.getMapper(WhousingMapper.class).chg_w_bad_update(param);
	}

	public void whousing_Update(Whousing whousing, Date currentTime) {
		long sub = -whousing.getWhousingprice();
		whousing.setWhousingprice(sub * whousing.getWhousingquant());
		whousing.setIn_date(currentTime);

		sqlSession.getMapper(WhousingMapper.class).whousing_Update(whousing);
	}

	public int count(int state) {
		param.clear();
		param.put("state", state);
		return sqlSession.getMapper(WhousingMapper.class).count(param);
	}

	public List<Whousing> keep(Integer pageNum, int limit, int state) {
		param.clear();
		param.put("startrow", (pageNum - 1) * limit);
		param.put("limit", limit);
		param.put("state", state);
		return sqlSession.getMapper(WhousingMapper.class).keepselect(param);
	}

	public void order_whousing_outWrite(int whousingnum, int itemnum, int price, int quantity, Date currentTime) {
		param.clear();
		param.put("itemnum", itemnum);
		param.put("whousingprice", price);
		param.put("whousingquant", quantity);
		param.put("whousingnum", whousingnum);
		param.put("out_date", currentTime);
		sqlSession.getMapper(WhousingMapper.class).order_whousing_outWrite(param);
	}

	public void order_whousing_outUpdate(int itemnum, int price, int quantity, Date currentTime) {
		param.clear();
		param.put("itemnum", itemnum);
		// 기존 price
		// 기존 quant
		long add = price * quantity;
		param.put("whousingprice", add);
		param.put("whousingquant", quantity);
		param.put("out_date", currentTime);
		sqlSession.getMapper(WhousingMapper.class).order_whousing_outUpdate(param);
	}

	public int admin_incount_out() {
		return sqlSession.getMapper(WhousingMapper.class).admin_incount_out();
	}



}