package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import logic.Help;

public interface HelpMapper {

	String boardcol = "select qnano, "
			+ "userid, filter, q_subject, boardcode, boarddate, q_content, qnafile1 as qnafileurl,"
			+ "a_content, checkin from qnaboard";
	@Select("<script>"+boardcol
			+ "<if test='boardcode!=null'>where boardcode=#{boardcode}</if>"
			+ "<if test='filter != 0'> and filter=${filter}</if>"
			+ " order by qnano desc "
			+ "<if test='startrow!=0'>limit #{startrow}, #{limit}</if>"
			+ "</script>")
	List<Help> selectboard(Map<String, Object> param);

	@Select("<script>"
			+ "select count(*) from qnaboard"
			+ " where boardcode = #{boardcode}"
			+"<if test='filter != 0'> and filter=${filter}</if>"
			+ "</script>")
	int count(Map<String, Object> param);


	
	@Select(boardcol+" where qnano = #{qnano}")
	Help selectOne(Map<String, Object> param);

	
	@Update("<script>"
			+"update qnaboard set "
			+ "userid=#{userid}, filter=#{filter}, q_subject=#{q_subject},"
			+ " q_content=#{q_content}, qnafile1 = #{qnafileurl}, "
			+ "checkin= #{checkin} where qnano = #{qnano}"
			+ "</script>")
	void boardupdate(Help help);

	@Select("select ifnull(max(qnano), 0) from qnaboard")
	int maxnum();

	@Insert("insert into qnaboard (qnano, userid, filter, q_subject, " + 
			"q_content, qnafile1, boarddate, boardcode)" +
			" values (#{qnano}, #{userid}, #{filter}, #{q_subject}, #{q_content}, "
			+ "#{qnafileurl}, now(), #{boardcode})")
	void insert(Help help);
	
	@Delete("delete from qnaboard where qnano = #{qnano}")
	void boardDelete(Map<String, Object> param);

}
