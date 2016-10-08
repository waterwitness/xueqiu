package com.tencent.plus;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;

public class MaskView
  extends View
{
  private static String a = "MaskView";
  private Rect b;
  private Paint c;
  
  public MaskView(Context paramContext)
  {
    super(paramContext);
    b();
  }
  
  public MaskView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    b();
  }
  
  private void b()
  {
    this.c = new Paint();
  }
  
  public Rect a()
  {
    if (this.b == null)
    {
      this.b = new Rect();
      int k = getMeasuredWidth();
      int j = getMeasuredHeight();
      int i = Math.min(Math.min(j - 60 - 80, k), 640);
      k = (k - i) / 2;
      j = (j - i) / 2;
      this.b.set(k, j, k + i, i + j);
    }
    return this.b;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    Rect localRect = a();
    int i = getMeasuredWidth();
    int j = getMeasuredHeight();
    this.c.setStyle(Paint.Style.FILL);
    this.c.setColor(Color.argb(100, 0, 0, 0));
    paramCanvas.drawRect(0.0F, 0.0F, i, localRect.top, this.c);
    paramCanvas.drawRect(0.0F, localRect.bottom, i, j, this.c);
    paramCanvas.drawRect(0.0F, localRect.top, localRect.left, localRect.bottom, this.c);
    paramCanvas.drawRect(localRect.right, localRect.top, i, localRect.bottom, this.c);
    paramCanvas.drawColor(Color.argb(100, 0, 0, 0));
    this.c.setStyle(Paint.Style.STROKE);
    this.c.setColor(-1);
    paramCanvas.drawRect(localRect.left, localRect.top, localRect.right - 1, localRect.bottom, this.c);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\plus\MaskView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */