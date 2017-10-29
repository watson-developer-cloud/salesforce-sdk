public virtual class IBMWatsonRequestBody {

  public IBMWatsonMediaType contentType {get;set;}
  public Long ContentSize {get;set;}
  public String content {get;set;}
  public Blob blobContent {get;set;}
  public String name {get;set;}

  private static final String UTF_8 = 'UTF-8';

  public IBMWatsonRequestBody(){
  	name = '';
  }
 
  public IBMWatsonMediaType bodyContentType(){
  	return contentType;
  }
  
  public Boolean hasBase64Data(){
  	return blobContent != null;
  }
    
  public static IBMWatsonRequestBody create(){
    IBMWatsonRequestBody reqBody = new IBMWatsonRequestBody();
    reqBody.ContentSize = 0;
    reqBody.content = null;
    reqBody.contentType = null;
    return reqBody;
  }
  
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
  
  public static IBMWatsonRequestBody create(IBMWatsonMediaType contentType, IBMWatsonFile fileContent){
  	IBMWatsonRequestBody reqBody = new IBMWatsonRequestBody();
    reqBody.ContentSize = (fileContent != null) ? fileContent.BodyLength() : 0;
    reqBody.contentType = IBMWatsonMediaType.parse(fileContent.contentType());
    reqBody.blobContent = fileContent.body();
    reqBody.name = fileContent.Name();
    return reqBody;
  }
    
}