package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.ChgMapper;
import dao.mapper.OrderlistMapper;
import logic.Chg;

@Repository
public class ChgDao {
   @Autowired
   private SqlSessionTemplate sqlSession;
   private Map<String, Object> param = new HashMap<String, Object>();
      
   public void insert(Chg chg) {
      sqlSession.getMapper(ChgMapper.class).insert(chg);
   }

   public int maxnum() {
      return sqlSession.getMapper(ChgMapper.class).maxnum();
   }

   public Chg selectOne(Integer chg_no) {
      param.clear();
      param.put("chg_no",chg_no);
      return sqlSession.getMapper(ChgMapper.class).select(param).get(0);
   }

   public int count() {
      return sqlSession.getMapper(ChgMapper.class).count();
   }

   public List<Chg> list(Integer pageNum, int limit) {
      param.clear();
      param.put("startrow", (pageNum-1)*limit);
      param.put("limit", limit);
      return sqlSession.getMapper(ChgMapper.class).select(param);
   }

   public void stateupdate(Integer chg_no, Integer yn) {
      param.clear();
      param.put("chg_no", chg_no);
      param.put("yn", yn);
      sqlSession.getMapper(ChgMapper.class).update(param);
      
   }

   public void orderstateupdate(String chg_orderno, String userid) {
      param.clear();
      param.put("chg_orderno", chg_orderno);
      param.put("userid", userid);
      sqlSession.getMapper(OrderlistMapper.class).update(param);
   }

}