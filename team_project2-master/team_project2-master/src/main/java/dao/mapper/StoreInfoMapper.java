package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import logic.StoreInfo;

public interface StoreInfoMapper {

   @Select(" select ifnull(max(storeno),0) from storeinfo")
   int maxnum();

   @Insert(" insert into storeinfo (storeno,storename,storetel,storetime,storeadd, "
        + " storepic,mapurl,mapiframe) "
        + " values (#{storeno},#{storename},#{storetel},#{storetime},#{storeadd}, "
        + " #{storepic},#{mapurl},#{mapiframe}) "
         )
   void insert(StoreInfo storeInfo);

   @Select({"<script>"
         , " select * from storeinfo"
         , " <if test='storeno != null'>"
         , " where storeno=#{storeno}"
         , " </if>"
         , "</script>"})
   List<StoreInfo> select(Map<String, Object> param);

   @Select("select count(*) from storeinfo")
   int count();

   @Update("update storeinfo set storename= #{storename}, storetel= #{storetel}, "
         + " storetime = #{storetime}, storeadd = #{storeadd}, "
         + " storepic = #{storepic}, "
         + " mapurl = #{mapurl}, mapiframe = #{mapiframe} "
         + " where storeno = #{storeno}")
   void update(StoreInfo storeInfo);

   @Delete("delete from storeinfo where storeno=#{storeno}")
   void delete(StoreInfo storeInfo);

}