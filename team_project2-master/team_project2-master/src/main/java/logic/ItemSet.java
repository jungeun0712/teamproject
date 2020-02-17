package logic;

public class ItemSet {

	private String userid;
	private int quantity;
	private int price;
	private Item item;
	private int itemnum;
	
	public int getItemnum() {
		return itemnum;
	}
	public void setItemnum(int itemnum) {
		this.itemnum = itemnum;
	}
	public ItemSet() {
		
	}
	public ItemSet(Item item, String userid, int quantity, int price) {
		this.userid = userid;
		this.quantity = quantity;
		this.price = price;
		this.item = item;
	}

	public Item getItem() {
		return item;
	}

	
	public void setItem(Item item) {
		this.item = item;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getUserid() {
		return userid;
	}

	public int getQuantity() {
		return quantity;
	}

	public int getPrice() {
		return price;
	}

	@Override
	public String toString() {
		return "ItemSet [userid=" + userid + ", quantity=" + quantity + ", price=" + price + ", item=" + item
				+ ", itemnum=" + itemnum + "]";
	}
	
	
}
