package com.a.a.c;

import android.graphics.Bitmap;
import android.graphics.RectF;

public final class a
{
  public int a;
  public Bitmap b;
  public RectF c;
  public boolean d;
  public int e;
  private int f;
  private float g;
  private float h;
  
  public a(int paramInt1, int paramInt2, Bitmap paramBitmap, RectF paramRectF, boolean paramBoolean, int paramInt3)
  {
    this.a = paramInt1;
    this.f = paramInt2;
    this.b = paramBitmap;
    this.c = paramRectF;
    this.d = paramBoolean;
    this.e = paramInt3;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof a)) {}
    do
    {
      return false;
      paramObject = (a)paramObject;
    } while ((((a)paramObject).f != this.f) || (((a)paramObject).a != this.a) || (((a)paramObject).g != this.g) || (((a)paramObject).h != this.h) || (((a)paramObject).c.left != this.c.left) || (((a)paramObject).c.right != this.c.right) || (((a)paramObject).c.top != this.c.top) || (((a)paramObject).c.bottom != this.c.bottom));
    return true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\a\a\c\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */