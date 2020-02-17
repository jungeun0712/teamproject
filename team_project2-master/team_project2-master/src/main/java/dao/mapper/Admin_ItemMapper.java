package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import logic.Item;

public interface Admin_ItemMapper {
   
   String itemcolumn = "select itemnum,itemname,price,"
         + "itemfile1url,itemfile2url,itemfile3url,itemcontent,itemcontent2,"
         + "category,subcategory,character_c,regdate from item ";
   
   @Select({"<script>"
      ,"select count(*) from item "
      ,"<if test='itemnum != null'> where itemnum=#{itemnum}</if>"
      ,"<if test='selectvalue == 1'> where category = 1</if>"
      ,"<if test='selectvalue == 2'> where category = 2</if>"
      ,"<if test='selectvalue == 3'> where category = 3</if>"
      ,"<if test='selectvalue == 4'> where character_c = 1</if>"
      ,"<if test='selectvalue == 5'> where character_c = 2</if>"
      ,"</script>"})
   int count(Map<String, Object> param);
   
   @Select({"<script>", itemcolumn
      ,"<if test='selectvalue == 1'> where category = 1</if>"
      ,"<if test='selectvalue == 2'> where category = 2</if>"
      ,"<if test='selectvalue == 3'> where category = 3</if>"
      ,"<if test='selectvalue == 4'> where character_c = 1</if>"
      ,"<if test='selectvalue == 5'> where character_c = 2</if>"
      ,"<if test='itemnum != null'> where itemnum=#{itemnum}</if>"
      ,"<if test='itemnum == null'> order by itemnum desc, itemnum limit #{startrow},#{limit}</if>"
      ,"</script>"})
   List<Item> select(Map<String, Object> param);

   @Select("select ifnull(max(itemnum),0) from item")
   int maxitemnum();

   @Insert("insert into item "
         + "(itemnum,itemname,price,itemfile1url,itemfile2url,itemfile3url,itemcontent,itemcontent2,category,subcategory,character_c,regdate) "
         + " values (#{itemnum}, #{itemname}, #{price}, #{itemfile1url}, #{itemfile2url}, #{itemfile3url}, #{itemcontent}, #{itemcontent2}, #{category}, #{subcategory}, #{character_c}, now())")
   void insert(Item item);
   
   @Update("update item set itemname=#{itemname}, "
         + "price=#{price}, itemfile1url=#{itemfile1url}, itemfile2url=#{itemfile2url}, itemfile3url=#{itemfile3url}, "
         + "itemcontent=#{itemcontent}, itemcontent2=#{itemcontent2}, category=#{category}, subcategory=#{subcategory}, character_c=#{character_c} "
         + "where itemnum=#{itemnum}")
   void update(Item admin_item);

   @Delete("delete from item where itemnum=#{itemnum}")
   void delete(Map<String, Object> param);


}