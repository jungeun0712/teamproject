package logic;

public class Orderitem {
	private int itemnum;
	private String orderno;
	private int quantity;
	private int price;
	private String userid;
	
	public int getItemnum() {
		return itemnum;
	}
	public void setItemnum(int itemnum) {
		this.itemnum = itemnum;
	}
	public String getOrderno() {
		return orderno;
	}
	public void setOrderno(String orderno) {
		this.orderno = orderno;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	@Override
	public String toString() {
		return "Orderitem [itemnum=" + itemnum + ", orderno=" + orderno + ", quantity=" + quantity + ", price=" + price
				+ ", userid=" + userid + "]";
	}
	
	
	
}
