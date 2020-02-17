package exception;

public class WhousingException extends RuntimeException {
    private String url;
      public WhousingException(String msg, String url) {
         super(msg);
         this.url = url;
      }
      public String getUrl() {
         return url;
      }
}