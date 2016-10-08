package com.android.volley;

final class g
  implements Runnable
{
  private final n b;
  private final r c;
  private final Runnable d;
  
  public g(f paramf, n paramn, r paramr, Runnable paramRunnable)
  {
    this.b = paramn;
    this.c = paramr;
    this.d = paramRunnable;
  }
  
  public final void run()
  {
    if (this.b.h) {
      this.b.b("canceled-at-delivery");
    }
    label50:
    label91:
    label108:
    label118:
    for (;;)
    {
      return;
      int i;
      if (this.c.c == null)
      {
        i = 1;
        if (i == 0) {
          break label91;
        }
        this.b.a(this.c.a);
        if (!this.c.d) {
          break label108;
        }
        this.b.a("intermediate-response");
      }
      for (;;)
      {
        if (this.d == null) {
          break label118;
        }
        this.d.run();
        return;
        i = 0;
        break;
        this.b.b(this.c.c);
        break label50;
        this.b.b("done");
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\android\volley\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */