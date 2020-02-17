package logic;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;

public class Orderlist {
	private String orderno;
	@NotEmpty(message = "이메일은 필수 정보 입니다")
	private String userid;
	private Date datepay;
	private String payname;
	@NotEmpty(message = "주소는 필수 정보 입니다")
	private String address;
	@NotEmpty(message = "나머지 주소는 필수 정보 입니다")
	private String restaddress;
	@NotEmpty(message = "전화번호는 필수 정보 입니다")
	private String phonenum;
	@NotEmpty(message = "주문자명은 필수 정보 입니다")
	private String username;

	private Date orderdate;
	private int orderstate;
	private int usepoint;
	private int selectpay;
	private String status;

	private String itemname;
	private String itemfile1url;

	private int price;
	private int quantity;
	
	
	
	/*////////////*/
	List<ItemSet> orderlist = new ArrayList<ItemSet>();

	public List<ItemSet> getCartlist() {
		return orderlist;
	}

	public void setCartlist(List<ItemSet> orderlist) {
		this.orderlist = orderlist;
	}
	private Orderitem orderitem;
	public Orderitem getOrderitem() {
		return orderitem;
	}

	public void setOrderitem(Orderitem orderitem) {
		this.orderitem = orderitem;
	}
	
	/*////////////*/

	public List<ItemSet> getOrderlist() {
		return orderlist;
	}

	public void setOrderlist(List<ItemSet> orderlist) {
		this.orderlist = orderlist;
	}

	

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public int getUsepoint() {
		return usepoint;
	}

	public void setUsepoint(int usepoint) {
		this.usepoint = usepoint;
	}

	public String getOrderno() {
		return orderno;
	}

	public void setOrderno(String orderno) {
		this.orderno = orderno;
	}

	public Date getDatepay() {
		return datepay;
	}

	public void setDatepay(Date datepay) {
		this.datepay = datepay;
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

	public Date getOrderdate() {
		return orderdate;
	}

	public void setOrderdate(Date orderdate) {
		this.orderdate = orderdate;
	}

	public int getOrderstate() {
		return orderstate;
	}

	public void setOrderstate(int orderstate) {
		this.orderstate = orderstate;
	}

	public int getSelectpay() {
		return selectpay;
	}

	public void setSelectpay(int selectpay) {
		this.selectpay = selectpay;
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

	public String getItemfile1url() {
		return itemfile1url;
	}

	public void setItemfile1url(String itemfile1url) {
		this.itemfile1url = itemfile1url;
	}

	@Override
	public String toString() {
		final int maxLen = 10;
		return "Orderlist [orderno=" + orderno + ", userid=" + userid + ", datepay=" + datepay + ", payname=" + payname
				+ ", address=" + address + ", restaddress=" + restaddress + ", phonenum=" + phonenum + ", username="
				+ username + ", orderdate=" + orderdate + ", orderstate=" + orderstate + ", usepoint=" + usepoint
				+ ", selectpay=" + selectpay + ", status=" + status + ", itemname=" + itemname + ", itemfile1url="
				+ itemfile1url + ", price=" + price + ", quantity=" + quantity + ", orderlist="
				+ (orderlist != null ? orderlist.subList(0, Math.min(orderlist.size(), maxLen)) : null) + ", orderitem="
				+ orderitem + "]";
	}
}