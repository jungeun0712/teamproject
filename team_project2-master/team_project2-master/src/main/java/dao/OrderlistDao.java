package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.OrderlistMapper;
import logic.Chg;
import logic.OrderForm;
import logic.Orderitem;
import logic.Orderlist;

@Repository
public class OrderlistDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	private Map<String, Object> param = new HashMap<String, Object>();

	public Orderlist orderCheck(Orderlist orderlist) {
		param.clear();
		param.put("orderno", orderlist.getOrderno());
		param.put("payname", orderlist.getPayname());
		param.put("userid", orderlist.getUserid());
		return sqlSession.getMapper(OrderlistMapper.class).orderCheck(param);
	}

	public List<Orderlist> orderlist_my(String kemail, String status, Integer orderstate, Integer pageNum, int limit) {
		param.clear();
		param.put("userid", kemail);
		param.put("status", status);
		param.put("orderstate", orderstate);
		param.put("startrow", (pageNum - 1) * limit);
		param.put("limit", limit);
		return sqlSession.getMapper(OrderlistMapper.class).select(param);
	}

	public int orderlist_my_count(String kemail, String status, Integer orderstate) {
		param.clear();
		param.put("userid", kemail);
		param.put("status", status);
		param.put("orderstate", orderstate);
		return sqlSession.getMapper(OrderlistMapper.class).count(param);
	}

	public int orderlist_count_status(String kemail, String status) {
		param.clear();
		param.put("userid", kemail);
		param.put("status", status);
		return sqlSession.getMapper(OrderlistMapper.class).count_status(param);
	}

	public List<Orderlist> orderlist_my_small(String kemail) {
		param.clear();
		param.put("userid", kemail);
		return sqlSession.getMapper(OrderlistMapper.class).select_small(param);
	}

	public Orderlist orderlist_one(String orderno) {
		param.clear();
		param.put("orderno", orderno);
		return sqlSession.getMapper(OrderlistMapper.class).orderlist_one(param);
	}

	public void orderlist_stateUpdate(String orderno, int i) {
		param.clear();
		param.put("orderno", orderno);
		param.put("orderstate", i);
		sqlSession.getMapper(OrderlistMapper.class).orderlist_stateUpdate(param);
	}
	/* /////////////////////////////csy//////////////////// */


	public void checkend(OrderForm order) {
		param.clear();
		param.put("orderno", order.getOrderno());
		param.put("datepay", order.getDatepay());
		param.put("userid", order.getUserid());
		param.put("payname", order.getPayname());
		param.put("address",  order.getAddress());
		param.put("restaddress", order.getRestaddress());
		param.put("phonenum", order.getPhonenum());
		param.put("username",  order.getUserid());
		param.put("selectpay", order.getSelectpay());
		param.put("usepoint", order.getUsepoint());
		param.put("orderstate", order.getOrderstate());
		param.put("totprice", order.getTotprice());
		 sqlSession.getMapper(OrderlistMapper.class).checkend(param);
		
		
	}

	public void insertorderitem(int itemnum, String orderno, int quantity, int price, String userid) {
		param.clear();
		param.put("itemnum", itemnum);
		param.put("orderno",  orderno);
		param.put("quantity", quantity);
		param.put("price",  price);
		param.put("userid",  userid);
		 sqlSession.getMapper(OrderlistMapper.class).insertorderitem(param);
			
	}

	public Orderitem orderlist_out(String orderno) {
		param.clear();
		param.put("orderno",  orderno);
		return sqlSession.getMapper(OrderlistMapper.class).orderlist_out(param);
	}

	public void orderstate_chg(String chg_orderno) {
		param.clear();
		param.put("orderno",  chg_orderno);
		sqlSession.getMapper(OrderlistMapper.class).orderstate_chg(param);
	}

	


	

}