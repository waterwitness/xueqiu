package com.xueqiu.android.base.b;

import java.io.FilterOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;

public final class k
  implements HttpEntity
{
  private HttpEntity a;
  private l b;
  private int c = 0;
  
  public k(HttpEntity paramHttpEntity)
  {
    this.a = paramHttpEntity;
    this.b = null;
  }
  
  protected final void a(int paramInt)
  {
    if (this.b != null)
    {
      this.c += paramInt;
      getContentLength();
    }
  }
  
  public final void consumeContent()
  {
    this.a.consumeContent();
  }
  
  public final InputStream getContent()
  {
    return this.a.getContent();
  }
  
  public final Header getContentEncoding()
  {
    return this.a.getContentEncoding();
  }
  
  public final long getContentLength()
  {
    return this.a.getContentLength();
  }
  
  public final Header getContentType()
  {
    return this.a.getContentType();
  }
  
  public final boolean isChunked()
  {
    return this.a.isChunked();
  }
  
  public final boolean isRepeatable()
  {
    return this.a.isRepeatable();
  }
  
  public final boolean isStreaming()
  {
    return this.a.isStreaming();
  }
  
  public final void writeTo(OutputStream paramOutputStream)
  {
    this.a.writeTo(new a(paramOutputStream));
  }
  
  final class a
    extends FilterOutputStream
  {
    public a(OutputStream paramOutputStream)
    {
      super();
    }
    
    public final void close()
    {
      this.out.close();
    }
    
    public final void flush()
    {
      this.out.flush();
    }
    
    public final void write(int paramInt)
    {
      this.out.write(paramInt);
      k.this.a(1);
    }
    
    public final void write(byte[] paramArrayOfByte)
    {
      this.out.write(paramArrayOfByte);
      k.this.a(paramArrayOfByte.length);
    }
    
    public final void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    {
      this.out.write(paramArrayOfByte, paramInt1, paramInt2);
      k.this.a(paramInt2);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\b\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */