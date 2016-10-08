package com.d.a.b;

import android.graphics.Bitmap;
import android.os.Handler;
import com.d.a.b.a.g;
import com.d.a.b.g.a;

final class p
  implements Runnable
{
  private final l a;
  private final Bitmap b;
  private final m c;
  private final Handler d;
  
  public p(l paraml, Bitmap paramBitmap, m paramm, Handler paramHandler)
  {
    this.a = paraml;
    this.b = paramBitmap;
    this.c = paramm;
    this.d = paramHandler;
  }
  
  public final void run()
  {
    com.d.a.c.d.a("PostProcess image before displaying [%s]", new Object[] { this.c.b });
    n.a(new c(this.c.e.p.a(), this.c, this.a, g.c), this.c.e.s, this.d, this.a);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\d\a\b\p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */