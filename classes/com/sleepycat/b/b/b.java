package com.sleepycat.b.b;

import com.sleepycat.b.aa;

public class b
{
  public String a;
  public String b;
  public boolean c;
  public boolean d;
  public boolean e;
  
  public b(String paramString1, String paramString2, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramString1 == null) {
      this.a = null;
    }
    for (;;)
    {
      this.b = paramString2;
      this.c = paramBoolean1;
      this.d = paramBoolean2;
      paramString1 = this.a;
      if ((paramString1 != null) && (paramString1.length() > 0)) {
        break;
      }
      throw aa.c("A configuration parameter name can't be null or 0 length");
      int i = paramString1.indexOf(".#");
      if (i < 0)
      {
        this.a = paramString1;
        this.e = false;
      }
      else
      {
        this.a = paramString1.substring(0, i);
        this.e = true;
      }
    }
    a(paramString2);
    d.a(this);
  }
  
  public static String b(String paramString)
  {
    int i = paramString.lastIndexOf('.');
    if (i < 0) {
      return null;
    }
    return paramString.substring(0, i);
  }
  
  public void a(String paramString) {}
  
  public String toString()
  {
    return this.a;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\b\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */