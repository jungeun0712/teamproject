package dao;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.AddrMapper;
import logic.Addr;

@Repository
public class AddrDao {
   @Autowired //spring-db에 있는 sqlSessionTemplate을 주입.
   private SqlSessionTemplate sqlSession;
   private Map<String,Object> param = new HashMap<String, Object>();
      
   public Addr AddressSelect(String kemail) {
      param.clear();
      param.put("userid", kemail);
      return sqlSession.getMapper(AddrMapper.class).select(param);
   }
   public void AddressUpdate(String kemail,String address, String restaddress) {
      param.clear();
      param.put("address", address);
      param.put("restaddress", restaddress);
      param.put("userid", kemail);
      sqlSession.getMapper(AddrMapper.class).update(param);
   }

}