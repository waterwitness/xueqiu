package com.e.a.a;

import com.e.a.a.a.c;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.apache.http.Header;
import org.apache.http.HttpEntity;

public final class j
  implements HttpEntity
{
  private static final char[] a = "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
  private final k b;
  private volatile l c;
  
  public j()
  {
    this(e.a);
  }
  
  private j(int paramInt)
  {
    k localk = new k();
    localk.b = paramInt;
    localk.d = null;
    localk.c = null;
    this.b = localk;
    this.c = null;
  }
  
  public j(int paramInt, byte paramByte)
  {
    this(paramInt);
  }
  
  private l a()
  {
    Object localObject1;
    Charset localCharset;
    String str;
    label48:
    Object localObject2;
    label69:
    int i;
    if (this.c == null)
    {
      k localk = this.b;
      if (localk.a == null) {
        break label156;
      }
      localObject1 = localk.a;
      localCharset = localk.d;
      if (localk.c == null) {
        break label162;
      }
      str = localk.c;
      if (localk.e == null) {
        break label169;
      }
      localObject2 = new ArrayList(localk.e);
      if (localk.b == 0) {
        break label176;
      }
      i = localk.b;
      label84:
      switch (k.1.a[(i - 1)])
      {
      default: 
        localObject1 = new g((String)localObject1, localCharset, str, (List)localObject2);
      }
    }
    for (;;)
    {
      this.c = new l((a)localObject1, k.a(str, localCharset), ((a)localObject1).b());
      return this.c;
      label156:
      localObject1 = "form-data";
      break;
      label162:
      str = k.a();
      break label48;
      label169:
      localObject2 = Collections.emptyList();
      break label69;
      label176:
      i = e.a;
      break label84;
      localObject1 = new d((String)localObject1, localCharset, str, (List)localObject2);
      continue;
      localObject1 = new f((String)localObject1, localCharset, str, (List)localObject2);
    }
  }
  
  public final void a(String paramString, c paramc)
  {
    paramString = new b(paramString, paramc);
    paramc = this.b;
    if (paramc.e == null) {
      paramc.e = new ArrayList();
    }
    paramc.e.add(paramString);
    this.c = null;
  }
  
  public final void consumeContent()
  {
    if (isStreaming()) {
      throw new UnsupportedOperationException("Streaming entity does not implement #consumeContent()");
    }
  }
  
  public final InputStream getContent()
  {
    throw new UnsupportedOperationException("Multipart form entity does not implement #getContent()");
  }
  
  public final Header getContentEncoding()
  {
    return a().getContentEncoding();
  }
  
  public final long getContentLength()
  {
    return a().getContentLength();
  }
  
  public final Header getContentType()
  {
    return a().getContentType();
  }
  
  public final boolean isChunked()
  {
    return a().isChunked();
  }
  
  public final boolean isRepeatable()
  {
    return a().isRepeatable();
  }
  
  public final boolean isStreaming()
  {
    return a().isStreaming();
  }
  
  public final void writeTo(OutputStream paramOutputStream)
  {
    a().writeTo(paramOutputStream);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\e\a\a\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */