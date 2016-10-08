package com.sleepycat.b;

import com.sleepycat.b.n.n;
import com.sleepycat.b.p.ai;
import java.io.Serializable;

public final class ar
  implements Serializable
{
  private final ai a;
  private final ai b;
  private final ai c;
  
  public ar(ai paramai1, ai paramai2, ai paramai3)
  {
    this.a = paramai1;
    this.b = paramai2;
    this.c = paramai3;
  }
  
  public final int a()
  {
    return this.c.a(n.e);
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(this.a);
    localStringBuilder.append(this.b);
    localStringBuilder.append(this.c);
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\ar.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */