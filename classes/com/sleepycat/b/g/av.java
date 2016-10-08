package com.sleepycat.b.g;

import com.sleepycat.b.g.a.f;
import com.sleepycat.b.p.au;

public class av
{
  public static final av f = new av(true);
  public static final av g = new av(false);
  public final boolean h;
  final au i;
  
  public av(au paramau)
  {
    this.h = true;
    this.i = paramau;
  }
  
  public av(au paramau, byte paramByte)
  {
    this.i = paramau;
    this.h = false;
  }
  
  protected av(boolean paramBoolean)
  {
    this.h = paramBoolean;
    this.i = null;
  }
  
  public f a()
  {
    return f.a;
  }
  
  public final boolean d()
  {
    return (this.h) && (this.i == null);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("inRepStream=").append(this.h);
    localStringBuilder.append("clientVLSN=").append(this.i);
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\g\av.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */