package com.squareup.okhttp.internal.spdy;

import c.g;

public final class Header
{
  public static final g RESPONSE_STATUS = g.a(":status");
  public static final g TARGET_AUTHORITY = g.a(":authority");
  public static final g TARGET_HOST = g.a(":host");
  public static final g TARGET_METHOD = g.a(":method");
  public static final g TARGET_PATH = g.a(":path");
  public static final g TARGET_SCHEME = g.a(":scheme");
  public static final g VERSION = g.a(":version");
  final int hpackSize;
  public final g name;
  public final g value;
  
  public Header(g paramg1, g paramg2)
  {
    this.name = paramg1;
    this.value = paramg2;
    this.hpackSize = (paramg1.c.length + 32 + paramg2.c.length);
  }
  
  public Header(g paramg, String paramString)
  {
    this(paramg, g.a(paramString));
  }
  
  public Header(String paramString1, String paramString2)
  {
    this(g.a(paramString1), g.a(paramString2));
  }
  
  public final boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof Header))
    {
      paramObject = (Header)paramObject;
      bool1 = bool2;
      if (this.name.equals(((Header)paramObject).name))
      {
        bool1 = bool2;
        if (this.value.equals(((Header)paramObject).value)) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public final int hashCode()
  {
    return (this.name.hashCode() + 527) * 31 + this.value.hashCode();
  }
  
  public final String toString()
  {
    return String.format("%s: %s", new Object[] { this.name.a(), this.value.a() });
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\internal\spdy\Header.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */