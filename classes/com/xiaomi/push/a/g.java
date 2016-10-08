package com.xiaomi.push.a;

import java.util.concurrent.ConcurrentLinkedQueue;

final class g
  extends com.xiaomi.a.a.c.d
{
  com.xiaomi.a.a.c.d a;
  
  g(b paramb) {}
  
  public final void a()
  {
    d locald = (d)b.b(this.b).peek();
    if ((locald != null) && (locald.c()))
    {
      this.a = ((com.xiaomi.a.a.c.d)b.b(this.b).remove());
      this.a.a();
    }
  }
  
  public final void b()
  {
    if (this.a != null) {
      this.a.b();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\push\a\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */