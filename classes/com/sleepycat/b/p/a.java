package com.sleepycat.b.p;

import com.sleepycat.b.aa;
import com.sleepycat.b.bt;
import java.text.DecimalFormat;

public final class a
  extends af<bt[]>
{
  public bt[] a;
  
  public a(ai paramai, ag paramag)
  {
    super(paramai, paramag);
  }
  
  private a f()
  {
    try
    {
      a locala = (a)super.clone();
      if ((this.a != null) && (this.a.length > 0))
      {
        bt[] arrayOfbt = new bt[this.a.length];
        System.arraycopy(this.a, 0, arrayOfbt, 0, this.a.length);
        locala.a = arrayOfbt;
      }
      return locala;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw aa.a(localCloneNotSupportedException);
    }
  }
  
  public final void a()
  {
    if ((this.a != null) && (this.a.length > 0))
    {
      int i = 0;
      while (i < this.a.length)
      {
        this.a[i] = new bt(this.a[i].b, 0L);
        i += 1;
      }
    }
  }
  
  public final void a(af<bt[]> paramaf)
  {
    throw aa.c("ActiveTxnArrayStat doesn't support the add operation.");
  }
  
  public final af<bt[]> b(af<bt[]> paramaf)
  {
    return f();
  }
  
  protected final String d()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("[");
    if ((this.a != null) && (this.a.length > 0))
    {
      bt[] arrayOfbt = this.a;
      int j = arrayOfbt.length;
      int i = 0;
      while (i < j)
      {
        bt localbt = arrayOfbt[i];
        localStringBuilder.append(" txnId = " + af.b.format(localbt.a) + " txnName = " + localbt.b + "\n");
        i += 1;
      }
    }
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
  
  public final void t_()
  {
    throw aa.c("ActiveTxnArrayStat doesn't support the negate operation.");
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\p\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */