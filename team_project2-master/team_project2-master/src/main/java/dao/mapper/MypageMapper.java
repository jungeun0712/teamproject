package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import logic.Cart;
import logic.Contact;
import logic.ItemSet;

public interface MypageMapper {

	@Select("select *from cart where userid = #{userid}")
	List<ItemSet> cartview(Map<String, Object> param);

	@Insert("insert into qnaboard (qnano, userid, filter, q_subject, boardcode, "
			+ "boarddate, q_content, qnafile1, checkin)"
			+ " values (#{qnano}, #{userid}, #{filter}, #{q_subject}, "
			+ "#{boardcode}, now(), #{q_content}, #{qnafileurl}, #{checkin})")
	void contactinsert(Contact contact);

	@Select("select *from qnaboard where userid=#{userid} and boardcode=3")
	List<Contact> conlist(Map<String, Object> param);
}
