package com.loopj.android.http;

import java.io.InputStream;

public class RequestParams$StreamWrapper
{
  public final boolean autoClose;
  public final String contentType;
  public final InputStream inputStream;
  public final String name;
  
  public RequestParams$StreamWrapper(InputStream paramInputStream, String paramString1, String paramString2, boolean paramBoolean)
  {
    this.inputStream = paramInputStream;
    this.name = paramString1;
    this.contentType = paramString2;
    this.autoClose = paramBoolean;
  }
  
  static StreamWrapper newInstance(InputStream paramInputStream, String paramString1, String paramString2, boolean paramBoolean)
  {
    String str = paramString2;
    if (paramString2 == null) {
      str = "application/octet-stream";
    }
    return new StreamWrapper(paramInputStream, paramString1, str, paramBoolean);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\loopj\android\http\RequestParams$StreamWrapper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */