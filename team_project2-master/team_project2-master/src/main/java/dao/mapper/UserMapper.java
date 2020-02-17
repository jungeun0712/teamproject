package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import logic.User;

public interface UserMapper {

	@Select({ "<script>" + "select *from member" 
	+ "<if test='userid != null'> where userid=#{userid}</if>"
			+ "</script>" })
	List<User> select(Map<String, Object> param);

	@Insert("insert into member (userid, username, gender, member_code) values (#{userid}, #{username}, #{gender}, #{member_code})")
	void memberInsert(User user);

	@Insert("insert into member(userno, userid, username, password, phonenum, profileUrl, gender, joindate)"
			+ " values(#{userno}, #{userid}, #{username}, #{password}, #{phonenum}, #{profileUrl}, #{gender}, now())")
	void memberInsert2(User user);

	@Insert("insert into point(userid, pointnum, point, pointdate, pointtext) values "
			+ "(#{userid}, #{pointnum}, #{point}, now(), #{pointtext})")
	void pointinsert(Map<String, Object> param);

	@Select("select  ifnull(max(pointnum),0) from point")
	int maxpointnum();

	/* /////////////phy ///////////// */
	@Select({ "<script>" + 
			"select * from member" +
			"<if test = 'access == 1'>" +
			" where access = 0" + "</if>"
			+ "<if test = 'access == 2'>" + 
			" where access = 1" + "</if>" + "<if test='userid != null'>"
			+ " where userid=#{userid}" + "</if>" + "</script>" })
	List<User> SelectOne2(Map<String, Object> param);

	// ������ ȸ������
	@Insert("insert into member(userno, userid, username, password, phonenum, profileUrl, gender, joindate, member_code, access)"
			+ " values(#{userno}, #{userid}, #{username}, #{password}, #{phonenum}, #{profileUrl}, #{gender}, now(), 2 ,#{access})")
	void adminInsert(User user);

	// ������ ���� ��� �� ǥ��
	@Select("select ifnull(max(userno),0) from member")
	int numcntadd();

	// ������ ���� �ο�
	@Update("update member set access=1 where userid=#{userid}")
	void codeUpdate(Map<String, Object> param);

	@Delete("delete from member where userid=#{userid}")
	void delete(Map<String, Object> param);

	@Update("update member set username=#{username}, password=#{password}, profileUrl=#{profileUrl} where userid=#{userid}")
	void update(Map<String, Object> param);

}
