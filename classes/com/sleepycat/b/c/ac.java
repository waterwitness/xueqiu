package com.sleepycat.b.c;

public enum ac
{
  public final boolean E;
  private final String F;
  
  private ac(boolean paramBoolean, String paramString)
  {
    this.E = paramBoolean;
    this.F = paramString;
  }
  
  public final String toString()
  {
    return super.toString() + ": " + this.F;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\c\ac.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */