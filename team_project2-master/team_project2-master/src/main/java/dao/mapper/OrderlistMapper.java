package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import logic.Orderitem;
import logic.Orderlist;

public interface OrderlistMapper {

	@Select("select * from orderlist where orderno = #{orderno} " + "and userid=#{userid} and payname=#{payname}")
	Orderlist orderCheck(Map<String, Object> param);

	@Update("update orderlist set orderstate=6 where userid=#{userid} and orderno=#{chg_orderno}")
	void update(Map<String, Object> param);

	@Select("<script>"
			+ " SELECT OL.orderno,OL.userid, OI.price, OI.quantity, I.itemname, I.itemfile1url, OL.orderdate, OL.orderstate"
			+ " FROM orderlist OL JOIN orderitem OI" + " ON OL.orderno = OI.orderno" + " JOIN item I "
			+ " ON OI.itemnum = I.itemnum" + " where OL.userid=#{userid}" + " <if test='status!=null'>"
			+ " and OL.status = #{status}" + "</if>" + "<if test='orderstate!=null'>"
			+ " and OL.orderstate = #{orderstate}" + "</if>"
			+ "ORDER BY OL.orderno DESC, OL.orderno limit #{startrow}, #{limit}" + "</script>")
	List<Orderlist> select(Map<String, Object> param);

	@Select("<script>" + " SELECT count(*)" + " FROM orderlist OL JOIN orderitem OI" + " ON OL.orderno = OI.orderno"
			+ " JOIN item I " + " ON OI.itemnum = I.itemnum" + " where OL.userid=#{userid}"
			+ " <if test='status!=null'>" + " and OL.status = #{status}" + "</if>" + "<if test='orderstate!=null'>"
			+ " and OL.orderstate = #{orderstate}" + "</if>" + "</script>")
	int count(Map<String, Object> param);

	@Select("<script>" + " select count(*) " + " FROM orderlist OL JOIN orderitem OI" + " ON OL.orderno = OI.orderno"
			+ " JOIN item I " + " ON OI.itemnum = I.itemnum" + " where OL.userid=#{userid}" + "<if test='status!=null'>"
			+ " and status=#{status}" + "</if>" + "</script>")
	int count_status(Map<String, Object> param);

	@Select(" select OL.orderno,OL.userid, OI.price, OI.quantity, I.itemname, I.itemfile1url, OL.orderdate, OL.orderstate"
			+ " FROM orderlist OL JOIN orderitem OI" + " ON OL.orderno = OI.orderno" + " JOIN item I "
			+ " ON OI.itemnum = I.itemnum" + " where OL.userid=#{userid}" + " order by OL.orderdate desc")
	List<Orderlist> select_small(Map<String, Object> param);

	@Select(" SELECT M.username," + " I.itemname, I.itemfile1url, OI.price, OI.quantity," + " OL.*"
			+ " FROM orderitem OI JOIN orderlist OL" + " ON OI.orderno=OL.orderno" + " JOIN item I"
			+ " ON I.itemnum = OI.itemnum" + " JOIN member M" + " ON M.userid = OL.userid"
			+ " WHERE OL.orderno=#{orderno}")
	Orderlist orderlist_one(Map<String, Object> param);

	@Update(" update orderlist set orderstate=#{orderstate} where orderno=#{orderno}")
	void orderlist_stateUpdate(Map<String, Object> param);

	@Insert("insert into orderlist values "
			+ "(#{orderno}, #{userid}, #{datepay}, #{payname},#{address}, "
			+ "#{restaddress}, #{phonenum}, #{username}, now(), #{orderstate}, "
			+ "#{usepoint}, #{selectpay}, 'receive',#{totprice})")
	void checkend(Map<String, Object> param);

	
	@Insert("insert into orderitem "
			+ " (itemnum, orderno, quantity, price, userid)"
			+ " values (#{itemnum}, #{orderno}, #{quantity}, #{price}, #{userid})")
	void insertorderitem(Map<String, Object> param);
	
	@Select(" SELECT itemnum, quantity, price"
			+ " FROM orderitem "
			+ " WHERE orderno=#{orderno}")
	Orderitem orderlist_out(Map<String, Object> param);

	@Update(" update orderlist set orderstate=6, status='re-order'"
			+ " where orderno=#{orderno}")
	void orderstate_chg(Map<String, Object> param);



}