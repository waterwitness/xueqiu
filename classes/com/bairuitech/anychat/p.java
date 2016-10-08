package com.bairuitech.anychat;

import android.view.SurfaceHolder;

public final class p
{
  q[] a = new q[this.b];
  private int b = 10;
  
  public final int a(SurfaceHolder paramSurfaceHolder)
  {
    int k = 0;
    int i = 0;
    int j;
    for (;;)
    {
      j = k;
      if (i >= this.b) {
        break;
      }
      if ((this.a[i] != null) && (this.a[i].a == -1)) {
        this.a[i] = null;
      }
      i += 1;
    }
    do
    {
      j += 1;
      if (j >= this.b) {
        break;
      }
    } while (this.a[j] != null);
    this.a[j] = new q(paramSurfaceHolder);
    return j;
    return -1;
  }
  
  public final void a(int paramInt1, int paramInt2)
  {
    if ((paramInt1 < 0) || (paramInt1 >= this.b)) {}
    while (this.a[paramInt1] == null) {
      return;
    }
    this.a[paramInt1].a = paramInt2;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\bairuitech\anychat\p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */