package com.snowballfinance.message.io;

import java.io.Serializable;

public final class b
  implements Serializable
{
  public long a;
  public int b;
  public boolean c;
  public int d;
  public boolean e;
  public boolean f;
  public byte[] g;
  public long h;
  
  public final String toString()
  {
    return String.format("[type:%s] [seq:%s] [end:%s]", new Object[] { Integer.valueOf(this.b), Long.valueOf(this.a), Integer.valueOf(this.d) });
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\snowballfinance\message\io\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */