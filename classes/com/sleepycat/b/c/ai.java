package com.sleepycat.b.c;

import com.sleepycat.b.a;
import com.sleepycat.b.aa;
import com.sleepycat.b.aw;
import com.sleepycat.b.f.f;
import com.sleepycat.b.l.ah;
import com.sleepycat.b.l.j;

final class ai
  extends ay
{
  ai(ad paramad, i[] paramArrayOfi, long[] paramArrayOfLong, bc parambc, aw paramaw)
  {
    super(paramArrayOfi, false, paramArrayOfLong, parambc);
    this.e = paramaw.c;
    this.g = paramaw.e;
    this.d = paramaw.f;
  }
  
  protected final j a(i parami, long paramLong)
  {
    return parami.b.a(a.c, false);
  }
  
  public final void a()
  {
    int i = 0;
    int k = this.b.length;
    int j = 0;
    for (;;)
    {
      if (i >= k) {
        break label86;
      }
      try
      {
        this.b[i].b.d.a();
        j += 1;
        i += 1;
      }
      catch (Exception localException)
      {
        throw aa.a(this.a, "Couldn't latch all DatabaseImpls during preload", localException);
      }
      finally
      {
        i = j - 1;
      }
    }
    while (i >= 0)
    {
      this.b[i].b.d.d();
      i -= 1;
    }
    label86:
    c();
    i = j - 1;
    while (i >= 0)
    {
      this.b[i].b.d.d();
      i -= 1;
    }
    throw ((Throwable)localObject);
  }
  
  protected final boolean b()
  {
    return true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\c\ai.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */