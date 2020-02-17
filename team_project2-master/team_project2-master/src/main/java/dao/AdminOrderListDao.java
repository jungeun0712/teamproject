package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.AdminOrderListMapper;
import dao.mapper.OrderlistMapper;
import logic.AdminOrderList;
import logic.Orderlist;

@Repository
public class AdminOrderListDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	private Map<String, Object> param = new HashMap<String, Object>();

	public int admin_ordercount(Integer orderstate) {
		param.clear();
		param.put("orderstate", orderstate);
		return sqlSession.getMapper(AdminOrderListMapper.class).count(param);
	}

	public List<AdminOrderList> admin_orderlist(Integer pageNum, Integer orderstate, int limit) {
		param.clear();
		param.put("startrow", (pageNum - 1) * limit);
		param.put("limit", limit);
		param.put("orderstate", orderstate);
		return sqlSession.getMapper(AdminOrderListMapper.class).select(param);
	}


	public Orderlist orderlist_one(String orderno) {
		param.clear();
		param.put("orderno", orderno);
		return sqlSession.getMapper(AdminOrderListMapper.class).orderlist(param).get(0);
	}

	public int orderno_count(String orderno) {
		param.clear();
		param.put("orderno", orderno);
		return sqlSession.getMapper(AdminOrderListMapper.class).orderno_count(param);
	}

	public List<Orderlist> orderlist(String orderno) {
		param.clear();
		param.put("orderno", orderno);
		return sqlSession.getMapper(AdminOrderListMapper.class).orderlist(param);
	}

	public void admin_orderstateUpdate(String orderno, int orderstate) {
		param.clear();
		param.put("orderno", orderno);
		param.put("orderstate", orderstate);
		sqlSession.getMapper(AdminOrderListMapper.class).orderstateUpdate(param);
	}

	public int admin_ordercount_group(Integer orderstate) {
		param.clear();
		param.put("orderstate", orderstate);
		return sqlSession.getMapper(AdminOrderListMapper.class).count_group(param);
	}

	public List<AdminOrderList> admin_orderlist_group(Integer pageNum, Integer orderstate, int limit) {
		param.clear();
		param.put("startrow", (pageNum - 1) * limit);
		param.put("limit", limit);
		param.put("orderstate", orderstate);
		return sqlSession.getMapper(AdminOrderListMapper.class).select_group(param);
	}

	public void admin_orderstateUpdate(String orderno, int orderstate, String status) {
		param.clear();
		param.put("orderno", orderno);
		param.put("orderstate", orderstate);
		param.put("status", status);
		sqlSession.getMapper(AdminOrderListMapper.class).orderstateUpdate(param);
	}
	

}