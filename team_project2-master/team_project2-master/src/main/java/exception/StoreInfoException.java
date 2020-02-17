package exception;

public class StoreInfoException extends RuntimeException {
   private String url;
   public StoreInfoException(String msg, String url) {
      super(msg);
      this.url = url;
   }
   public String getUrl() {
      return url;
   }
}