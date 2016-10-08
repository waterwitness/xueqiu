package com.d.a.b;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import com.d.a.a.b.c;
import com.d.a.b.a.f;
import com.d.a.b.g.a;
import java.util.concurrent.Executor;

public final class h
{
  final Resources a;
  final int b;
  final int c;
  final int d;
  final int e;
  final a f;
  final Executor g;
  final Executor h;
  final boolean i;
  final boolean j;
  final int k;
  final int l;
  final int m;
  public final c n;
  final com.d.a.a.a.b o;
  final com.d.a.b.d.b p;
  final com.d.a.b.b.d q;
  final d r;
  final com.d.a.b.d.b s;
  final com.d.a.b.d.b t;
  
  private h(i parami)
  {
    this.a = i.a(parami).getResources();
    this.b = i.b(parami);
    this.c = i.c(parami);
    this.d = i.d(parami);
    this.e = i.e(parami);
    this.f = i.f(parami);
    this.g = i.g(parami);
    this.h = i.h(parami);
    this.k = i.i(parami);
    this.l = i.j(parami);
    this.m = i.k(parami);
    this.o = i.l(parami);
    this.n = i.m(parami);
    this.r = i.n(parami);
    this.p = i.o(parami);
    this.q = i.p(parami);
    this.i = i.q(parami);
    this.j = i.r(parami);
    this.s = new j(this.p);
    this.t = new k(this.p);
    com.d.a.c.d.a(i.s(parami));
  }
  
  final f a()
  {
    DisplayMetrics localDisplayMetrics = this.a.getDisplayMetrics();
    int i2 = this.b;
    int i1 = i2;
    if (i2 <= 0) {
      i1 = localDisplayMetrics.widthPixels;
    }
    int i3 = this.c;
    i2 = i3;
    if (i3 <= 0) {
      i2 = localDisplayMetrics.heightPixels;
    }
    return new f(i1, i2);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\d\a\b\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */