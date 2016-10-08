package com.sleepycat.b;

public final class aw
  implements Cloneable
{
  public long a;
  public long b;
  public boolean c;
  public ba<ax> d;
  public long e = Long.MAX_VALUE;
  public long f = Long.MAX_VALUE;
  
  private aw a()
  {
    try
    {
      aw localaw = (aw)super.clone();
      return localaw;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException) {}
    return null;
  }
  
  public final String toString()
  {
    return "maxBytes=" + this.a + "\nmaxMillisecs=" + this.b + "\nloadLNs=" + this.c + "\nlsnBatchSize=" + this.e + "\ninternalMemoryLimit=" + this.f + "\n";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\aw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */