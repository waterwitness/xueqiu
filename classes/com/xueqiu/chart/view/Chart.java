package com.xueqiu.chart.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.FrameLayout;
import com.xueqiu.chart.a.b;
import com.xueqiu.chart.b.e;
import com.xueqiu.chart.b.f;
import com.xueqiu.chart.b.g;
import com.xueqiu.chart.b.j;
import com.xueqiu.chart.b.k;
import com.xueqiu.chart.c.c;
import java.util.List;

public abstract class Chart
  extends FrameLayout
{
  private boolean a = false;
  protected com.xueqiu.chart.a.a i;
  protected String j = "Empty";
  protected Paint k = new Paint(1);
  protected boolean l = false;
  protected g m;
  protected e n;
  protected e o;
  protected e p = new e();
  protected com.xueqiu.chart.b.a q;
  protected Rect r = new Rect();
  protected Rect s = new Rect();
  protected Rect t = new Rect();
  protected Rect u = new Rect();
  protected Rect v = new Rect();
  
  public Chart(Context paramContext)
  {
    super(paramContext);
  }
  
  public Chart(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public Chart(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  protected void a(Canvas paramCanvas, Rect paramRect) {}
  
  protected abstract void a(Rect paramRect);
  
  protected abstract void a(com.xueqiu.chart.a.a parama);
  
  protected void b(Canvas paramCanvas, Rect paramRect) {}
  
  protected void c(Canvas paramCanvas, Rect paramRect) {}
  
  protected void dispatchDraw(Canvas paramCanvas)
  {
    super.dispatchDraw(paramCanvas);
    int i1;
    if ((this.i == null) || (this.i.a == null) || (this.i.a.size() == 0))
    {
      Log.d("Chart", "must contains at least 1 data series.");
      paramCanvas.getClipBounds(this.r);
      localRect = this.r;
      i1 = (int)this.p.f.measureText(this.j);
      paramCanvas.drawText(this.j, (localRect.width() - i1) / 2, (localRect.height() - this.p.f.getTextSize()) / 2.0F, this.p.f);
      return;
    }
    if (!this.a)
    {
      this.a = true;
      a(this.i);
      paramCanvas.getClipBounds(this.r);
      a(this.r);
    }
    b(paramCanvas, this.u);
    c(paramCanvas, this.v);
    a(paramCanvas, this.t);
    Rect localRect = this.s;
    Object localObject = this.m.j;
    float f2 = c.a(getContext(), ((j)localObject).g);
    float f3 = c.a(getContext(), this.m.j.h);
    float f1 = c.a(getContext(), this.m.h);
    float f4 = c.a(this.m.f, "AQJ");
    switch (1.b[(this.m.l - 1)])
    {
    default: 
      return;
    case 1: 
      switch (1.a[(this.m.f() - 1)])
      {
      case 2: 
      default: 
        return;
      case 1: 
        i1 = this.i.a.size();
        if ((this.m.m >= 0) && (this.m.m <= this.i.a.size())) {
          i1 = this.m.m;
        }
        break;
      }
      break;
    }
    for (;;)
    {
      int i2 = 0;
      f1 = 0.0F;
      if (i2 >= i1) {
        break;
      }
      localObject = (b)this.i.a.get(i2);
      this.m.g.setColor(((b)localObject).b);
      if (this.m.j.f == k.a) {
        paramCanvas.drawCircle(localRect.left + f1 + f2 / 2.0F, localRect.centerY(), f2 / 2.0F, this.m.g);
      }
      float f5;
      float f6;
      for (;;)
      {
        i3 = (int)this.m.f.measureText(((b)localObject).a);
        f1 = f1 + f2 + this.m.h;
        paramCanvas.drawText(((b)localObject).a, localRect.left + f1, localRect.centerY() + f4 / 2.0F + this.m.b(), this.m.f);
        f5 = i3;
        f6 = c.a(getContext(), this.m.i);
        i2 += 1;
        f1 = f6 + (f1 + f5);
        break;
        this.m.g.setStyle(Paint.Style.STROKE);
        this.m.g.setStrokeWidth(f3);
        paramCanvas.drawLine(localRect.left + f1, localRect.centerY(), localRect.left + f1 + f2, localRect.centerY(), this.m.g);
      }
      int i4 = getWidth();
      int i3 = this.i.a.size();
      i2 = 0;
      i1 = 0;
      while (i1 < i3)
      {
        localObject = (b)this.i.a.get(i1);
        i2 = (int)(i2 + f2);
        i2 = (int)((int)this.m.f.measureText(((b)localObject).a) + (i2 + this.m.h) + c.a(getContext(), this.m.i));
        i1 += 1;
      }
      f1 = i4 - i2 + this.m.h;
      if ((this.m.m >= 0) && (this.m.m <= this.i.a.size())) {}
      for (i1 = this.m.m;; i1 = i3)
      {
        f1 += f2;
        i2 = 0;
        if (i2 >= i1) {
          break;
        }
        localObject = (b)this.i.a.get(i2);
        this.m.g.setColor(((b)localObject).b);
        if (this.m.j.f == k.a) {
          paramCanvas.drawCircle(localRect.left + f1 + f2 / 2.0F, localRect.centerY() + this.m.b(), f2 / 2.0F, this.m.g);
        }
        for (;;)
        {
          i3 = (int)this.m.f.measureText(((b)localObject).a);
          f1 = f1 + f2 + this.m.h;
          paramCanvas.drawText(((b)localObject).a, localRect.left + f1, localRect.centerY() + f4 / 2.0F + this.m.b(), this.m.f);
          f1 = f1 + i3 + c.a(getContext(), this.m.i);
          i2 += 1;
          break;
          this.m.g.setStyle(Paint.Style.STROKE);
          this.m.g.setStrokeWidth(f3);
          paramCanvas.drawLine(localRect.left + f1, localRect.centerY() + this.m.b(), localRect.left + f1 + f2, localRect.centerY() + this.m.b(), this.m.g);
        }
        switch (1.a[(this.m.f() - 1)])
        {
        default: 
          return;
        }
        f5 = Math.max(f4, f2);
        f6 = c.a(getContext(), this.m.i);
        i1 = this.i.a.size();
        if ((this.m.m >= 0) && (this.m.m <= this.i.a.size())) {
          i1 = this.m.m;
        }
        for (;;)
        {
          i2 = 0;
          i3 = 0;
          label1259:
          b localb;
          if (i2 < i1)
          {
            localb = (b)this.i.a.get(i2);
            this.m.g.setColor(localb.b);
            this.m.g.setStrokeWidth(f3);
            if (this.m.j.f != k.a) {
              break label1432;
            }
            paramCanvas.drawCircle(localRect.left + f2 / 2.0F, localRect.top + i3 + f5 / 2.0F, f2 / 2.0F, this.m.g);
          }
          for (;;)
          {
            paramCanvas.drawText(localb.a, localRect.left + f2 + f1, localRect.top + i3 + f5 / 2.0F + f4 / 2.0F, this.m.f);
            i3 = (int)(i3 + (f5 + f6));
            i2 += 1;
            break label1259;
            break;
            label1432:
            paramCanvas.drawLine(localRect.left, localRect.top + i3 + f5 / 2.0F - f3 / 2.0F, localRect.left + ((j)localObject).g, localRect.top + i3 + f5 / 2.0F - f3 / 2.0F, this.m.g);
          }
        }
      }
    }
  }
  
  public com.xueqiu.chart.a.a getData()
  {
    return this.i;
  }
  
  public String getEmptyDescription()
  {
    return this.j;
  }
  
  public e getEmptyLabel()
  {
    return this.p;
  }
  
  public g getLegend()
  {
    return this.m;
  }
  
  public Paint getSeriesPaint()
  {
    return this.k;
  }
  
  public e getXLabel()
  {
    return this.n;
  }
  
  public e getYLabel()
  {
    return this.o;
  }
  
  public void setData(com.xueqiu.chart.a.a parama)
  {
    this.i = parama;
    this.m = new g();
    this.m.j.g = 10;
    this.m.j.h = 5;
    this.m.h = 5;
    this.m.i = 20;
    this.m.f.setTextSize(c.a(getContext(), 10.0F));
    this.m.f.setColor(c.a);
    this.n = new e();
    this.n.f.setColor(c.a);
    this.n.f.setTextSize(c.a(getContext(), 10.0F));
    this.n.g = f.b;
    this.o = new e();
    this.o.f.setColor(c.a);
    this.o.f.setTextSize(c.a(getContext(), 10.0F));
    this.o.g = f.a;
    this.p.f.setColor(c.a);
    this.p.f.setTextSize(c.a(getContext(), 10.0F));
    this.q = new com.xueqiu.chart.b.a();
    this.a = false;
  }
  
  public void setEmptyDescription(String paramString)
  {
    this.j = paramString;
  }
  
  public void setEmptyLabel(e parame)
  {
    this.p = parame;
  }
  
  public void setReverseDrawing(boolean paramBoolean)
  {
    this.l = paramBoolean;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\chart\view\Chart.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */