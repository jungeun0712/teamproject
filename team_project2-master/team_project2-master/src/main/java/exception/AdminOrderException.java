package exception;

public class AdminOrderException extends RuntimeException {
      private String url;
      public AdminOrderException(String msg, String url) {
         super(msg);
         this.url = url;
      }
      public String getUrl() {
         return url;
      }

}