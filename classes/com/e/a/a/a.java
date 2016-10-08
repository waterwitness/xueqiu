package com.e.a.a;

import com.e.a.a.a.c;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.List;
import org.apache.http.util.ByteArrayBuffer;

abstract class a
{
  static final ByteArrayBuffer a = a(h.a, ": ");
  static final ByteArrayBuffer b = a(h.a, "\r\n");
  private static final ByteArrayBuffer d = a(h.a, "--");
  protected final Charset c;
  private final String e;
  private final String f;
  
  public a(String paramString1, Charset paramCharset, String paramString2)
  {
    com.e.b.a.a(paramString1, "Multipart subtype");
    com.e.b.a.a(paramString2, "Multipart boundary");
    this.e = paramString1;
    if (paramCharset != null) {}
    for (;;)
    {
      this.c = paramCharset;
      this.f = paramString2;
      return;
      paramCharset = h.a;
    }
  }
  
  private static ByteArrayBuffer a(Charset paramCharset, String paramString)
  {
    paramCharset = paramCharset.encode(CharBuffer.wrap(paramString));
    paramString = new ByteArrayBuffer(paramCharset.remaining());
    paramString.append(paramCharset.array(), paramCharset.position(), paramCharset.remaining());
    return paramString;
  }
  
  protected static void a(i parami, Charset paramCharset, OutputStream paramOutputStream)
  {
    a(parami.a, paramCharset, paramOutputStream);
    a(a, paramOutputStream);
    a(parami.b, paramCharset, paramOutputStream);
    a(b, paramOutputStream);
  }
  
  private void a(OutputStream paramOutputStream, boolean paramBoolean)
  {
    ByteArrayBuffer localByteArrayBuffer = a(this.c, this.f);
    Iterator localIterator = a().iterator();
    while (localIterator.hasNext())
    {
      b localb = (b)localIterator.next();
      a(d, paramOutputStream);
      a(localByteArrayBuffer, paramOutputStream);
      a(b, paramOutputStream);
      a(localb, paramOutputStream);
      a(b, paramOutputStream);
      if (paramBoolean) {
        localb.b.a(paramOutputStream);
      }
      a(b, paramOutputStream);
    }
    a(d, paramOutputStream);
    a(localByteArrayBuffer, paramOutputStream);
    a(d, paramOutputStream);
    a(b, paramOutputStream);
  }
  
  static void a(String paramString, OutputStream paramOutputStream)
  {
    a(a(h.a, paramString), paramOutputStream);
  }
  
  private static void a(String paramString, Charset paramCharset, OutputStream paramOutputStream)
  {
    a(a(paramCharset, paramString), paramOutputStream);
  }
  
  static void a(ByteArrayBuffer paramByteArrayBuffer, OutputStream paramOutputStream)
  {
    paramOutputStream.write(paramByteArrayBuffer.buffer(), 0, paramByteArrayBuffer.length());
  }
  
  public abstract List<b> a();
  
  protected abstract void a(b paramb, OutputStream paramOutputStream);
  
  public final void a(OutputStream paramOutputStream)
  {
    a(paramOutputStream, true);
  }
  
  public final long b()
  {
    Object localObject = a().iterator();
    long l1 = 0L;
    while (((Iterator)localObject).hasNext())
    {
      long l2 = ((b)((Iterator)localObject).next()).b.e();
      if (l2 >= 0L) {
        l1 = l2 + l1;
      } else {
        return -1L;
      }
    }
    localObject = new ByteArrayOutputStream();
    try
    {
      a((OutputStream)localObject, false);
      int i = ((ByteArrayOutputStream)localObject).toByteArray().length;
      return i + l1;
    }
    catch (IOException localIOException) {}
    return -1L;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\e\a\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */