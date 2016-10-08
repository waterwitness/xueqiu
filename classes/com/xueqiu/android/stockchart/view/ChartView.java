package com.xueqiu.android.stockchart.view;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import com.xueqiu.android.stockchart.f.a;
import java.text.DecimalFormat;

public class ChartView
  extends BaseView
{
  private float b;
  private float c;
  private float d;
  private float e = 0.0F;
  private String f;
  private String g;
  private String h = "small";
  private String i;
  private DecimalFormat j = new DecimalFormat("0.00");
  private float k;
  private float l;
  private float m;
  
  public ChartView(Context paramContext)
  {
    super(paramContext);
  }
  
  public ChartView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public final void a()
  {
    this.c = getViewWidth();
    this.b = getViewHeight();
    this.d = getChartWidth();
    this.e = getChartStartX();
    this.m = getTopBottomGap();
    this.k = ((this.b - this.m) * 0.7F);
    this.l = (this.b - this.m - this.k);
    if (this.i.equals("fund")) {
      this.k = (this.b - this.m);
    }
  }
  
  public final void a(Canvas paramCanvas)
  {
    Paint localPaint = new Paint();
    localPaint.setColor(getContext().getResources().getColor(this.a.getResourceId(1, 0)));
    localPaint.setStrokeWidth(1.0F);
    float f1 = 1.0F + this.e;
    float f2 = this.d + f1 - 2.0F;
    paramCanvas.drawLine(f1, 1.0F, f2, 1.0F, localPaint);
    paramCanvas.drawLine(f1, 1.0F, f1, this.k - 1.0F, localPaint);
    paramCanvas.drawLine(f2, this.k - 1.0F, f2, 1.0F, localPaint);
    paramCanvas.drawLine(f2, this.k - 1.0F, f1, this.k - 1.0F, localPaint);
    if (!this.i.equals("fund"))
    {
      localPaint = new Paint();
      localPaint.setColor(getContext().getResources().getColor(this.a.getResourceId(1, 0)));
      localPaint.setStrokeWidth(1.0F);
      f1 = 1.0F + this.e;
      f2 = this.d + f1 - 2.0F;
      float f3 = this.k;
      f3 = this.m + f3;
      paramCanvas.drawLine(f1, f3, f2, f3, localPaint);
      paramCanvas.drawLine(f1, f3, f1, this.b - 1.0F, localPaint);
      paramCanvas.drawLine(f2, this.b - 1.0F, f2, f3, localPaint);
      paramCanvas.drawLine(f2, this.b - 1.0F, f1, this.b - 1.0F, localPaint);
    }
  }
  
  public float getBottomChartHeight()
  {
    return this.l;
  }
  
  public float getChartStartX()
  {
    if (this.h == "big") {
      this.e = a.a(getContext(), 40.0F);
    }
    return this.e;
  }
  
  public String getChartType()
  {
    return this.i;
  }
  
  public float getChartWidth()
  {
    if (this.h.equals("small")) {
      this.d = getViewWidth();
    }
    for (;;)
    {
      return this.d;
      if ((!this.i.equals("kline")) && (this.i.equals("stock")))
      {
        if ((this.f.equals("1d")) || (this.f.equals("5d"))) {
          this.d = (getViewWidth() - getChartStartX() * 2.0F);
        } else {
          this.d = (getViewWidth() - getChartStartX());
        }
      }
      else {
        this.d = (getViewWidth() - getChartStartX());
      }
    }
  }
  
  public DecimalFormat getDecimalFormat()
  {
    return this.j;
  }
  
  public String getPeriod()
  {
    return this.f;
  }
  
  public String getSymbol()
  {
    return this.g;
  }
  
  public float getTopBottomGap()
  {
    return a.a(getContext(), 15.0F);
  }
  
  public float getTopChartHeight()
  {
    return this.k;
  }
  
  public String getType()
  {
    return this.h;
  }
  
  public float getViewWidth()
  {
    return super.getViewWidth();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
  }
  
  public void setChartType(String paramString)
  {
    this.i = paramString;
  }
  
  public void setPeriod(String paramString)
  {
    this.f = paramString;
  }
  
  public void setSymbol(String paramString)
  {
    this.g = paramString;
    this.j = a.b(paramString);
  }
  
  public void setType(String paramString)
  {
    this.h = paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stockchart\view\ChartView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */