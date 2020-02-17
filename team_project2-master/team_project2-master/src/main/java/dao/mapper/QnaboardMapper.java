package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import logic.Qnaboard;

public interface QnaboardMapper {
	@Update("update qnaboard set "
			+ " a_content = #{a_content}, checkin=2 where "
			+ "userid = #{userid}")
	void qnainsert(Qnaboard qnaboard);

	@Select("select *from qnaboard where qnano = #{qnano} and boardcode = 3")
	Qnaboard getboard(Map<String, Object> param);
}