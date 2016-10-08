package com.tencent.bugly.proguard;

import android.content.ContentValues;

final class as
  extends Thread
{
  int a;
  String b;
  byte[] c;
  private int d = 4;
  private n e = null;
  private String f;
  private ContentValues g;
  private boolean h;
  private String[] i;
  private String j;
  private String[] k;
  private String l;
  private String m;
  private String n;
  private String o;
  private String p;
  private String[] q;
  
  public as(o paramo) {}
  
  public final void run()
  {
    switch (this.d)
    {
    default: 
      return;
    case 1: 
      o.a(this.r, this.f, this.g, this.e);
      return;
    case 2: 
      o.a(this.r, this.f, this.p, this.q, this.e);
      return;
    case 3: 
      o.a(this.r, this.h, this.f, this.i, this.j, this.k, this.l, this.m, this.n, this.o, this.e);
      return;
    case 4: 
      o.a(this.r, this.a, this.b, this.c, this.e);
      return;
    case 5: 
      o.a(this.r, this.a, this.e);
      return;
    }
    o.a(this.a, this.b, this.e);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\bugly\proguard\as.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */