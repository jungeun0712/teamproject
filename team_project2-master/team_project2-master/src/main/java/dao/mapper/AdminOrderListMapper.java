package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import logic.AdminOrderList;
import logic.Orderlist;

public interface AdminOrderListMapper {

	@Select({ "<script>" + " select count(orderno) from orderlist" + "<if test='orderstate!=null'>"
			+ " where orderstate = #{orderstate}" + "</if>" + "</script>" })
	int count(Map<String, Object> param);

	@Select({ "<script>"
			+ " SELECT OL.orderno, OI.price, OI.quantity, I.itemname, I.itemfile1url, OL.orderdate, OL.orderstate"
			+ " FROM orderlist OL JOIN orderitem OI" + " ON OL.orderno = OI.orderno" + " JOIN item I "
			+ " ON OI.itemnum = I.itemnum" + "<if test='orderstate!=null'>" + " where OL.orderstate = #{orderstate}"
			+ "</if>"
//            + " order by orderno desc, orderno limit #{startrow},#{limit}"
			+ "</script>" })
	List<AdminOrderList> select(Map<String, Object> param);

	@Update(" update orderlist set orderstate= #{orderstate},status=#{status} where orderno= #{orderno}")
	void orderstateUpdate(Map<String, Object> param);

	@Select(" SELECT M.username," + " I.itemname, I.itemfile1url, OI.price, OI.quantity," + " OL.*"
			+ " FROM orderitem OI JOIN orderlist OL" + " ON OI.orderno=OL.orderno" + " JOIN item I"
			+ " ON I.itemnum = OI.itemnum" + " JOIN member M" + " ON M.userid = OL.userid"
			+ " WHERE OL.orderno=#{orderno}")
	List<Orderlist> orderlist(Map<String, Object> param);

	@Select(" SELECT count(*)" + " FROM orderitem OI JOIN orderlist OL" + " ON OI.orderno=OL.orderno" + " JOIN item I"
			+ " ON I.itemnum = OI.itemnum" + " JOIN member M" + " ON M.userid = OL.userid"
			+ " WHERE OL.orderno=#{orderno}")
	int orderno_count(Map<String, Object> param);

	@Select({ "<script>" + " SELECT count(*) FROM (" + " SELECT count(*)" + " FROM orderitem OI JOIN orderlist OL"
			+ " ON OI.orderno=OL.orderno" + " JOIN item I" + " ON I.itemnum = OI.itemnum" + " JOIN member M"
			+ " ON M.userid = OL.userid" + "<if test='orderstate!=null'>" + " where OL.orderstate = #{orderstate}"
			+ "</if>" + " GROUP BY OL.orderno ) a" + "</script>" })
	int count_group(Map<String, Object> param);

	@Select({ "<script>" + " SELECT M.username," + " I.itemname, I.itemfile1url, OI.price, OI.quantity," + " OL.*"
			+ " FROM orderitem OI JOIN orderlist OL" + " ON OI.orderno=OL.orderno" + " JOIN item I"
			+ " ON I.itemnum = OI.itemnum" + " JOIN member M" + " ON M.userid = OL.userid"
			+ "<if test='orderstate!=null'>" + " where OL.orderstate = #{orderstate}" + "</if>" + " GROUP BY OL.orderno"
			+ "</script>" })
	List<AdminOrderList> select_group(Map<String, Object> param);

}