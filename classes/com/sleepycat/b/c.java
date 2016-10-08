package com.sleepycat.b;

public final class c
  implements Cloneable
{
  public static final c a = new c();
  public boolean b = false;
  public int c = 0;
  public int d = 0;
  public boolean e = false;
  
  private c a()
  {
    try
    {
      c localc = (c)super.clone();
      return localc;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException) {}
    return null;
  }
  
  public final String toString()
  {
    return "minutes=" + this.d + "\nkBytes=" + this.c + "\nforce=" + this.b + "\nminimizeRecoveryTime=" + this.e + "\n";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */