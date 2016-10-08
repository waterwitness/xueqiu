package com.sleepycat.b.a;

final class x
{
  private int b;
  private long c;
  
  private x(w paramw) {}
  
  final boolean a()
  {
    return (w.a(this.a) != null) && (this.b < w.a(this.a).length);
  }
  
  final long b()
  {
    long l1 = this.c;
    int i = 0;
    long l2;
    for (;;)
    {
      short[] arrayOfShort = w.a(this.a);
      int j = this.b;
      this.b = (j + 1);
      l2 = arrayOfShort[j];
      if (l2 >= 0L) {
        break;
      }
      l1 += (-1L - l2 << i);
      i += 15;
    }
    l1 = (l2 << i) + l1;
    this.c = l1;
    return l1;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\a\x.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */