package com.xiaomi.push.b;

import com.google.a.a.b;
import com.google.a.a.e;

public final class d
  extends e
{
  public boolean a;
  public boolean b = false;
  public boolean c;
  public int d = 0;
  public boolean e;
  public int f = 0;
  private boolean g;
  private int h = 0;
  private int i = -1;
  
  public final int a()
  {
    int k = 0;
    if (this.a) {
      k = b.a(1) + 1 + 0;
    }
    int j = k;
    if (this.g) {
      j = k + b.b(3, this.h);
    }
    k = j;
    if (this.c) {
      k = j + b.b(4, this.d);
    }
    j = k;
    if (this.e) {
      j = k + b.b(5, this.f);
    }
    this.i = j;
    return j;
  }
  
  public final d a(int paramInt)
  {
    this.g = true;
    this.h = paramInt;
    return this;
  }
  
  public final void a(b paramb)
  {
    if (this.a) {
      paramb.a(1, this.b);
    }
    if (this.g) {
      paramb.a(3, this.h);
    }
    if (this.c) {
      paramb.a(4, this.d);
    }
    if (this.e) {
      paramb.a(5, this.f);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\push\b\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */