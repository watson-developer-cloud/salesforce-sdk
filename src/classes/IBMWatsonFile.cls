public class IBMWatsonFile {
    
  private String Name;
  private String Description;
  private String ContentType;
  private Long BodyLength;
  private Blob Body;
    
  /**
   * Builder.
   */
  public class FileBuilder {
  	
    private String Name;
    private String Description;
    private String ContentType;
    private Long BodyLength;
    private Blob Body;
    
    /**
     * Instantiates a new builder.
     */
    public FileBuilder() {
    }
    
    /**
     * Set the file name.
     *
     * @param fileName the file name
     * @return the FileBuilder builder
     */
    public FileBuilder name(String fileName){
    	this.name = fileName;
    	return this;
    }
    
    /**
     * Set the file description if any.
     *
     * @param Description the file description
     * @return the FileBuilder builder
     */
    public FileBuilder Description(String Description){
    	this.Description = Description;
    	return this;
    }
    
    /**
     * Set the file content type.
     *
     * @param ContentType the file content type
     * @return the FileBuilder builder
     */
    public FileBuilder ContentType(String ContentType){
    	this.ContentType = ContentType;
    	return this;
    }
    
    /**
     * Set the file body as a blob type (base64).
     *
     * @param Body the file base64 content
     * @return the FileBuilder builder
     */
    public FileBuilder Body(Blob Body){
    	this.Body = Body;
    	this.BodyLength = Body.size();
    	return this;
    }
    
    /**
     * Builds a IBMWatsonFile.
     *
     * @return the IBMWatsonFile
     */
    public IBMWatsonFile build() {
      return new IBMWatsonFile(this);
    }    
  }

  private IBMWatsonFile(FileBuilder builder) {
    this.Name = builder.name;
    this.Description = builder.Description;
    this.ContentType = builder.ContentType;
    this.BodyLength = builder.BodyLength;
    this.Body = builder.Body;
  }  
  

  public String Name(){
    return this.Name;
  }
  
  public String Description(){
    return this.Description;
  }
  
  public String ContentType(){
    return this.ContentType;
  }
  
  public Long BodyLength(){
    return this.BodyLength;
  }
  
  public Blob Body(){
    return this.Body;
  }
  
  public String BodyAsString(){
  	if( this.Body != null ){
  	  return this.Body.toString();
  	}
  	return null;
  }
    
}