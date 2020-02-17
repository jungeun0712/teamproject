package dao.mapper;

import java.util.Map;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import logic.Addr;

public interface AddrMapper {

   @Select(" select * from addr where userid=#{userid}")
   Addr select(Map<String, Object> param);

   @Update(" update addr set address=#{address}, restaddress=#{restaddress}"
         + " where userid=#{userid}")
   void update(Map<String, Object> param);

}