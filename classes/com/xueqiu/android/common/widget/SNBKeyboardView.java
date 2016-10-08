package com.xueqiu.android.common.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.FontMetricsInt;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.inputmethodservice.Keyboard;
import android.inputmethodservice.Keyboard.Key;
import android.inputmethodservice.KeyboardView;
import android.util.AttributeSet;
import com.xueqiu.android.base.r;
import java.util.Iterator;
import java.util.List;

public class SNBKeyboardView
  extends KeyboardView
{
  private Context a;
  private boolean b;
  
  public SNBKeyboardView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.a = paramContext;
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    Iterator localIterator = getKeyboard().getKeys().iterator();
    if (localIterator.hasNext())
    {
      Keyboard.Key localKey = (Keyboard.Key)localIterator.next();
      this.b = false;
      Paint localPaint = new Paint(1);
      Object localObject1 = null;
      Object localObject3 = "";
      Object localObject2;
      if (" ".equals(localKey.label))
      {
        localObject1 = r.b(2130772167, this.a.getTheme());
        localObject2 = localObject3;
        label91:
        if (localObject1 == null) {
          break label612;
        }
        if (!this.b) {
          break label614;
        }
        ((Drawable)localObject1).setBounds(localKey.x + (localKey.width - ((Drawable)localObject1).getIntrinsicWidth()) / 2, localKey.y + (localKey.height - ((Drawable)localObject1).getIntrinsicHeight()) / 2, localKey.x + (localKey.width + ((Drawable)localObject1).getIntrinsicWidth()) / 2, localKey.y + (localKey.height + ((Drawable)localObject1).getIntrinsicHeight()) / 2);
      }
      for (;;)
      {
        ((Drawable)localObject1).draw(paramCanvas);
        int i = localKey.x;
        int j = localKey.y;
        int k = localKey.x;
        int m = localKey.width;
        int n = localKey.y;
        localObject1 = new Rect(i, j, k + m, localKey.height + n);
        localObject3 = localPaint.getFontMetricsInt();
        i = (((Rect)localObject1).bottom + ((Rect)localObject1).top - ((Paint.FontMetricsInt)localObject3).bottom - ((Paint.FontMetricsInt)localObject3).top) / 2;
        localPaint.setTextAlign(Paint.Align.CENTER);
        paramCanvas.drawText((String)localObject2, ((Rect)localObject1).centerX(), i, localPaint);
        break;
        if ("确定".equals(localKey.label))
        {
          localObject1 = this.a.getResources().getDrawable(2130838195);
          localObject2 = "确定";
          localPaint.setTextSize(42.0F);
          localPaint.setColor(-1);
          break label91;
        }
        if ("下一项".equals(localKey.label))
        {
          localObject1 = this.a.getResources().getDrawable(2130838195);
          localObject2 = "下一项";
          localPaint.setTextSize(42.0F);
          localPaint.setColor(-1);
          break label91;
        }
        if ("00".equals(localKey.label))
        {
          localObject1 = r.b(2130772167, this.a.getTheme());
          localObject2 = "00";
          localPaint.setTextSize(60.0F);
          localPaint.setColor(r.a(2130772256, this.a.getTheme()));
          break label91;
        }
        if ("123".equals(localKey.label))
        {
          localObject1 = r.b(2130772167, this.a.getTheme());
          localObject2 = "123";
          localPaint.setTextSize(42.0F);
          localPaint.setColor(-16481557);
          break label91;
        }
        if ("ABC".equals(localKey.label))
        {
          localObject1 = r.b(2130772167, this.a.getTheme());
          localObject2 = "ABC";
          localPaint.setTextSize(42.0F);
          localPaint.setColor(-16481557);
          break label91;
        }
        if (localKey.codes[0] == -5)
        {
          localObject1 = r.b(2130772168, this.a.getTheme());
          this.b = true;
          localObject2 = localObject3;
          break label91;
        }
        localObject2 = localObject3;
        if (localKey.codes[0] != -3) {
          break label91;
        }
        localObject1 = r.b(2130772169, this.a.getTheme());
        this.b = true;
        localObject2 = localObject3;
        break label91;
        label612:
        break;
        label614:
        ((Drawable)localObject1).setBounds(localKey.x, localKey.y, localKey.x + localKey.width, localKey.y + localKey.height);
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\SNBKeyboardView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */