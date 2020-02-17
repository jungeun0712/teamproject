package logic;

import java.sql.Date;

import javax.validation.constraints.Size;

import org.springframework.web.multipart.MultipartFile;

public class User {
   private int userno;
   @Size(min=3, max=15, message="아이디는 3자 이상 15자 이하로 입력하세요")
   private String userid;
   @Size(min=3, max=100, message="비밀번호는 3자 이상 100자 이하로 입력하세요")
   private String password;
   private String username;
   private String phonenum;
   private MultipartFile profile;
   private String profileUrl;
   private Date joindate;
   private String account; //계좌
   private int gender; //성별
   private int member_code; // 멤버 구분 사용자 1, 관리자 0
   private int access; // 승인여부

   public int getUserno() {
      return userno;
   }
   public void setUserno(int userno) {
      this.userno = userno;
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
   public String getPhonenum() {
      return phonenum;
   }
   public void setPhonenum(String phonenum) {
      this.phonenum = phonenum;
   }
   public String getPassword() {
      return password;
   }
   public void setPassword(String password) {
      this.password = password;
   }
   public int getMember_code() {
      return member_code;
   }
   public void setMember_code(int member_code) {
      this.member_code = member_code;
   }
   public int getAccess() {
      return access;
   }
   public void setAccess(int access) {
      this.access = access;
   }
   public MultipartFile getProfile() {
      return profile;
   }
   public void setProfile(MultipartFile profile) {
      this.profile = profile;
   }
   public String getProfileUrl() {
      return profileUrl;
   }
   public void setProfileUrl(String profileUrl) {
      this.profileUrl = profileUrl;
   }
   public Date getJoindate() {
      return joindate;
   }
   public void setJoindate(Date joindate) {
      this.joindate = joindate;
   }
   public int getGender() {
      return gender;
   }
   public void setGender(int gender) {
      this.gender = gender;
   }
   public String getAccount() {
      return account;
   }
   public void setAccount(String account) {
      this.account = account;
   }
   @Override
   public String toString() {
      return "User [userno=" + userno + ", userid=" + userid + ", password=" + password + ", username=" + username
            + ", phonenum=" + phonenum + ", profile=" + profile + ", joindate=" + joindate + ", account=" + account
            + ", gender=" + gender + ", member_code=" + member_code + ", access=" + access + "]";
   }
}