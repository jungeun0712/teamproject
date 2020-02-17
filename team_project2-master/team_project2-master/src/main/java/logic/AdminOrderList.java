package logic;

import java.util.Date;

public class AdminOrderList {
     private String orderno;
      private String userid;
      private Date datepay;
      private String payname;
      private String address;
      private String restaddress;
      private String phonenum;
      private String username;
      private Date orderdate;
      private int orderstate;
      private int userpoint;
      private int selectpay;
      
      //itme table
      private String itemname;
      private String itemfile1url;
      
      //orderitem table
      private String price;
      private int quantity;
      
      
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
      public int getUserpoint() {
         return userpoint;
      }
      public void setUserpoint(int userpoint) {
         this.userpoint = userpoint;
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
      return "AdminOrderList [orderno=" + orderno + ", userid=" + userid + ", datepay=" + datepay + ", payname="
            + payname + ", address=" + address + ", restaddress=" + restaddress + ", phonenum=" + phonenum
            + ", username=" + username + ", orderdate=" + orderdate + ", orderstate=" + orderstate + ", userpoint="
            + userpoint + ", selectpay=" + selectpay + ", itemname=" + itemname + ", itemfile1url=" + itemfile1url
            + ", price=" + price + ", quantity=" + quantity + "]";
   }
    
   
      
      
}