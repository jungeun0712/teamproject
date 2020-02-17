package exception;

public class QnaBoardException extends RuntimeException {
   private String url;
   public QnaBoardException(String msg, String url) {
      super(msg);
      this.url = url;
   }
   public String getUrl() {
      return url;
   }
}