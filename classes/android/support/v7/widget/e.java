package android.support.v7.widget;

final class e
{
  long a = 0L;
  e b;
  
  private void a()
  {
    if (this.b == null) {
      this.b = new e();
    }
  }
  
  final void a(int paramInt)
  {
    e locale = this;
    while (paramInt >= 64)
    {
      locale.a();
      locale = locale.b;
      paramInt -= 64;
    }
    locale.a |= 1L << paramInt;
  }
  
  final void a(int paramInt, boolean paramBoolean)
  {
    e locale1 = this;
    boolean bool = paramBoolean;
    while (paramInt >= 64)
    {
      locale1.a();
      locale1 = locale1.b;
      paramInt -= 64;
    }
    if ((locale1.a & 0x8000000000000000) != 0L)
    {
      paramBoolean = true;
      label43:
      long l1 = (1L << paramInt) - 1L;
      long l2 = locale1.a;
      locale1.a = (((l1 ^ 0xFFFFFFFFFFFFFFFF) & locale1.a) << 1 | l2 & l1);
      if (!bool) {
        break label122;
      }
      locale1.a(paramInt);
    }
    for (;;)
    {
      if ((!paramBoolean) && (locale1.b == null)) {
        return;
      }
      locale1.a();
      locale1 = locale1.b;
      paramInt = 0;
      bool = paramBoolean;
      break;
      paramBoolean = false;
      break label43;
      label122:
      e locale2 = locale1;
      for (;;)
      {
        if (paramInt < 64) {
          break label154;
        }
        if (locale2.b == null) {
          break;
        }
        locale2 = locale2.b;
        paramInt -= 64;
      }
      label154:
      locale2.a &= (1L << paramInt ^ 0xFFFFFFFFFFFFFFFF);
    }
  }
  
  final boolean b(int paramInt)
  {
    e locale = this;
    while (paramInt >= 64)
    {
      locale.a();
      locale = locale.b;
      paramInt -= 64;
    }
    return (locale.a & 1L << paramInt) != 0L;
  }
  
  final boolean c(int paramInt)
  {
    e locale = this;
    while (paramInt >= 64)
    {
      locale.a();
      locale = locale.b;
      paramInt -= 64;
    }
    long l1 = 1L << paramInt;
    if ((locale.a & l1) != 0L) {}
    for (boolean bool = true;; bool = false)
    {
      locale.a &= (l1 ^ 0xFFFFFFFFFFFFFFFF);
      l1 -= 1L;
      long l2 = locale.a;
      locale.a = (Long.rotateRight((l1 ^ 0xFFFFFFFFFFFFFFFF) & locale.a, 1) | l2 & l1);
      if (locale.b != null)
      {
        if (locale.b.b(0)) {
          locale.a(63);
        }
        locale.b.c(0);
      }
      return bool;
    }
  }
  
  final int d(int paramInt)
  {
    if (this.b == null)
    {
      if (paramInt >= 64) {
        return Long.bitCount(this.a);
      }
      return Long.bitCount(this.a & (1L << paramInt) - 1L);
    }
    if (paramInt < 64) {
      return Long.bitCount(this.a & (1L << paramInt) - 1L);
    }
    return this.b.d(paramInt - 64) + Long.bitCount(this.a);
  }
  
  public final String toString()
  {
    if (this.b == null) {
      return Long.toBinaryString(this.a);
    }
    return this.b.toString() + "xx" + Long.toBinaryString(this.a);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\widget\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */