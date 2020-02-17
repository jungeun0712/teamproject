package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import logic.Point;

public interface PointMapper {

   @Select(" select count(*) from point where userid=#{kemail}")
   int count(Map<String, Object> param);

   @Select(" select * from point where userid=#{kemail}"
   		+ "order by pointnum desc , pointnum limit #{startrow},#{limit}")
   List<Point> select(Map<String, Object> param);

   @Select(" select sum(point) from point where userid=#{kemail}")
   int totalpoint(Map<String, Object> param);
   
   @Insert(" insert into point"
   		+ "(userid,pointnum,point,pointdate,pointtext)"
   		+ " values "
   		+ "(#{userid},#{pointnum},#{point},now(),#{pointtext})")
	void addPoint(Map<String, Object> param);

   @Select(" select ifnull(max(pointnum),0)"
   		+ " from point"
   		+ " where userid=#{userid}")
   int max(Map<String, Object> param);
   
   @Insert(" insert into point"
	   		+ "(userid,pointnum,point,pointdate,pointtext)"
	   		+ " values "
	   		+ "(#{userid},#{pointnum},#{point},now(),#{pointtext})")
   void subPoint(Map<String, Object> param);

}