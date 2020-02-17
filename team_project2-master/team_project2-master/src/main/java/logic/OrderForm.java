package logic;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hibernate.validator.constraints.NotEmpty;

public class OrderForm {
	private String orderno;
	
	private List<ItemSet> orderitems = new ArrayList<ItemSet>();
	private int itemnum;
	@NotEmpty(message = "사용자의 이메일 아이디를 입력 해주세요.")
	private String userid;
	private Date datepay;
	private String payname;
	@NotEmpty(message = "도로명 주소는 필수 입력입니다.")
	private String address;
	@NotEmpty(message = "나머지 주소도 입력 해주세요.")
	private String restaddress;
	@NotEmpty(message = "전화번호를 입력해 주세요.")
	private String phonenum;
	@NotEmpty(message = "사용자의 이름을 입력 해주세요.")
	private String username;

	private Date orderdate;
	private int orderstate;
	private String usepoint;
	private int selectpay;
	private String status;

	private String itemname;
	private String itemfile1url;

	private int price;
	private int quantity;
	
	private String totprice;
	
	public String getOrderno() {
		return orderno;
	}
	public void setOrderno(String orderno) {
		this.orderno = orderno;
	}
	public List<ItemSet> getOrderitems() {
		return orderitems;
	}
	public void setOrderitems(List<ItemSet> orderitems) {
		this.orderitems = orderitems;
	}
	public int getItemnum() {
		return itemnum;
	}
	public void setItemnum(int itemnum) {
		this.itemnum = itemnum;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPayname() {
		return payname;
	}
	public void setPayname(String payname) {
		this.payname = payname;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getRestaddress() {
		return restaddress;
	}
	public void setRestaddress(String restaddress) {
		this.restaddress = restaddress;
	}
	public String getPhonenum() {
		return phonenum;
	}
	public void setPhonenum(String phonenum) {
		this.phonenum = phonenum;
	}
	public int getOrderstate() {
		return orderstate;
	}
	public void setOrderstate(int orderstate) {
		this.orderstate = orderstate;
	}
	public String getUsepoint() {
		return usepoint;
	}
	public void setUsepoint(String usepoint) {
		this.usepoint = usepoint;
	}
	public int getSelectpay() {
		return selectpay;
	}
	public void setSelectpay(int selectpay) {
		this.selectpay = selectpay;
	}
	public Date getDatepay() {
		return datepay;
	}
	public void setDatepay(Date datepay) {
		this.datepay = datepay;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public Date getOrderdate() {
		return orderdate;
	}
	public void setOrderdate(Date orderdate) {
		this.orderdate = orderdate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getItemname() {
		return itemname;
	}
	public void setItemname(String itemname) {
		this.itemname = itemname;
	}
	public String getItemfile1url() {
		return itemfile1url;
	}
	public void setItemfile1url(String itemfile1url) {
		this.itemfile1url = itemfile1url;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getTotprice() {
		return totprice;
	}
	public void setTotprice(String totprice) {
		this.totprice = totprice;
	}



}