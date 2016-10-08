package com.sleepycat.b;

public final class br
  implements Cloneable
{
  public static final br a = new br();
  public boolean b = false;
  public boolean c = false;
  public boolean d = false;
  public u e = null;
  public bc f;
  public boolean g = false;
  public boolean h = false;
  public boolean i = false;
  public boolean j = false;
  
  static void a(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, u paramu)
  {
    if (((paramBoolean1) || (paramBoolean2) || (paramBoolean3)) && (paramu != null)) {
      throw new IllegalArgumentException("Mixed use of deprecated and current durability APIs is not supported");
    }
    if (((paramBoolean1) && (paramBoolean2)) || ((paramBoolean1) && (paramBoolean3)) || ((paramBoolean2) && (paramBoolean3))) {
      throw new IllegalArgumentException("Only one of TxnSync, TxnNoSync, and TxnWriteNoSync can be set.");
    }
  }
  
  public final br a()
  {
    try
    {
      br localbr = (br)super.clone();
      return localbr;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException) {}
    return null;
  }
  
  public final br a(u paramu)
  {
    a(this.b, this.c, this.d, paramu);
    this.e = paramu;
    return this;
  }
  
  public final String toString()
  {
    return "sync=" + this.b + "\nnoSync=" + this.c + "\nwriteNoSync=" + this.d + "\ndurability=" + this.e + "\nconsistencyPolicy=" + this.f + "\nnoWait=" + this.g + "\nreadUncommitted=" + this.h + "\nreadCommitted=" + this.i + "\nSerializableIsolation=" + this.j + "\n";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\br.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */