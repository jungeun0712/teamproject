package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import logic.Cart;
import logic.Item;
import logic.ItemSet;
import logic.Orderitem;
import logic.Pick;
import logic.Review;
import logic.Up;

public interface ItemMapper {
	String itemcol = "select itemnum, itemname, price, itemfile1url, itemfile2url,"
			+ "itemfile3url, category, subcategory, character_c, regdate, itemcontent, itemcontent2 from item";
	String itemcol2 = "select item.itemnum, itemname, item.price, itemfile1url, itemfile2url,"
			+ "itemfile3url, category, subcategory, character_c, regdate from item";
	String itemcol3 = "select itemnum, itemname, price, itemfile1url, itemfile2url,"
			+ "itemfile3url, category, subcategory, character_c, regdate, itemcontent, itemcontent2 ";
	
	@Select("<script>"
			+ itemcol3+"<if test='userid!=null'>,(SELECT pickno FROM pick WHERE item.itemnum = pick.itemnum " + 
					"AND pick.userid='${userid}') pickno </if>"
					+ "from item where 1 =1"
			+ "<if test='category!= null'>and category = #{category}</if>"
			+ "<if test='subcategory != null'>and subcategory = #{subcategory}</if>"
			+ "<if test='character_c != null'>and character_c = #{character_c}</if>"
			+"<if test='select2 == null'> order by regdate desc</if>"
			+ "<if test='select2 != null'>"
			+ "<if test='select2 == 1'>order by regdate desc</if>"
			+ "<if test='select2 == 3'> ORDER BY price</if>"
			+ "<if test='select2 == 4'>order by price desc</if>"
			+"</if>"
			+ "</script>")
	List<Item> itemlist(Map<String, Object> param);
	
	
	@Select("<script>select count(*) from item where 1 = 1" + 
			"<if test='category!= null'>and category = #{category}</if>" + 
			"<if test='subcategory != null'>and subcategory = #{subcategory}</if>" + 
			"<if test='character_c != null'>and character_c = #{character_c}</if>" +
			"</script>")
	int itemlistcount(Map<String, Object> param);

	@Select("<script>"+itemcol2+" left JOIN orderitem on item.itemnum = orderitem.itemnum where 1=1" + 
			"<if test='character_c!= null'>and character_c = #{character_c}</if>"
			+ "<if test='category != null'>and category = #{category}</if>"
			+ "<if test='subcategory != null'>and subcategory = #{subcategory}</if>"+
			"GROUP BY item.itemnum" + 
			" ORDER BY quantity desc</script>")
	List<Item> itemsale(Map<String, Object> param);

	// ������ �󼼳��� 
	@Select("<script>"+itemcol+" where itemnum = ${itemnum}</script>")
	Item itemdetail(Map<String, Object> param);

	@Select("<script>SELECT userid, reviewno, "
			+ "reviewcontent, itemavg, reviewdate" + 
			" FROM review"+ 
			" WHERE itemnum = #{itemnum}"
			+ "<if test='sort!= null'>"
			+ "<if test='sort == new'>order by reviewdate desc</if>"
			+ "</if>"
			+ "<if test='sort==null'>order by reviewdate desc</if>"
			+ "</script>")
	List<Review> reviewlist(Map<String, Object> param);

	@Select("select count(*) from review where itemnum = #{itemnum}")
	int reviewcount(int no);

	// ���� �ۼ�
	@Insert("insert into review (userid, reviewno, reviewcontent, itemavg, "
			+ "reviewdate, itemnum) values (#{review.userid}, #{review.reviewno}, "
			+ "#{review.reviewcontent}, #{review.itemavg}, now(), "
			+ "#{review.itemnum})")
	void reviewwrite(Map<String, Object> param);

	@Select("select ifnull(max(reviewno), 0) from review")
	int maxnum();

	@Select("SELECT upno, up.userid "
			+ "from review JOIN up ON review.reviewno = up.reviewno " + 
			"WHERE review.reviewno = #{reviewno}")
	List<Up> uplist(Map<String, Object> param);

	@Select("<script>select itemnum, itemname, price, itemfile1url "
			+"<if test='i==2'>,(select COUNT(*) from pick WHERE item.itemnum = pick.itemnum group by itemnum) pickcnt</if>"
			+ "from item"
			+ "<if test='i==1'>order by regdate desc</if>"
			+ "<if test='i==2'>ORDER BY pickcnt desc, regdate desc</if>"
			+ "<if test='i==3'>order by itemnum asc</if>"
			+ "</script>")
	List<Item> indexlist(Map<String, Object> param);

	@Select("select count(*) from up")
	int maxnumup();

	@Insert("insert into up (upno, userid, reviewno) values ("
			+ "#{upno}, #{userid}, #{reviewno})")
	void reviewup(Map<String, Object> param);

	@Delete("delete from up where reviewno = #{reviewno} and "
			+ "userid = #{userid}")
	void reviewdown(Map<String, Object> param);

	@Select("SELECT review.userid, review.reviewno," + 
			"review.reviewcontent, review.itemavg, review.reviewdate "
			+ "FROM review JOIN up " + 
			"ON review.reviewno = up.reviewno" + 
			" WHERE itemnum = #{itemnum} " + 
			"GROUP BY review.reviewno " + 
			"ORDER BY COUNT(*) desc, reviewdate DESC")
	List<Review> reviewlist2(Map<String, Object> param);

	@Select("<script>"
			+ "select *from pick where userid = #{userid} "
			+ "<if test='itemnum != null'> and itemnum=#{itemnum}</if>"
			+ "</script>")
	Pick pickselect(Map<String, Object> param);

	@Insert("insert into pick (itemnum, userid, pickno) "
			+ "values (#{itemnum}, #{userid}, #{pickno})")
	void heartup(Map<String, Object> param);

	@Delete("delete from pick where pickno = #{pickno}")
	void heartdown(Map<String, Object> param);

	@Insert("insert into cart values (#{itemnum}, #{userid}, #{quantity}, #{price})")
	void cartadd(Map<String, Object> param);

	@Delete("delete from cart where itemnum=#{itemnum} and "
			+ "userid=#{userid}")
	void cartdelete(Map<String, Object> param);

	@Select("select userid from cart where itemnum = #{itemnum} and"
			+" userid=#{userid}")
	ItemSet cartone(Map<String, Object> param);

	@Update("update cart set quantity = #{quantity}"
			+ " where userid=#{userid} and itemnum =#{itemnum}")
	void cartaddupdate(Map<String, Object> param);

	@Select("select ifnull(max(pickno), 0) from pick")
	int maxpix(Map<String, Object> param);

	@Select("<script>" + 
			"SELECT itemnum, itemname, price, itemfile1url, " + 
			"(SELECT pickno FROM pick WHERE item.itemnum = pick.itemnum "
			+ "AND pick.userid='${userid}') pickno " 
			+"<if test='i==2'>,(select COUNT(*) from pick WHERE item.itemnum = pick.itemnum group by itemnum) pickcnt</if>"
			+"FROM item "
			+ "<if test='i==1'>order by regdate desc</if>"
			+ "<if test='i==2'>ORDER BY pickcnt desc, regdate desc</if>"
			+ "<if test='i==3'>order by itemnum asc</if></script>")
	List<Item> indexitemlist(Map<String, Object> param);

	@Delete("delete from cart where userid = #{userid}")
	void deletecart(Map<String, Object> param);

	@Select("select *from orderlist l join orderitem i"
			+ " on l.orderno = l.orderno "
			+ "where l.userid = #{userid}"
			+ "  and i.itemnum = #{itemnum}"
			+  " and l.orderstate = 5")
	List<Orderitem> orderitemselect(Map<String, Object> param);

}
