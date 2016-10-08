package com.sleepycat.b.b;

public class a
  extends b
{
  private static final String f = a.class.getName();
  
  public a(String paramString, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    super(paramString, Boolean.valueOf(paramBoolean1).toString(), paramBoolean2, paramBoolean3);
  }
  
  public final void a(String paramString)
  {
    if ((!paramString.trim().equalsIgnoreCase(Boolean.FALSE.toString())) && (!paramString.trim().equalsIgnoreCase(Boolean.TRUE.toString()))) {
      throw new IllegalArgumentException(f + ": " + paramString + " not valid boolean " + this.a);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\b\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */