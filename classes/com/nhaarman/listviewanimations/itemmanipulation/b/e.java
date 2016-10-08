package com.nhaarman.listviewanimations.itemmanipulation.b;

import com.nhaarman.listviewanimations.a.d;

final class e
  implements Runnable
{
  private final int b;
  private final int c;
  
  e(b paramb, int paramInt1, int paramInt2)
  {
    this.b = paramInt1;
    this.c = paramInt2;
  }
  
  public final void run()
  {
    this.a.b.b(-this.b, 1);
    this.a.b(this.c);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\nhaarman\listviewanimations\itemmanipulation\b\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */