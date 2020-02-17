package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.WishListMapper;
import logic.WishList;

@Repository
public class WishListDao {

   @Autowired
   private SqlSessionTemplate sqlSession;
   private Map<String, Object> param = new HashMap<String, Object>();
   
   public int wishlistcount(String kemail) {
      param.clear();
      param.put("userid",kemail);
      return sqlSession.getMapper(WishListMapper.class).count(param);
   }

   public List<WishList> wishlist(String kemail,Integer pageNum, int limit) {
      param.clear();
      param.put("startrow", (pageNum-1)*limit);
      param.put("limit",limit);
      param.put("userid",kemail);
      return sqlSession.getMapper(WishListMapper.class).select(param);
   }

   public void wishlistDelete(Integer pickno) {
      param.put("pickno",pickno);
      sqlSession.getMapper(WishListMapper.class).delete(param);
   }

}