package com.sleepycat.b.l;

import com.sleepycat.b.aa;
import com.sleepycat.b.c.i;
import com.sleepycat.b.f.f;

final class ai
  extends e
{
  static
  {
    if (!ah.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      e = bool;
      return;
    }
  }
  
  private ai(ah paramah) {}
  
  private ai(ah paramah, ac paramac, byte[] paramArrayOfByte, long paramLong)
  {
    super(paramac, paramArrayOfByte, paramLong);
  }
  
  public final ac a(i parami, j paramj)
  {
    if ((this.a == null) && (!ah.a(this.f).isWriteLockedByCurrentThread()))
    {
      ah.a(this.f).d();
      ah.a(this.f).a();
      if (this != ah.b(this.f)) {
        throw aa.a(parami.c, "Root changed while unlatched, dbId=" + parami.a);
      }
    }
    return super.a(parami, paramj);
  }
  
  public final void a(long paramLong)
  {
    if ((!e) && (!ah.a(this.f).isWriteLockedByCurrentThread())) {
      throw new AssertionError();
    }
    super.a(paramLong);
  }
  
  final void a(i parami, long paramLong)
  {
    if ((!e) && (!ah.a(this.f).isWriteLockedByCurrentThread())) {
      throw new AssertionError();
    }
    super.a(parami, paramLong);
  }
  
  public final void a(ac paramac)
  {
    if ((!e) && (!ah.a(this.f).isWriteLockedByCurrentThread())) {
      throw new AssertionError();
    }
    super.a(paramac);
  }
  
  public final void c()
  {
    if ((!e) && (!ah.a(this.f).isWriteLockedByCurrentThread())) {
      throw new AssertionError();
    }
    super.c();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\l\ai.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */