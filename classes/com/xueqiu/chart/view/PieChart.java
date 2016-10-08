package com.xueqiu.chart.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import com.xueqiu.chart.a.a;
import com.xueqiu.chart.a.b;
import com.xueqiu.chart.b.g;
import com.xueqiu.chart.b.i;
import com.xueqiu.chart.b.j;
import java.util.Iterator;
import java.util.List;

public class PieChart
  extends Chart
{
  private int a = -90;
  private float b = 0.0F;
  private float[] c;
  private Paint d = new Paint(1);
  
  public PieChart(Context paramContext)
  {
    super(paramContext);
    this.d.setColor(-1);
  }
  
  public PieChart(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.d.setColor(-1);
  }
  
  public PieChart(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.d.setColor(-1);
  }
  
  protected final void a(Canvas paramCanvas, Rect paramRect)
  {
    float f2 = this.a;
    RectF localRectF = new RectF(paramRect);
    int i = 0;
    float f1 = 360.0F;
    if (i < this.i.a.size())
    {
      b localb = (b)this.i.a.get(i);
      float f3 = this.c[i] * 360.0F;
      if (i != this.i.a.size() - 1) {}
      float f4;
      for (f1 -= f3;; f1 = f4)
      {
        this.k.setColor(localb.b);
        paramCanvas.drawArc(localRectF, f2, f3, true, this.k);
        f2 += f3;
        i += 1;
        break;
        f4 = f1;
        f3 = f1;
      }
    }
    if (this.b > 0.0F)
    {
      f1 = paramRect.width() / 2;
      f2 = this.b;
      paramCanvas.drawCircle(paramRect.centerX(), paramRect.centerY(), f1 * f2, this.d);
    }
  }
  
  protected final void a(Rect paramRect)
  {
    int k = 0;
    int i = Math.min(paramRect.width(), paramRect.height());
    int j = paramRect.left;
    int m = paramRect.width() / 2;
    int n = i / 2;
    int i1 = paramRect.top;
    int i2 = paramRect.height() / 2;
    int i3 = i / 2;
    int i4 = paramRect.left;
    int i5 = paramRect.width() / 2;
    int i6 = i / 2;
    int i7 = paramRect.top;
    int i8 = paramRect.height() / 2;
    this.t = new Rect(j + m - n, i1 + i2 - i3, i4 + i5 + i6, i / 2 + (i7 + i8));
    float f1;
    float f2;
    float f3;
    float f4;
    if (this.m.k == i.b)
    {
      f1 = com.xueqiu.chart.c.c.a(this.m.f, "AQJ");
      f2 = com.xueqiu.chart.c.c.a(getContext(), this.m.j.g);
      f3 = com.xueqiu.chart.c.c.a(getContext(), this.m.h);
      f4 = Math.max(f1, f2);
      j = this.i.a.size();
      if ((this.m.m < 0) || (this.m.m > this.i.a.size())) {
        break label440;
      }
      j = this.m.m;
    }
    label440:
    for (;;)
    {
      f1 = 0.0F;
      i = 0;
      while (k < j)
      {
        b localb = (b)this.i.a.get(k);
        f1 = Math.max(f1, com.xueqiu.chart.c.c.b(this.m.f, localb.a) + (f2 + f3));
        m = (int)(i + f4);
        i = m;
        if (k > 0) {
          i = (int)(m + com.xueqiu.chart.c.c.a(getContext(), this.m.i));
        }
        k += 1;
      }
      j = paramRect.centerX();
      k = (int)f1 / 2;
      m = paramRect.centerY();
      n = i / 2;
      i1 = paramRect.centerX();
      i2 = (int)f1 / 2;
      i3 = paramRect.centerY();
      this.s = new Rect(j - k, m - n, i2 + i1, i / 2 + i3);
      return;
    }
  }
  
  protected final void a(a parama)
  {
    Object localObject = parama.a.iterator();
    for (float f = 0.0F; ((Iterator)localObject).hasNext(); f = ((com.xueqiu.chart.a.c)((b)((Iterator)localObject).next()).g.get(0)).a + f) {}
    this.c = new float[parama.a.size()];
    int i = 0;
    while (i < parama.a.size())
    {
      localObject = (b)parama.a.get(i);
      this.c[i] = (((com.xueqiu.chart.a.c)((b)localObject).g.get(0)).a / f);
      i += 1;
    }
  }
  
  public Paint getHolePaint()
  {
    return this.d;
  }
  
  public float getHolePercent()
  {
    return this.b;
  }
  
  public int getStartAngle()
  {
    return this.a;
  }
  
  public void setHolePercent(float paramFloat)
  {
    this.b = paramFloat;
  }
  
  public void setStartAngle(int paramInt)
  {
    this.a = paramInt;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\chart\view\PieChart.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */