package com.sleepycat.b.c;

public enum e
{
  public final boolean e;
  public final boolean f;
  private final String g;
  
  private e(boolean paramBoolean1, boolean paramBoolean2, String paramString)
  {
    this.e = paramBoolean1;
    this.f = paramBoolean2;
    this.g = ("SearchMode." + paramString);
  }
  
  public final String toString()
  {
    return this.g;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\c\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */