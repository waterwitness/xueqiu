package com.xueqiu.android.stockchart.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.util.AttributeSet;
import com.xueqiu.android.stockchart.c;
import com.xueqiu.android.stockchart.e.d;
import java.text.DecimalFormat;
import java.util.ArrayList;

public class FundChartView
  extends ChartView
{
  private ArrayList<com.xueqiu.android.stockchart.e.a> b;
  private float c;
  private float d;
  private float e;
  
  public FundChartView(Context paramContext)
  {
    super(paramContext);
  }
  
  public FundChartView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private void b(Canvas paramCanvas)
  {
    float f1 = getTopChartHeight();
    float f2 = getChartStartX();
    float f3 = getChartWidth() / 5.0F;
    Paint localPaint1 = new Paint();
    localPaint1.setColor(getResources().getColor(c.chart_text_color));
    localPaint1.setAntiAlias(true);
    localPaint1.setTextSize(getFontSize());
    Paint localPaint2 = getSplitLinePaint();
    float f4 = com.xueqiu.android.stockchart.f.a.a(getContext(), 10.0F);
    int i = 0;
    while (i < 5)
    {
      int j = b(i * f3 + f2 + this.e);
      String str = com.xueqiu.android.stockchart.f.a.a(a(j).b, "MM-DD");
      float f5 = this.e;
      f5 = f2 + j * f5;
      localPaint1.setTextAlign(Paint.Align.LEFT);
      paramCanvas.drawText(str, f5, f1 + f4, localPaint1);
      paramCanvas.drawLine(f5, 1.0F, f5, f1, localPaint2);
      i += 1;
    }
  }
  
  public final d a(int paramInt)
  {
    return (d)this.b.get(paramInt);
  }
  
  public final int b(float paramFloat)
  {
    int j = Math.round((paramFloat - getChartStartX()) / this.e);
    int i = j;
    if (j < 0) {
      i = 0;
    }
    j = i;
    if (i >= this.b.size()) {
      j = this.b.size() - 1;
    }
    return j;
  }
  
  public ArrayList<com.xueqiu.android.stockchart.e.a> getFundDataArray()
  {
    return this.b;
  }
  
  public float getPerWidth()
  {
    return this.e;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    a();
    a(paramCanvas);
    float f4;
    Object localObject1;
    float f7;
    float f8;
    float f5;
    float f6;
    float f2;
    int j;
    Paint localPaint1;
    Path localPath;
    int k;
    float f10;
    float f3;
    float f9;
    if ((this.b != null) && (this.b.size() != 0))
    {
      f4 = getTopChartHeight();
      localObject1 = com.xueqiu.android.stockchart.f.a.a(this.b);
      f7 = localObject1[0];
      f8 = localObject1[1];
      f1 = f7 - f8;
      f5 = f8 - f1 * 0.06F;
      f6 = f4 / (0.06F * f1 + f7 - f5);
      this.c = f5;
      this.d = f6;
      f2 = getChartStartX();
      j = getContext().getResources().getColor(c.chart_line_color);
      localPaint1 = new Paint();
      localPaint1.setStyle(Paint.Style.STROKE);
      localPaint1.setStrokeWidth(2.0F);
      localPaint1.setAntiAlias(true);
      localPath = new Path();
      k = this.b.size();
      this.e = (getChartWidth() / (k - 1));
      f10 = getTopChartHeight();
      f3 = getChartStartX();
      f9 = f3 + getChartWidth();
      if (getType() != "big") {
        break label557;
      }
      f1 = com.xueqiu.android.stockchart.f.a.a(getContext(), 2.0F);
      com.xueqiu.android.stockchart.f.a.a(getContext(), 2.0F);
    }
    label412:
    label443:
    label496:
    label520:
    label528:
    label538:
    label554:
    label557:
    for (float f1 = f3 - f1;; f1 = f3)
    {
      float f11 = f10 - (f7 - f5) * f6;
      f10 -= (f8 - f5) * f6;
      localObject1 = getSplitLinePaint();
      paramCanvas.drawLine(f3, f11, f9, f11, (Paint)localObject1);
      paramCanvas.drawLine(f3, f10, f9, f10, (Paint)localObject1);
      Paint localPaint2 = new Paint();
      localPaint2.setAntiAlias(true);
      localPaint2.setColor(-65536);
      localPaint2.setTextSize(getFontSize());
      Object localObject2 = getDecimalFormat();
      String str = ((DecimalFormat)localObject2).format(f7);
      localPaint2.setColor(a(0.0F));
      int i;
      if (getType() == "big")
      {
        localObject1 = Paint.Align.RIGHT;
        localPaint2.setTextAlign((Paint.Align)localObject1);
        paramCanvas.drawText(str, f1, getFontSize() + f11, localPaint2);
        localObject2 = ((DecimalFormat)localObject2).format(f8);
        if (getType() != "big") {
          break label520;
        }
        localObject1 = Paint.Align.RIGHT;
        localPaint2.setTextAlign((Paint.Align)localObject1);
        paramCanvas.drawText((String)localObject2, f1, f10 - 3.0F, localPaint2);
        b(paramCanvas);
        f1 = f2;
        i = 0;
        if (i >= k) {
          break label538;
        }
        localObject1 = (d)this.b.get(i);
        if (localObject1 == null) {
          break label554;
        }
        f2 = f4 - (((d)localObject1).a - f5) * f6;
        if (i <= 0) {
          break label528;
        }
        localPath.lineTo(f1, f2);
        f1 = this.e + f1;
      }
      for (;;)
      {
        i += 1;
        break label443;
        localObject1 = Paint.Align.LEFT;
        break;
        localObject1 = Paint.Align.LEFT;
        break label412;
        localPath.moveTo(f1, f2);
        break label496;
        localPaint1.setColor(j);
        paramCanvas.drawPath(localPath, localPaint1);
        return;
      }
    }
  }
  
  public void setFundDataArray(ArrayList<com.xueqiu.android.stockchart.e.a> paramArrayList)
  {
    this.b = paramArrayList;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stockchart\view\FundChartView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */