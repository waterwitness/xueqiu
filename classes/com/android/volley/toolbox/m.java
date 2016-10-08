package com.android.volley.toolbox;

import android.graphics.Bitmap;
import java.util.HashMap;
import java.util.LinkedList;

public final class m
{
  Bitmap a;
  final n b;
  final String c;
  private final String e;
  
  public m(j paramj, Bitmap paramBitmap, String paramString1, String paramString2, n paramn)
  {
    this.a = paramBitmap;
    this.c = paramString1;
    this.e = paramString2;
    this.b = paramn;
  }
  
  public final void a()
  {
    if (this.b == null) {}
    k localk;
    do
    {
      do
      {
        do
        {
          return;
          localk = (k)this.d.c.get(this.e);
          if (localk == null) {
            break;
          }
        } while (!localk.a(this));
        this.d.c.remove(this.e);
        return;
        localk = (k)this.d.d.get(this.e);
      } while (localk == null);
      localk.a(this);
    } while (localk.c.size() != 0);
    this.d.d.remove(this.e);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\android\volley\toolbox\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */