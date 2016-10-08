package com.d.a.b;

import android.graphics.Bitmap;
import com.d.a.b.a.g;

final class c
  implements Runnable
{
  private final Bitmap a;
  private final String b;
  private final com.d.a.b.e.a c;
  private final String d;
  private final com.d.a.b.c.a e;
  private final com.d.a.b.f.a f;
  private final l g;
  private final g h;
  
  public c(Bitmap paramBitmap, m paramm, l paraml, g paramg)
  {
    this.a = paramBitmap;
    this.b = paramm.a;
    this.c = paramm.c;
    this.d = paramm.b;
    this.e = paramm.e.q;
    this.f = paramm.f;
    this.g = paraml;
    this.h = paramg;
  }
  
  public final void run()
  {
    if (this.c.e())
    {
      com.d.a.c.d.a("ImageAware was collected by GC. Task is cancelled. [%s]", new Object[] { this.d });
      localObject = this.f;
      this.c.d();
      ((com.d.a.b.f.a)localObject).a();
      return;
    }
    Object localObject = this.g.a(this.c);
    if (!this.d.equals(localObject)) {}
    for (int i = 1; i != 0; i = 0)
    {
      com.d.a.c.d.a("ImageAware is reused for another image. Task is cancelled. [%s]", new Object[] { this.d });
      localObject = this.f;
      this.c.d();
      ((com.d.a.b.f.a)localObject).a();
      return;
    }
    com.d.a.c.d.a("Display image in ImageAware (loaded from %1$s) [%2$s]", new Object[] { this.h, this.d });
    this.e.display(this.a, this.c, this.h);
    this.g.b(this.c);
    this.f.a(this.b, this.c.d(), this.a);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\d\a\b\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */