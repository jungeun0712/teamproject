package logic;

public class Pick {
	private int itemnum;
	private String userid;
	private int pickno;
	
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
	
	public int getPickno() {
		return pickno;
	}
	public void setPickno(int pickno) {
		this.pickno = pickno;
	}
	@Override
	public String toString() {
		return "Pick [itemnum=" + itemnum + ", userid=" + userid + ", pickno=" + pickno + "]";
	}
	
	
	
}
