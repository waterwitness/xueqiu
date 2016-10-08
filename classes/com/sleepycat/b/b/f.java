package com.sleepycat.b.b;

public class f
  extends b
{
  private static final String f = f.class.getName();
  private Long g;
  private Long h;
  
  public f(String paramString, Long paramLong1, Long paramLong2, Long paramLong3, boolean paramBoolean1, boolean paramBoolean2)
  {
    super(paramString, paramLong3.toString(), paramBoolean1, paramBoolean2);
    this.g = paramLong1;
    this.h = paramLong2;
  }
  
  public final void a(String paramString)
  {
    try
    {
      Long localLong = new Long(paramString);
      if ((this.g != null) && (localLong.compareTo(this.g) < 0)) {
        throw new IllegalArgumentException(f + ": param " + this.a + " doesn't validate, " + localLong + " is less than min of " + this.g);
      }
    }
    catch (NumberFormatException localNumberFormatException)
    {
      throw new IllegalArgumentException(f + ": " + paramString + " not valid value for " + this.a);
    }
    if ((this.h != null) && (localNumberFormatException.compareTo(this.h) > 0)) {
      throw new IllegalArgumentException(f + ": param " + this.a + " doesn't validate, " + localNumberFormatException + " is greater than max  of " + this.h);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\b\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */