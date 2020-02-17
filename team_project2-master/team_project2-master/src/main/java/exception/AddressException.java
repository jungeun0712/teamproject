package exception;

public class AddressException extends RuntimeException {
      private String url;
      public AddressException(String msg, String url) {
         super(msg);
         this.url = url;
      }
      public String getUrl() {
         return url;
      }

}