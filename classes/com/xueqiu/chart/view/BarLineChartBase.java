package com.xueqiu.chart.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import com.xueqiu.chart.a.b;
import com.xueqiu.chart.b.e;
import com.xueqiu.chart.b.g;
import com.xueqiu.chart.b.j;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class BarLineChartBase
  extends Chart
{
  protected com.xueqiu.chart.b.d a = new com.xueqiu.chart.b.d();
  protected com.xueqiu.chart.b.d b = new com.xueqiu.chart.b.d();
  protected com.xueqiu.chart.a.c c;
  protected com.xueqiu.chart.a.c d;
  protected List<Float> e = new ArrayList();
  protected List<String> f = new ArrayList();
  protected List<String> g = new ArrayList();
  protected Paint h = new Paint(1);
  
  public BarLineChartBase(Context paramContext)
  {
    super(paramContext);
  }
  
  public BarLineChartBase(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public BarLineChartBase(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  protected final void a(Rect paramRect)
  {
    float f1 = com.xueqiu.chart.c.c.a(this.m.f, "AQJ");
    int i = (int)Math.max((int)com.xueqiu.chart.c.c.a(getContext(), this.m.j.g), f1);
    this.t = new Rect(paramRect);
    switch (1.a[(this.m.k - 1)])
    {
    }
    for (;;)
    {
      this.u = new Rect(paramRect.left, paramRect.bottom - (int)f1 - this.n.e(), paramRect.right, paramRect.bottom - (int)com.xueqiu.chart.c.c.a(getContext(), this.n.e()));
      paramRect = this.t;
      paramRect.bottom = ((int)(paramRect.bottom - (this.u.height() + com.xueqiu.chart.c.c.a(getContext(), this.n.b()) + com.xueqiu.chart.c.c.a(getContext(), this.n.e()))));
      f1 = 0.0F;
      i = 0;
      while (i < this.f.size())
      {
        f1 = Math.max(f1, com.xueqiu.chart.c.c.b(this.o.f, (String)this.f.get(i)));
        i += 1;
      }
      this.s = new Rect(paramRect.left + (int)com.xueqiu.chart.c.c.a(getContext(), this.m.a()), paramRect.top, paramRect.right, i + paramRect.top);
      Rect localRect = this.t;
      localRect.top += this.s.height() + (int)com.xueqiu.chart.c.c.a(getContext(), this.m.e());
    }
    switch (1.b[(this.o.g - 1)])
    {
    default: 
      return;
    }
    this.v = new Rect(this.t.right - (int)f1 - (int)com.xueqiu.chart.c.c.a(getContext(), this.o.c()), this.t.top, this.t.right - (int)com.xueqiu.chart.c.c.a(getContext(), this.o.c()), this.t.bottom);
  }
  
  protected final void a(com.xueqiu.chart.a.a parama)
  {
    this.c = null;
    this.d = null;
    Object localObject = parama.a.iterator();
    while (((Iterator)localObject).hasNext())
    {
      Iterator localIterator = ((b)((Iterator)localObject).next()).g.iterator();
      while (localIterator.hasNext())
      {
        com.xueqiu.chart.a.c localc = (com.xueqiu.chart.a.c)localIterator.next();
        if ((this.c == null) || (this.c.a >= localc.a)) {
          this.c = localc;
        }
        if ((this.d == null) || (this.d.a <= localc.a)) {
          this.d = localc;
        }
      }
    }
    if (this.c == null) {
      return;
    }
    float f2 = this.c.a;
    float f3 = this.d.a;
    float f1 = f2;
    if (f2 > 0.0F) {
      f1 = 0.0F;
    }
    f2 = f3;
    if (f3 < 0.0F) {
      f2 = 0.0F;
    }
    f3 = (f2 - f1) / this.b.c;
    f3 = this.b.f.a(f3);
    f1 = (float)(Math.floor(f1 / f3) * f3);
    f2 = (float)(Math.ceil(f2 / f3) * f3);
    this.e.clear();
    this.f.clear();
    while (f1 <= f2)
    {
      this.e.add(Float.valueOf(f1));
      this.f.add(this.o.h.a(f1));
      f1 += f3;
    }
    this.g.clear();
    int i = 1;
    int k = ((b)parama.a.get(0)).g.size();
    if (k > this.a.c) {
      i = k / this.a.c;
    }
    int j = 0;
    label370:
    if ((j <= this.a.c) && (j < k)) {
      if (j != this.a.c) {
        break label455;
      }
    }
    label455:
    for (localObject = (com.xueqiu.chart.a.c)((b)parama.a.get(0)).g.get(k - 1);; localObject = (com.xueqiu.chart.a.c)((b)parama.a.get(0)).g.get(i * j))
    {
      this.g.add(((com.xueqiu.chart.a.c)localObject).c);
      j += 1;
      break label370;
      break;
    }
  }
  
  protected void b(Canvas paramCanvas, Rect paramRect)
  {
    float f1 = paramRect.left;
    float f2 = paramRect.width();
    float f3 = this.a.d;
    float f4 = paramRect.top;
    float f5 = paramRect.width();
    float f6 = this.a.d;
    float f7 = this.a.e;
    paramRect.height();
    float f8 = com.xueqiu.chart.c.c.a(this.n.f, "A");
    int i = 0;
    while (i < this.g.size())
    {
      String str = (String)this.g.get(i);
      float f9 = com.xueqiu.chart.c.c.b(this.n.f, str);
      paramCanvas.drawText(str, Math.min(paramRect.right - f9, Math.max(paramRect.left, f5 * (1.0F - f6 - f7) / (this.g.size() - 1) * i + (f1 + f2 * f3) - f9 / 2.0F)), f4 + f8, this.n.f);
      i += 1;
    }
  }
  
  protected final void c(Canvas paramCanvas, Rect paramRect)
  {
    com.xueqiu.chart.c.c.a(this.o.f, "A");
    int j = 0;
    if ((j < this.f.size()) && (this.f.size() > 1))
    {
      String str = (String)this.f.get(j);
      float f1 = paramRect.bottom - j * paramRect.height() / (this.f.size() - 1);
      if (this.b.a) {
        paramCanvas.drawLine(this.t.left, f1, this.t.right, f1, this.b.b);
      }
      int i = paramRect.left;
      switch (1.c[(this.o.f() - 1)])
      {
      }
      for (;;)
      {
        paramCanvas.drawText(str, i, f1 - this.b.b.getStrokeWidth() - com.xueqiu.chart.c.c.a(getContext(), this.o.e()), this.o.f);
        j += 1;
        break;
        i = paramRect.right - (int)com.xueqiu.chart.c.c.b(this.o.f, str);
        continue;
        i = paramRect.left;
        continue;
        i = paramRect.centerX() - (int)com.xueqiu.chart.c.c.b(this.o.f, str) / 2;
      }
    }
  }
  
  public com.xueqiu.chart.b.d getXGrid()
  {
    return this.a;
  }
  
  public com.xueqiu.chart.b.d getYGrid()
  {
    return this.b;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\chart\view\BarLineChartBase.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */