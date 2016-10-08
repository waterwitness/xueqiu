package com.sleepycat.b;

public final class g
  implements Cloneable
{
  public static final g a = new g();
  public static final g b = new g();
  public static final g c = new g();
  boolean d = false;
  public boolean e = false;
  
  static
  {
    b.d = true;
    c.e = true;
  }
  
  private g a()
  {
    try
    {
      g localg = (g)super.clone();
      return localg;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException) {}
    return null;
  }
  
  public final String toString()
  {
    return "readUncommitted=" + this.d + "\nreadCommitted=" + this.e + "\n";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */