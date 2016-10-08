package com.xueqiu.android.base.util;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;

public final class aj
  extends BitmapDrawable
{
  protected Bitmap a;
  
  public final void draw(Canvas paramCanvas)
  {
    if (this.a != null) {
      paramCanvas.drawBitmap(this.a, 0.0F, 0.0F, getPaint());
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\util\aj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */