package com.xueqiu.android.common.widget;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

public final class d
  extends Drawable
{
  private int a;
  private int b;
  private float c;
  private float d;
  private int e = 255;
  private ColorFilter f;
  private Paint g;
  private Paint h;
  
  public d(int paramInt1, int paramInt2, float paramFloat)
  {
    this.a = paramInt1;
    this.b = paramInt2;
    this.c = 0.0F;
    this.d = paramFloat;
    this.g = new Paint(1);
    this.h = new Paint(1);
  }
  
  public final void draw(Canvas paramCanvas)
  {
    this.g.setColor(this.a);
    this.g.setAlpha(this.e);
    this.h.setColor(this.b);
    this.h.setAlpha(this.e);
    Rect localRect = getBounds();
    paramCanvas.drawRect(localRect, this.h);
    paramCanvas.drawRect(new Rect((int)(localRect.left + localRect.width() * this.c), localRect.top, (int)(localRect.left + localRect.width() * this.d), localRect.bottom), this.g);
  }
  
  public final int getOpacity()
  {
    return 0;
  }
  
  public final void setAlpha(int paramInt)
  {
    this.e = paramInt;
  }
  
  public final void setColorFilter(ColorFilter paramColorFilter)
  {
    this.f = paramColorFilter;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */