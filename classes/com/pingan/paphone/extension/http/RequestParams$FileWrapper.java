package com.pingan.paphone.extension.http;

import java.io.InputStream;

class RequestParams$FileWrapper
{
  public String contentType;
  public String fileName;
  public InputStream inputStream;
  
  public RequestParams$FileWrapper(InputStream paramInputStream, String paramString1, String paramString2)
  {
    this.inputStream = paramInputStream;
    this.fileName = paramString1;
    this.contentType = paramString2;
  }
  
  public String getFileName()
  {
    if (this.fileName != null) {
      return this.fileName;
    }
    return "nofilename";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\pingan\paphone\extension\http\RequestParams$FileWrapper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */