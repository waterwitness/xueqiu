package com.d.a.b.c;

import android.graphics.Bitmap;
import com.d.a.b.a.g;
import com.d.a.b.e.b;

public final class c
  implements a
{
  protected final int a;
  protected final int b;
  
  public c(int paramInt)
  {
    this(paramInt, (byte)0);
  }
  
  private c(int paramInt, byte paramByte)
  {
    this.a = paramInt;
    this.b = 0;
  }
  
  public final void display(Bitmap paramBitmap, com.d.a.b.e.a parama, g paramg)
  {
    if (!(parama instanceof b)) {
      throw new IllegalArgumentException("ImageAware should wrap ImageView. ImageViewAware is expected.");
    }
    parama.a(new d(paramBitmap, this.a, this.b));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\d\a\b\c\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */