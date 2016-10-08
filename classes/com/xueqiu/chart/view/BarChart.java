package com.xueqiu.chart.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.PointF;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import com.xueqiu.chart.a.a;
import com.xueqiu.chart.a.b;
import com.xueqiu.chart.b.d;
import com.xueqiu.chart.b.e;
import java.util.List;

public class BarChart
  extends BarLineChartBase
{
  private float A = 0.0F;
  private float B = 0.0F;
  private float C = 0.0F;
  private float w = 0.0F;
  private float x = 0.0F;
  private float y = 0.0F;
  private PointF z = new PointF();
  
  public BarChart(Context paramContext)
  {
    super(paramContext);
  }
  
  public BarChart(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public BarChart(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private float a(float paramFloat, int paramInt1, int paramInt2, int paramInt3)
  {
    return paramFloat - getBarWidth() * paramInt1 * paramInt2 - getGroupSpace() * paramInt1 - getBarSpace() * paramInt1 - (getBarSpace() * paramInt3 + getBarWidth() * paramInt3) + this.x;
  }
  
  private void a(float paramFloat1, float paramFloat2)
  {
    this.z.set(paramFloat1, paramFloat2);
  }
  
  private void a(Canvas paramCanvas, Rect paramRect, b paramb, float paramFloat1, float paramFloat2, int paramInt)
  {
    int i = 0;
    if (i < paramb.g.size())
    {
      com.xueqiu.chart.a.c localc = (com.xueqiu.chart.a.c)paramb.g.get(i);
      float f3 = a(paramRect.right, i, this.i.a.size(), paramInt);
      float f4 = getBarWidth();
      float f2;
      float f1;
      float f5;
      if (localc.a > 0.0F)
      {
        f2 = this.w;
        f1 = paramRect.bottom;
        f5 = paramRect.height();
        f1 -= (localc.a - paramFloat1) * f5 / (paramFloat2 - paramFloat1);
      }
      for (;;)
      {
        this.h.setStyle(Paint.Style.FILL);
        this.h.setColor(paramb.b);
        paramCanvas.drawRect(f3 - f4, f1, f3, f2, this.h);
        i += 1;
        break;
        f1 = this.w;
        f2 = paramRect.bottom;
        f5 = paramRect.height();
        f2 -= (localc.a - paramFloat1) * f5 / (paramFloat2 - paramFloat1);
      }
    }
  }
  
  protected final void a(Canvas paramCanvas, Rect paramRect)
  {
    int i = 0;
    float f1;
    if (i < this.e.size())
    {
      if (((Float)this.e.get(i)).floatValue() == 0.0F) {
        this.w = (paramRect.bottom - i * paramRect.height() / (this.f.size() - 1));
      }
    }
    else
    {
      i = ((b)this.i.a.get(0)).g.size();
      if (i <= 6) {
        break label334;
      }
      f1 = com.xueqiu.chart.c.c.a(getContext(), 56.0F);
    }
    float f2;
    for (this.y = ((i - 6) * f1 + getBarWidth());; this.y = ((i - 6) * f1))
    {
      if (this.y < 0.0F) {
        this.x = this.y;
      }
      f1 = ((Float)this.e.get(0)).floatValue();
      f2 = ((Float)this.e.get(this.e.size() - 1)).floatValue();
      paramRect = new Rect(paramRect);
      paramRect.left = ((int)(paramRect.left + paramRect.width() * this.a.d));
      paramRect.right = ((int)(paramRect.right - paramRect.width() * this.a.e));
      if (!this.l) {
        break label359;
      }
      i = this.i.a.size();
      while (i > 0)
      {
        a(paramCanvas, paramRect, (b)this.i.a.get(i - 1), f1, f2, this.i.a.size() - i);
        i -= 1;
      }
      i += 1;
      break;
      label334:
      f1 = com.xueqiu.chart.c.c.a(getContext(), 56.0F);
    }
    label359:
    i = 0;
    while (i < this.i.a.size())
    {
      a(paramCanvas, paramRect, (b)this.i.a.get(i), f1, f2, i);
      i += 1;
    }
  }
  
  protected final void b(Canvas paramCanvas, Rect paramRect)
  {
    float f1 = com.xueqiu.chart.c.c.a(this.n.f, "A");
    paramRect = new Rect(paramRect);
    paramRect.left = ((int)(paramRect.left + paramRect.width() * this.a.d));
    paramRect.right = ((int)(paramRect.right - paramRect.width() * this.a.e));
    b localb = (b)this.i.a.get(0);
    int i = 0;
    while (i < localb.g.size())
    {
      float f2 = a(paramRect.right, i, this.i.a.size(), this.i.a.size() - 1);
      float f3 = getBarWidth();
      this.h.setStyle(Paint.Style.FILL);
      this.h.setColor(localb.b);
      paramCanvas.drawText((String)this.g.get(i), f2 - f3, paramRect.bottom + 1.2F * f1, this.n.f);
      i += 1;
    }
  }
  
  public float getBarSpace()
  {
    return this.A;
  }
  
  public float getBarWidth()
  {
    return this.C;
  }
  
  public float getGroupSpace()
  {
    return this.B;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    float f1 = paramMotionEvent.getX();
    float f2 = paramMotionEvent.getY();
    switch (paramMotionEvent.getAction())
    {
    }
    for (;;)
    {
      return true;
      this.x += (f1 - this.z.x) * 3.0F;
      if (this.x < 0.0F) {
        this.x = 0.0F;
      }
      if (this.x >= this.y) {
        this.x = this.y;
      }
      a(f1, f2);
      invalidate();
      continue;
      a(f1, f2);
    }
  }
  
  public void setBarSpace(float paramFloat)
  {
    this.A = paramFloat;
  }
  
  public void setBarWidth(float paramFloat)
  {
    this.C = paramFloat;
  }
  
  public void setGroupSpace(float paramFloat)
  {
    this.B = paramFloat;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\chart\view\BarChart.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */