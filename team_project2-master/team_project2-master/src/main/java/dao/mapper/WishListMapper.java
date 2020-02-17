package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

import logic.WishList;

public interface WishListMapper {

   @Select(" select count(pickno) from pick where userid=#{userid}")
   int count(Map<String, Object> param);
   
   @Select(" select P.itemnum, P.userid, I.itemfile1url, I.itemname, I.price, P.pickno"
         + " from pick P join item I"
         + " on P.itemnum = I.itemnum"
         + " where userid=#{userid}"
         + " order by P.pickno desc, P.pickno limit ${startrow}, ${limit}")
   List<WishList> select(Map<String, Object> param);

   @Delete(" delete from pick where pickno = #{pickno}")
   void delete(Map<String, Object> param);

   

}