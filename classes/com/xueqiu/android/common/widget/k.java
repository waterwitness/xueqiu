package com.xueqiu.android.common.widget;

import android.annotation.TargetApi;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.FontMetricsInt;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.text.style.ImageSpan;

public final class k
  extends ImageSpan
{
  public k(IMTextView paramIMTextView, Drawable paramDrawable)
  {
    super(paramDrawable, 1);
  }
  
  @TargetApi(16)
  public final void draw(Canvas paramCanvas, CharSequence paramCharSequence, int paramInt1, int paramInt2, float paramFloat, int paramInt3, int paramInt4, int paramInt5, Paint paramPaint)
  {
    paramInt2 = 0;
    Drawable localDrawable = getDrawable();
    paramCanvas.save();
    if (Build.VERSION.SDK_INT >= 16) {}
    for (paramInt1 = (int)this.a.getLineSpacingExtra();; paramInt1 = 0)
    {
      paramInt3 = paramInt5 - localDrawable.getBounds().bottom - paramInt1 + (localDrawable.getBounds().height() - (int)this.a.getTextSize()) / 2;
      paramInt1 = paramInt3;
      if (this.mVerticalAlignment == 1) {
        paramInt4 = paramCharSequence.length();
      }
      for (;;)
      {
        paramInt1 = paramInt3;
        if (paramInt2 < paramInt4)
        {
          if (Character.isLetterOrDigit(paramCharSequence.charAt(paramInt2))) {
            paramInt1 = paramInt3 - paramPaint.getFontMetricsInt().descent;
          }
        }
        else
        {
          paramCanvas.translate(paramFloat, paramInt1);
          localDrawable.draw(paramCanvas);
          paramCanvas.restore();
          return;
        }
        paramInt2 += 1;
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */