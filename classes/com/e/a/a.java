package com.e.a;

import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Locale;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicHeaderValueFormatter;
import org.apache.http.util.CharArrayBuffer;

public final class a
  implements Serializable
{
  public static final a a = a("application/atom+xml", com.e.a.c);
  public static final a b = a("application/x-www-form-urlencoded", com.e.a.c);
  public static final a c = a("application/json", com.e.a.a);
  public static final a d = a("application/octet-stream", null);
  public static final a e = a("application/svg+xml", com.e.a.c);
  public static final a f = a("application/xhtml+xml", com.e.a.c);
  public static final a g = a("application/xml", com.e.a.c);
  public static final a h = a("multipart/form-data", com.e.a.c);
  public static final a i = a("text/html", com.e.a.c);
  public static final a j = a("text/plain", com.e.a.c);
  public static final a k = a("text/xml", com.e.a.c);
  public static final a l = a("*/*", null);
  public static final a m = j;
  public static final a n = d;
  public final String o;
  public final Charset p;
  private final NameValuePair[] q;
  
  private a(String paramString, Charset paramCharset)
  {
    this.o = paramString;
    this.p = paramCharset;
    this.q = null;
  }
  
  public static a a(String paramString)
  {
    return new a(paramString, null);
  }
  
  private static a a(String paramString, Charset paramCharset)
  {
    int i2 = 0;
    int i1 = 0;
    if (i1 < paramString.length()) {
      if (Character.isWhitespace(paramString.charAt(i1))) {}
    }
    for (i1 = i2;; i1 = 1)
    {
      if (i1 == 0) {
        break label73;
      }
      throw new IllegalArgumentException("MIME type" + " may not be blank");
      i1 += 1;
      break;
    }
    label73:
    paramString = ((String)paramString).toLowerCase(Locale.US);
    if (!b(paramString)) {
      throw new IllegalArgumentException("MIME type may not contain reserved characters");
    }
    return new a(paramString, paramCharset);
  }
  
  private static boolean b(String paramString)
  {
    int i1 = 0;
    while (i1 < paramString.length())
    {
      int i2 = paramString.charAt(i1);
      if ((i2 == 34) || (i2 == 44) || (i2 == 59)) {
        return false;
      }
      i1 += 1;
    }
    return true;
  }
  
  public final String toString()
  {
    CharArrayBuffer localCharArrayBuffer = new CharArrayBuffer(64);
    localCharArrayBuffer.append(this.o);
    if (this.q != null)
    {
      localCharArrayBuffer.append("; ");
      BasicHeaderValueFormatter.DEFAULT.formatParameters(localCharArrayBuffer, this.q, false);
    }
    for (;;)
    {
      return localCharArrayBuffer.toString();
      if (this.p != null)
      {
        localCharArrayBuffer.append("; charset=");
        localCharArrayBuffer.append(this.p.name());
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\e\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */