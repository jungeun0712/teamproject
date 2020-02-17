package logic;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

public class Item {
	private int itemnum;
	@NotEmpty(message = "상품명을 입력하세요")
	private String itemname;
	@Min(value = 10, message = "10원 이상 가능합니다.")
	@Max(value = 100000, message = "10만원 이하만 가능합니다.")
	private int price;
	private MultipartFile itemfile1;
	private MultipartFile itemfile2;
	private MultipartFile itemfile3;
	private String itemfile1url;
	private String itemfile2url;
	private String itemfile3url;
	@NotEmpty(message = "상품설명을 입력하세요")
	private String itemcontent;
	@NotEmpty(message = "상품설명을 입력하세요")
	private String itemcontent2;
	

	private int category;
	private int subcategory;
	private int character_c;
	
	private Date regdate;

	@NotEmpty(message="비밀번호를 입력하세요")
	private String password;
	
	
	
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	/* list 뷰단 선택자 */
	private String selectvalue1; // 상품순서
	private String selectvalue2; // 캐릭터

	public String getSelectvalue1() {
		return selectvalue1;
	}

	public void setSelectvalue1(String selectvalue1) {
		this.selectvalue1 = selectvalue1;
	}

	public String getSelectvalue2() {
		return selectvalue2;
	}

	public void setSelectvalue2(String selectvalue2) {
		this.selectvalue2 = selectvalue2;
	}

	/* //////리뷰 리스트/////// */
	List<Review> reviewlist = new ArrayList<Review>();
	
	public List<Review> getReviewlist() {
		return reviewlist;
	}

	public void setReviewlist(List<Review> reviewlist) {
		this.reviewlist = reviewlist;
	}
	
	
	/*//////*/
	/* //////찜 리스트/////// */
	private int pickno;

	public int getPickno() {
		return pickno;
	}

	public void setPickno(int pickno) {
		this.pickno = pickno;
	}

	private List<Pick> wishlist = new ArrayList<Pick>();
	public List<Pick> getWishlist() {
		return wishlist;
	}
	
	public void setWishlist(List<Pick> wishlist) {
		this.wishlist = wishlist;
	}

	/* //////찜 확인/////// */
	
	private int wishcheck;
	public int getWishcheck() {
		return wishcheck;
	}

	public void setWishcheck(int wishcheck) {
		this.wishcheck = wishcheck;
	}
	/*////////카트 담긴지 유무///////*/
	private int cartcheck;
	
	
	public int getCartcheck() {
		return cartcheck;
	}

	public void setCartcheck(int cartcheck) {
		this.cartcheck = cartcheck;
	}
	/*//////////////*/

	
	public int getItemnum() {
		return itemnum;
	}

	public void setItemnum(int itemnum) {
		this.itemnum = itemnum;
	}

	public String getItemname() {
		return itemname;
	}

	public void setItemname(String itemname) {
		this.itemname = itemname;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public MultipartFile getItemfile1() {
		return itemfile1;
	}

	public void setItemfile1(MultipartFile itemfile1) {
		this.itemfile1 = itemfile1;
	}

	public MultipartFile getItemfile2() {
		return itemfile2;
	}

	public void setItemfile2(MultipartFile itemfile2) {
		this.itemfile2 = itemfile2;
	}

	public MultipartFile getItemfile3() {
		return itemfile3;
	}

	public void setItemfile3(MultipartFile itemfile3) {
		this.itemfile3 = itemfile3;
	}

	public String getItemfile1url() {
		return itemfile1url;
	}

	public void setItemfile1url(String itemfile1url) {
		this.itemfile1url = itemfile1url;
	}

	public String getItemfile2url() {
		return itemfile2url;
	}

	public void setItemfile2url(String itemfile2url) {
		this.itemfile2url = itemfile2url;
	}

	public String getItemfile3url() {
		return itemfile3url;
	}

	public void setItemfile3url(String itemfile3url) {
		this.itemfile3url = itemfile3url;
	}

	public String getItemcontent() {
		return itemcontent;
	}

	public void setItemcontent(String itemcontent) {
		this.itemcontent = itemcontent;
	}

	public String getItemcontent2() {
		return itemcontent2;
	}

	public void setItemcontent2(String itemcontent2) {
		this.itemcontent2 = itemcontent2;
	}

	public int getCategory() {
		return category;
	}

	public void setCategory(int category) {
		this.category = category;
	}

	public int getSubcategory() {
		return subcategory;
	}

	public void setSubcategory(int subcategory) {
		this.subcategory = subcategory;
	}

	public int getCharacter_c() {
		return character_c;
	}

	public void setCharacter_c(int character_c) {
		this.character_c = character_c;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	@Override
	public String toString() {
		final int maxLen = 10;
		return "Item [itemnum=" + itemnum + ", itemname=" + itemname + ", price=" + price + ", itemfile1=" + itemfile1
				+ ", itemfile2=" + itemfile2 + ", itemfile3=" + itemfile3 + ", itemfile1url=" + itemfile1url
				+ ", itemfile2url=" + itemfile2url + ", itemfile3url=" + itemfile3url + ", itemcontent=" + itemcontent
				+ ", itemcontent2=" + itemcontent2 + ", category=" + category + ", subcategory=" + subcategory
				+ ", character_c=" + character_c + ", regdate=" + regdate + ", password=" + password + ", selectvalue1="
				+ selectvalue1 + ", selectvalue2=" + selectvalue2 + ", reviewlist="
				+ (reviewlist != null ? reviewlist.subList(0, Math.min(reviewlist.size(), maxLen)) : null) + ", pickno="
				+ pickno + ", wishlist="
				+ (wishlist != null ? wishlist.subList(0, Math.min(wishlist.size(), maxLen)) : null) + ", wishcheck="
				+ wishcheck + ", cartcheck=" + cartcheck + "]";
	}

}
