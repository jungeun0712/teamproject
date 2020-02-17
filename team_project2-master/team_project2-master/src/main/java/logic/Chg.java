package logic;

import java.util.Date;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

public class Chg {
	private int chg_no;
	@NotEmpty(message = "주문번호를 입력하세요")
	private String chg_orderno;

	@Past(message = "주문날짜는 과거 날짜만 가능합니다.")
	@NotNull(message = "주문날짜를 입력하세요")
	@DateTimeFormat(pattern = "yyyy-MM-dd", iso = ISO.DATE)
	private Date chg_orderdate;

	@NotEmpty(message = "전화번호를 입력하세요")
	private String chg_tel;
	/*
	 * @NotEmpty(message = "상품명을 입력하세요") private String chg_itemname;
	 */
	private String chg_reseon;
	private String chg_account;

	public String getChg_account() {
		return chg_account;
	}

	public void setChg_account(String chg_account) {
		this.chg_account = chg_account;
	}

	@NotEmpty(message = "상세이유를 입력하세요")
	private String chg_detail;
	private int chg_state;

	private Date chg_chkdate;

	private String userid;

	public int getChg_no() {
		return chg_no;
	}

	public void setChg_no(int chg_no) {
		this.chg_no = chg_no;
	}

	public String getChg_orderno() {
		return chg_orderno;
	}

	public void setChg_orderno(String chg_orderno) {
		this.chg_orderno = chg_orderno;
	}

	public Date getChg_orderdate() {
		return chg_orderdate;
	}

	public void setChg_orderdate(Date chg_orderdate) {
		this.chg_orderdate = chg_orderdate;
	}

	public String getChg_tel() {
		return chg_tel;
	}

	public void setChg_tel(String chg_tel) {
		this.chg_tel = chg_tel;
	}

	/*
	 * public String getChg_itemname() { return chg_itemname; } public void
	 * setChg_itemname(String chg_itemname) { this.chg_itemname = chg_itemname; }
	 */
	public String getChg_reseon() {
		return chg_reseon;
	}

	public void setChg_reseon(String chg_reseon) {
		this.chg_reseon = chg_reseon;
	}

	public String getChg_detail() {
		return chg_detail;
	}

	public void setChg_detail(String chg_detail) {
		this.chg_detail = chg_detail;
	}

	public int getChg_state() {
		return chg_state;
	}

	public void setChg_state(int chg_state) {
		this.chg_state = chg_state;
	}

	public Date getChg_chkdate() {
		return chg_chkdate;
	}

	public void setChg_chkdate(Date chg_chkdate) {
		this.chg_chkdate = chg_chkdate;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	@Override
	public String toString() {
		return "Chg [chg_no=" + chg_no + ", chg_orderno=" + chg_orderno + ", chg_orderdate=" + chg_orderdate
				+ ", chg_tel=" + chg_tel + ", chg_reseon=" + chg_reseon + ", chg_account=" + chg_account
				+ ", chg_detail=" + chg_detail + ", chg_state=" + chg_state + ", chg_chkdate=" + chg_chkdate
				+ ", userid=" + userid + "]";
	}

}