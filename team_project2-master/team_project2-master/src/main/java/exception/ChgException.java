package exception;

public class ChgException extends RuntimeException{
   private String url;
   public ChgException(String msg, String url) {
      super(msg);
      this.url = url;
   }
   public String getUrl() {
      return url;
   }

}