package com.xueqiu.chart.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import com.xueqiu.chart.a.a;
import com.xueqiu.chart.a.b;
import com.xueqiu.chart.b.d;
import com.xueqiu.chart.b.j;
import com.xueqiu.chart.b.k;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class LineChart
  extends BarLineChartBase
{
  private Paint A = new Paint(1);
  public boolean w = false;
  private double x = 0.0D;
  private List<j> y = new ArrayList();
  private List<PointF> z = new ArrayList();
  
  public LineChart(Context paramContext)
  {
    super(paramContext);
  }
  
  public LineChart(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public LineChart(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private void a(Canvas paramCanvas, Rect paramRect, float paramFloat1, float paramFloat2, String paramString, int paramInt)
  {
    Object localObject = new Rect();
    Paint localPaint = new Paint(1);
    localPaint.setStyle(Paint.Style.FILL);
    localPaint.setTextSize(com.xueqiu.chart.c.c.a(getContext(), 11.0F));
    localPaint.getTextBounds(paramString, 0, paramString.length(), (Rect)localObject);
    int i = ((Rect)localObject).width();
    int j = ((Rect)localObject).height();
    float f2 = com.xueqiu.chart.c.c.a(getContext(), 4.0F);
    localPaint.setColor(paramInt);
    localObject = new Path();
    ((Path)localObject).moveTo(paramFloat1, paramFloat2 - f2 / 2.0F);
    ((Path)localObject).lineTo(paramFloat1 - f2, paramFloat2 - 1.73F * f2 - f2 / 2.0F);
    ((Path)localObject).lineTo(paramFloat1 + f2, paramFloat2 - 1.73F * f2 - f2 / 2.0F);
    ((Path)localObject).close();
    paramCanvas.drawPath((Path)localObject, localPaint);
    float f1 = paramFloat1 - i / 2;
    paramFloat1 = f1;
    if (f1 < paramRect.left) {
      paramFloat1 = paramRect.left;
    }
    paramCanvas.drawRoundRect(new RectF(paramFloat1 - j, paramFloat2 - 1.73F * f2 - j * 2, i + paramFloat1 + j, paramFloat2 - 1.73F * f2), 5.0F, 5.0F, localPaint);
    localPaint.setColor(Color.parseColor("#ffffff"));
    paramCanvas.drawText(paramString, paramFloat1, paramFloat2 - 1.73F * f2 - j / 2, localPaint);
  }
  
  private void a(Canvas paramCanvas, Rect paramRect, b paramb, float paramFloat1, float paramFloat2)
  {
    Path localPath = new Path();
    int i = 0;
    if (i < paramb.g.size())
    {
      com.xueqiu.chart.a.c localc = (com.xueqiu.chart.a.c)paramb.g.get(i);
      float f1 = paramRect.left + paramRect.width() / (paramb.g.size() - 1) * i;
      float f2 = paramRect.bottom - paramRect.height() * (localc.a - paramFloat1) / (paramFloat2 - paramFloat1);
      if (i == 0) {
        localPath.moveTo(f1, f2);
      }
      for (;;)
      {
        if (localc.b != null)
        {
          this.y.add(localc.b);
          this.z.add(new PointF(f1, f2));
        }
        i += 1;
        break;
        localPath.lineTo(f1, f2);
      }
    }
    this.h.setStyle(Paint.Style.STROKE);
    this.h.setColor(paramb.b);
    this.h.setStrokeWidth(com.xueqiu.chart.c.c.a(getContext(), paramb.c));
    paramCanvas.drawPath(localPath, this.h);
    if (paramb.d) {
      b(paramCanvas, paramRect, paramb, paramFloat1, paramFloat2);
    }
  }
  
  private void b(Canvas paramCanvas, Rect paramRect, b paramb, float paramFloat1, float paramFloat2)
  {
    Path localPath = new Path();
    int j = 0;
    float f1 = 0.0F;
    float f3 = 0.0F;
    int i = 0;
    float f2;
    float f6;
    float f5;
    float f4;
    if (i < paramb.g.size())
    {
      com.xueqiu.chart.a.c localc = (com.xueqiu.chart.a.c)paramb.g.get(i);
      f2 = paramRect.left;
      f6 = paramRect.width() / (paramb.g.size() - 1) * i + f2;
      f5 = paramRect.bottom - paramRect.height() * (localc.a - paramFloat1) / (paramFloat2 - paramFloat1);
      if (j == 0)
      {
        f4 = f3;
        f2 = f1;
        if (!localc.c.equals(paramb.e.c)) {}
      }
      else
      {
        j = 1;
        if (!localc.c.equals(paramb.e.c)) {
          break label533;
        }
        localPath.moveTo(f6, f5);
        f4 = f5;
        f2 = f6;
      }
      label182:
      if (localc.c.equals(paramb.f.c))
      {
        paramFloat1 = f4;
        f1 = f2;
      }
    }
    for (;;)
    {
      this.h.setStyle(Paint.Style.STROKE);
      this.h.setColor(Color.parseColor("#eeae00"));
      this.h.setStrokeWidth(com.xueqiu.chart.c.c.a(getContext(), 2.0F));
      paramCanvas.drawPath(localPath, this.h);
      localPath.lineTo(f6, paramRect.bottom);
      localPath.lineTo(f1, paramRect.bottom);
      localPath.close();
      this.h.setStyle(Paint.Style.FILL);
      this.h.setAlpha(51);
      paramCanvas.drawPath(localPath, this.h);
      if (paramb.f.b != null)
      {
        this.h.setColor(paramb.f.b.i);
        this.h.setStyle(Paint.Style.FILL);
        paramCanvas.drawCircle(f6, f5, com.xueqiu.chart.c.c.a(getContext(), 3.0F), this.h);
        this.h.setColor(Color.parseColor("#ffffff"));
        paramCanvas.drawCircle(f6, f5, com.xueqiu.chart.c.c.a(getContext(), 2.0F), this.h);
      }
      if (paramb.e.b != null)
      {
        this.h.setColor(paramb.e.b.i);
        this.h.setStyle(Paint.Style.FILL);
        paramCanvas.drawCircle(f1, paramFloat1, com.xueqiu.chart.c.c.a(getContext(), 3.0F), this.h);
        this.h.setColor(Color.parseColor("#ffffff"));
        paramCanvas.drawCircle(f1, paramFloat1, com.xueqiu.chart.c.c.a(getContext(), 2.0F), this.h);
        a(paramCanvas, paramRect, f1, paramFloat1, String.format("%.2f%%", new Object[] { Double.valueOf(getMaxDraw()) }), paramb.e.b.i);
      }
      return;
      label533:
      localPath.lineTo(f6, f5);
      f4 = f3;
      f2 = f1;
      break label182;
      i += 1;
      f3 = f4;
      f1 = f2;
      break;
      paramFloat1 = f3;
      f5 = 0.0F;
      f6 = 0.0F;
    }
  }
  
  private void d(Canvas paramCanvas, Rect paramRect)
  {
    if ((this.y.isEmpty()) || (this.z.isEmpty()) || (this.y.size() != this.z.size())) {
      return;
    }
    int i = 0;
    label49:
    j localj;
    PointF localPointF;
    if (i < this.y.size())
    {
      localj = (j)this.y.get(i);
      localPointF = (PointF)this.z.get(i);
      if (!this.w) {
        break label224;
      }
      this.h.setColor(localj.i);
      this.h.setStyle(Paint.Style.FILL);
      paramCanvas.drawCircle(localPointF.x, localPointF.y, com.xueqiu.chart.c.c.a(getContext(), 3.0F), this.h);
      this.h.setColor(Color.parseColor("#ffffff"));
      paramCanvas.drawCircle(localPointF.x, localPointF.y, com.xueqiu.chart.c.c.a(getContext(), 2.0F), this.h);
      String str = localj.j;
      a(paramCanvas, paramRect, localPointF.x, localPointF.y, str, localj.i);
    }
    for (;;)
    {
      i += 1;
      break label49;
      break;
      label224:
      if (localj.f == k.a)
      {
        this.A.setStyle(Paint.Style.FILL);
        this.A.setColor(localj.i);
        paramCanvas.drawCircle(localPointF.x, localPointF.y, com.xueqiu.chart.c.c.a(getContext(), localj.g) / 2.0F, this.A);
      }
    }
  }
  
  protected final void a(Canvas paramCanvas, Rect paramRect)
  {
    this.y.clear();
    this.z.clear();
    float f1 = ((Float)this.e.get(0)).floatValue();
    float f2 = ((Float)this.e.get(this.e.size() - 1)).floatValue();
    paramRect = new Rect(paramRect);
    paramRect.left = ((int)(paramRect.left + paramRect.width() * this.a.d));
    paramRect.right = ((int)(paramRect.right - paramRect.width() * this.a.e));
    if (this.l)
    {
      int i = this.i.a.size();
      while (i > 0)
      {
        a(paramCanvas, paramRect, (b)this.i.a.get(i - 1), f1, f2);
        i -= 1;
      }
    }
    Iterator localIterator = this.i.a.iterator();
    while (localIterator.hasNext()) {
      a(paramCanvas, paramRect, (b)localIterator.next(), f1, f2);
    }
    d(paramCanvas, paramRect);
  }
  
  public double getMaxDraw()
  {
    return this.x;
  }
  
  public void setMaxDraw(double paramDouble)
  {
    this.x = paramDouble;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\chart\view\LineChart.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */