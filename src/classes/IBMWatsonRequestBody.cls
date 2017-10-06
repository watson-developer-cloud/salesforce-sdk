public class IBMWatsonRequestBody {

  public IBMWatsonMediaType contentType {get;set;}
  public Long ContentSize {get;set;}
  public String content {get;set;} 

  private static final String UTF_8 = 'UTF-8';

  public IBMWatsonRequestBody(){}

  public static IBMWatsonRequestBody create(IBMWatsonMediaType contentType, String content){
    IBMWatsonRequestBody reqBody = new IBMWatsonRequestBody();
    String charset = UTF_8;
    if( contentType != null ){
      charset = contentType.charset;
      if ( String.isBlank(charset) ) {
        charset = UTF_8;
        contentType = IBMWatsonMediaType.parse(contentType + '; charset=utf-8');
      }
    }
    reqBody.ContentSize = ( !String.isBlank(content) )?content.length():0;
    reqBody.contentType = contentType;
    reqBody.content = content;
    return reqBody;
  }
    
}