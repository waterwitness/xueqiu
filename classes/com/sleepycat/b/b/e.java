package com.sleepycat.b.b;

public class e
  extends b
{
  private static final String f = e.class.getName();
  private Integer g;
  private Integer h;
  
  public e(String paramString, Integer paramInteger1, Integer paramInteger2, Integer paramInteger3, boolean paramBoolean1, boolean paramBoolean2)
  {
    super(paramString, paramInteger3.toString(), paramBoolean1, paramBoolean2);
    this.g = paramInteger1;
    this.h = paramInteger2;
  }
  
  public final void a(String paramString)
  {
    try
    {
      Integer localInteger = new Integer(paramString);
      if ((this.g != null) && (localInteger.compareTo(this.g) < 0)) {
        throw new IllegalArgumentException(f + ": param " + this.a + " doesn't validate, " + localInteger + " is less than min of " + this.g);
      }
    }
    catch (NumberFormatException localNumberFormatException)
    {
      throw new IllegalArgumentException(f + ": " + paramString + " not valid value for " + this.a);
    }
    if ((this.h != null) && (localNumberFormatException.compareTo(this.h) > 0)) {
      throw new IllegalArgumentException(f + ": param " + this.a + " doesn't validate, " + localNumberFormatException + " is greater than max of " + this.h);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\b\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */