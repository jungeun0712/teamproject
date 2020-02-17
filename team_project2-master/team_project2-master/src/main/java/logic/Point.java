package logic;

import java.util.Date;

public class Point {
   private String userid;
   private int pointnum;
   private int point;
   private String pointtext;
   private Date pointdate;
   public String getUserid() {
      return userid;
   }
   public void setUserid(String userid) {
      this.userid = userid;
   }
   public int getPointnum() {
      return pointnum;
   }
   public void setPointnum(int pointnum) {
      this.pointnum = pointnum;
   }
   public int getPoint() {
      return point;
   }
   public void setPoint(int point) {
      this.point = point;
   }
   public String getPointtext() {
      return pointtext;
   }
   public void setPointtext(String pointtext) {
      this.pointtext = pointtext;
   }
   public Date getPointdate() {
      return pointdate;
   }
   public void setPointdate(Date pointdate) {
      this.pointdate = pointdate;
   }
   @Override
   public String toString() {
      return "Point [userid=" + userid + ", pointnum=" + pointnum + ", point=" + point + ", pointtext=" + pointtext
            + ", pointdate=" + pointdate + "]";
   }
   
   
}