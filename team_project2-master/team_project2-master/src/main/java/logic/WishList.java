package logic;

public class WishList {
   private int itemnum;
   private String userid;
   private int pickno;
   // item table
   private String itemfile1url;
   private String itemname;
   private String price;
   
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
   public String getItemfile1url() {
      return itemfile1url;
   }
   public void setItemfile1url(String itemfile1url) {
      this.itemfile1url = itemfile1url;
   }
   public String getItemname() {
      return itemname;
   }
   public void setItemname(String itemname) {
      this.itemname = itemname;
   }
   public String getPrice() {
      return price;
   }
   public void setPrice(String price) {
      this.price = price;
   }
   
   public int getPickno() {
      return pickno;
   }
   public void setPickno(int pickno) {
      this.pickno = pickno;
   }
   @Override
   public String toString() {
      return "WishList [itemnum=" + itemnum + ", userid=" + userid + ", pickno=" + pickno + ", itemfile1url="
            + itemfile1url + ", itemname=" + itemname + ", price=" + price + "]";
   }
   
   
   
}