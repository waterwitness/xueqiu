package com.d.a.b.d;

import java.util.Locale;

public enum c
{
  private String h;
  private String i;
  
  private c(String paramString)
  {
    this.h = paramString;
    this.i = (paramString + "://");
  }
  
  public static c a(String paramString)
  {
    if (paramString != null)
    {
      c[] arrayOfc = values();
      int m = arrayOfc.length;
      int k = 0;
      while (k < m)
      {
        c localc = arrayOfc[k];
        if (localc.d(paramString)) {
          return localc;
        }
        k += 1;
      }
    }
    return g;
  }
  
  private boolean d(String paramString)
  {
    return paramString.toLowerCase(Locale.US).startsWith(this.i);
  }
  
  public final String b(String paramString)
  {
    return this.i + paramString;
  }
  
  public final String c(String paramString)
  {
    if (!d(paramString)) {
      throw new IllegalArgumentException(String.format("URI [%1$s] doesn't have expected scheme [%2$s]", new Object[] { paramString, this.h }));
    }
    return paramString.substring(this.i.length());
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\d\a\b\d\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */