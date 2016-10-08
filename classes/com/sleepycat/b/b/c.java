package com.sleepycat.b.b;

import com.sleepycat.b.p.ac;

public class c
  extends b
{
  private static final String f = c.class.getName();
  private String g;
  private int h;
  private String i;
  private int j;
  
  public c(String paramString1, String paramString2, String paramString3, String paramString4, boolean paramBoolean1, boolean paramBoolean2)
  {
    super(paramString1, paramString4, paramBoolean1, paramBoolean2);
    if (paramString2 != null)
    {
      this.g = paramString2;
      this.h = ac.a(paramString2);
    }
    if (paramString3 != null)
    {
      this.i = paramString3;
      this.j = ac.a(paramString3);
    }
  }
  
  public final void a(String paramString)
  {
    int k;
    try
    {
      k = ac.a(paramString);
      if ((this.g != null) && (k < this.h)) {
        throw new IllegalArgumentException(f + ": param " + this.a + " doesn't validate, " + paramString + " is less than min of " + this.g);
      }
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      throw new IllegalArgumentException(f + ": param " + this.a + " doesn't validate, " + paramString + " fails validation: " + localIllegalArgumentException.getMessage());
    }
    if ((this.i != null) && (k > this.j)) {
      throw new IllegalArgumentException(f + ": param " + this.a + " doesn't validate, " + paramString + " is greater than max of " + this.i);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\b\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */