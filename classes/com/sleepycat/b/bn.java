package com.sleepycat.b;

import java.io.PrintStream;

public final class bn
  implements Cloneable
{
  public static final bn a = new bn();
  public boolean b = false;
  public boolean c = false;
  private PrintStream d = null;
  private int e = 0;
  
  private bn a()
  {
    try
    {
      bn localbn = (bn)super.clone();
      return localbn;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException) {}
    return null;
  }
  
  public final String toString()
  {
    return "fast=" + this.b + "\nclear=" + this.c + "\nshowProgressStream=" + this.d + "\nshowProgressInterval=" + this.e + "\n";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\bn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */