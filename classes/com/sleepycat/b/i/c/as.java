package com.sleepycat.b.i.c;

import com.sleepycat.b.i.c.b.x;

public abstract class as
  implements bc
{
  private final String a = null;
  private final String[] b = null;
  private int c = bb.e - 1;
  public int h = 0;
  public String i;
  public String j;
  
  protected as(ap paramap)
  {
    a(ap.a(paramap));
  }
  
  public abstract av a();
  
  public final void a(String paramString)
  {
    if (new Double(ap.a(this.k)).doubleValue() < new Double(paramString).doubleValue()) {
      throw new IllegalStateException("Send version: " + paramString + " shouldn't be larger than the current version: " + ap.a(this.k));
    }
    if (!paramString.equals(this.i))
    {
      this.i = paramString;
      this.j = (this.i + "|" + this.k.l);
    }
  }
  
  public String c()
  {
    return this.i + "|" + ap.b(this.k) + "|" + ap.c(this.k).b;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\c\as.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */