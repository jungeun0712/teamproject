package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import logic.Chg;

public interface ChgMapper {

   @Insert(" insert into chg"
         + " (chg_no,chg_orderno,chg_orderdate,chg_tel,"
         + " chg_account,chg_reseon,chg_detail,chg_state,chg_chkdate, userid)"
         + " values"
         + " (#{chg_no},#{chg_orderno},#{chg_orderdate},#{chg_tel},"
         + " #{chg_account},#{chg_reseon},#{chg_detail},#{chg_state},now(), #{userid})"
         )
   void insert(Chg chg);

   @Select(" select ifnull(max(chg_no),0) from chg")
   int maxnum();

   @Select({"<script>"
         , " select * from chg where chg_state=0"
         , "<if test='chg_no!=null'>"
         , " and chg_no = #{chg_no}"
         , "</if>"
         + "<if test='chg_no==null'>"
         , " order by chg_no desc, chg_no limit #{startrow}, #{limit}"
         + "</if>"
         , "</script>"})
   List<Chg> select(Map<String, Object> param);

   @Select(" select count(*) from chg where chg_state=0")
   int count(); 

   @Update("update chg set chg_state=#{yn} where chg_no = #{chg_no} ")
   void update(Map<String, Object> param);
   
   

}