package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.StoreInfoMapper;
import logic.StoreInfo;

@Repository
public class StoreInfoDao {
   @Autowired
   private SqlSessionTemplate sqlSession;
   private Map<String, Object> param = new HashMap<String, Object>();
   
   public int maxnum() {
      return sqlSession.getMapper(StoreInfoMapper.class).maxnum();
   }

   public void insert(StoreInfo storeInfo) {
      sqlSession.getMapper(StoreInfoMapper.class).insert(storeInfo);
   }

   public StoreInfo selectOne(Integer storeno) {
      param.clear();
      param.put("storeno", storeno);
      return sqlSession.getMapper(StoreInfoMapper.class).select(param).get(0);
   }

   public int count() {
      return sqlSession.getMapper(StoreInfoMapper.class).count();
   }

   public List<StoreInfo> list() {
      param.clear();
      return sqlSession.getMapper(StoreInfoMapper.class).select(param);
   }

   public void update(StoreInfo storeInfo) {
      sqlSession.getMapper(StoreInfoMapper.class).update(storeInfo);
   }

   public void delete(StoreInfo storeInfo) {
      sqlSession.getMapper(StoreInfoMapper.class).delete(storeInfo);
      
   }

}