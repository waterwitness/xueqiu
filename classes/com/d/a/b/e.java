package com.d.a.b;

import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory.Options;
import android.graphics.drawable.Drawable;
import android.os.Handler;

public final class e
{
  public int a = 0;
  public int b = 0;
  public int c = 0;
  public Drawable d = null;
  public Drawable e = null;
  public Drawable f = null;
  boolean g = false;
  public boolean h = false;
  public boolean i = false;
  public int j = com.d.a.b.a.e.c;
  BitmapFactory.Options k = new BitmapFactory.Options();
  int l = 0;
  public boolean m = false;
  public Object n = null;
  com.d.a.b.g.a o = null;
  com.d.a.b.g.a p = null;
  public com.d.a.b.c.a q = new com.d.a.b.c.e();
  Handler r = null;
  boolean s = false;
  
  public e()
  {
    this.k.inPurgeable = true;
    this.k.inInputShareable = true;
  }
  
  @Deprecated
  public final e a()
  {
    this.i = true;
    return this;
  }
  
  public final e a(Bitmap.Config paramConfig)
  {
    if (paramConfig == null) {
      throw new IllegalArgumentException("bitmapConfig can't be null");
    }
    this.k.inPreferredConfig = paramConfig;
    return this;
  }
  
  public final e a(d paramd)
  {
    this.a = paramd.a;
    this.b = paramd.b;
    this.c = paramd.c;
    this.d = paramd.d;
    this.e = paramd.e;
    this.f = paramd.f;
    this.g = paramd.g;
    this.h = paramd.h;
    this.i = paramd.i;
    this.j = paramd.j;
    this.k = paramd.k;
    this.l = paramd.l;
    this.m = paramd.m;
    this.n = paramd.n;
    this.o = paramd.o;
    this.p = paramd.p;
    this.q = paramd.q;
    this.r = paramd.r;
    this.s = paramd.s;
    return this;
  }
  
  public final d b()
  {
    return new d(this, (byte)0);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\d\a\b\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */