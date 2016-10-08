package com.d.a.b;

import android.content.Context;
import com.d.a.c.e.1;
import java.util.concurrent.Executor;

public final class i
{
  public static final int a = com.d.a.b.a.h.a;
  public Executor b = null;
  public Executor c = null;
  public int d = 3;
  public boolean e = false;
  public int f = 0;
  public long g = 0L;
  public int h = 0;
  public com.d.a.a.b.c i = null;
  public com.d.a.a.a.b j = null;
  public com.d.a.a.a.b.a k = null;
  public com.d.a.b.d.b l = null;
  public d m = null;
  private Context n;
  private int o = 0;
  private int p = 0;
  private int q = 0;
  private int r = 0;
  private com.d.a.b.g.a s = null;
  private boolean t = false;
  private boolean u = false;
  private int v = 4;
  private int w = a;
  private com.d.a.b.b.d x;
  private boolean y = false;
  
  public i(Context paramContext)
  {
    this.n = paramContext.getApplicationContext();
  }
  
  public final h a()
  {
    if (this.b == null)
    {
      this.b = a.a(this.d, this.v, this.w);
      if (this.c != null) {
        break label254;
      }
      this.c = a.a(this.d, this.v, this.w);
    }
    for (;;)
    {
      if (this.j == null)
      {
        if (this.k == null) {
          this.k = new com.d.a.a.a.b.b();
        }
        this.j = a.a(this.n, this.k, this.g, this.h);
      }
      if (this.i == null)
      {
        int i2 = this.f;
        int i1 = i2;
        if (i2 == 0) {
          i1 = (int)(Runtime.getRuntime().maxMemory() / 8L);
        }
        this.i = new com.d.a.a.b.a.c(i1);
      }
      if (this.e) {
        this.i = new com.d.a.a.b.a.a(this.i, new e.1());
      }
      if (this.l == null) {
        this.l = new com.d.a.b.d.a(this.n);
      }
      if (this.x == null) {
        this.x = new com.d.a.b.b.a(this.y);
      }
      if (this.m == null) {
        this.m = new e().b();
      }
      return new h(this, (byte)0);
      this.t = true;
      break;
      label254:
      this.u = true;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\d\a\b\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */