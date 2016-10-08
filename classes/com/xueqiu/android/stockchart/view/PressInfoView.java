package com.xueqiu.android.stockchart.view;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.util.AttributeSet;
import com.xueqiu.android.stockchart.c;
import com.xueqiu.android.stockchart.e.e;
import com.xueqiu.android.stockchart.e.f;
import com.xueqiu.android.stockchart.e.h;
import com.xueqiu.android.stockchart.e.i;
import com.xueqiu.android.stockchart.e.j;
import com.xueqiu.android.stockchart.f.a;
import java.text.DecimalFormat;
import java.util.List;

public class PressInfoView
  extends ChartView
{
  private boolean b = false;
  private float c;
  private float d;
  private KlineChartView e;
  private StockChartView f;
  private FundChartView g;
  private h h;
  private DecimalFormat i = new DecimalFormat("0.00");
  
  public PressInfoView(Context paramContext)
  {
    super(paramContext);
  }
  
  public PressInfoView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private void a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, Canvas paramCanvas)
  {
    Paint localPaint = getBorderLinePaint();
    Path localPath = new Path();
    localPath.moveTo(paramFloat1, paramFloat2);
    localPath.lineTo(paramFloat4, paramFloat2);
    localPath.lineTo(paramFloat4, paramFloat3);
    localPath.lineTo(paramFloat1, paramFloat3);
    localPath.lineTo(paramFloat1, paramFloat2);
    paramCanvas.drawPath(localPath, localPaint);
    localPaint.setColor(getResources().getColor(this.a.getResourceId(3, 0)));
    localPaint.setStyle(Paint.Style.FILL);
    paramCanvas.drawRect(paramFloat1, paramFloat2, paramFloat4, paramFloat3, localPaint);
  }
  
  private void a(float paramFloat1, float paramFloat2, Canvas paramCanvas)
  {
    Paint localPaint = getBorderLinePaint();
    paramFloat1 += getChartStartX();
    paramCanvas.drawLine(paramFloat1, 0.0F, paramFloat1, getHeight(), localPaint);
    if (paramFloat2 > 0.0F)
    {
      paramCanvas.drawLine(getChartStartX(), paramFloat2, getChartStartX() + getChartWidth(), paramFloat2, localPaint);
      if (!getChartType().equals("kline"))
      {
        localPaint.setColor(getResources().getColor(c.chart_average_color));
        localPaint.setStyle(Paint.Style.FILL);
        paramCanvas.drawCircle(paramFloat1, paramFloat2, 6.0F, localPaint);
      }
    }
  }
  
  private void a(e parame, Canvas paramCanvas)
  {
    float f1 = getChartStartX();
    f1 = a.a(getContext(), 5.0F) + f1;
    float f2 = getTopChartHeight() + getTopBottomGap() + getFontSize();
    Paint localPaint1 = a(getFontSize(), Paint.Align.LEFT);
    localPaint1.setTextSize(a.a(getContext(), 10.0F));
    if ((getType().equals("big")) || (this.b))
    {
      e locale = parame;
      if (parame == null)
      {
        parame = this.e.getShowMACDArray();
        if (parame.size() == 0) {
          return;
        }
        locale = (e)parame.get(parame.size() - 1);
      }
      parame = String.format("DIF： %s", new Object[] { this.i.format(locale.a) });
      f3 = localPaint1.measureText(parame) + f1 + a.a(getContext(), 10.0F);
      String str1 = String.format("DEA： %s", new Object[] { this.i.format(locale.b) });
      float f4 = localPaint1.measureText(str1) + f3 + a.a(getContext(), 10.0F);
      String str2 = String.format("MACD：%s", new Object[] { this.i.format(locale.c) });
      float f5 = localPaint1.measureText(str2);
      Paint localPaint2 = new Paint();
      localPaint2.setColor(getResources().getColor(this.a.getResourceId(6, 0)));
      localPaint2.setAlpha(204);
      paramCanvas.drawRect(f1, 3.0F + (f2 - getFontSize()), f4 + f5, f2 + a.a(getContext(), 2.0F), localPaint2);
      localPaint1.setColor(getResources().getColor(c.chart_dif_color));
      paramCanvas.drawText(parame, f1, f2, localPaint1);
      localPaint1.setColor(getResources().getColor(c.chart_dea_color));
      paramCanvas.drawText(str1, f3, f2, localPaint1);
      localPaint1.setColor(a(locale.c));
      paramCanvas.drawText(str2, f4, f2, localPaint1);
      return;
    }
    float f3 = localPaint1.measureText("MACD(12,26,9)");
    parame = new Paint();
    parame.setColor(getResources().getColor(this.a.getResourceId(6, 0)));
    parame.setAlpha(204);
    paramCanvas.drawRect(f1, 3.0F + (f2 - getFontSize()), f1 + f3, f2 + a.a(getContext(), 2.0F), parame);
    paramCanvas.drawText("MACD(12,26,9)", f1, f2, localPaint1);
  }
  
  private void a(f paramf, Canvas paramCanvas)
  {
    if (paramf == null)
    {
      paramf = this.e.getShowOHLCMAArray();
      if (paramf == null) {
        break label16;
      }
      label16:
      while (this.e.f <= 0) {
        return;
      }
    }
    for (Object localObject = (f)paramf.get(this.e.f - 1);; localObject = paramf)
    {
      float f1 = getChartStartX() + a.a(getContext(), 5.0F);
      float f8 = getFontSize() + a.a(getContext(), 5.0F);
      Paint localPaint1 = a(getFontSize(), Paint.Align.LEFT);
      localPaint1.setTextSize(a.a(getContext(), 10.0F));
      String str1 = this.e.getKlineType();
      paramf = "前复权";
      if (str1.equals("normal"))
      {
        paramf = "不复权";
        label132:
        if (!a.c(this.e.getPeriod())) {
          break label593;
        }
        paramf = "";
      }
      label593:
      for (;;)
      {
        float f3 = localPaint1.measureText(paramf);
        float f6;
        String str2;
        float f4;
        float f5;
        float f2;
        if ((getType().equals("big")) || (this.b))
        {
          f6 = localPaint1.measureText(paramf) + f1 + a.a(getContext(), 10.0F);
          str2 = String.format("MA5 %s", new Object[] { a.a(this.h.i, ((f)localObject).e) });
          f3 = localPaint1.measureText(str2) + f6 + a.a(getContext(), 10.0F);
          str1 = String.format("MA10 %s", new Object[] { a.a(this.h.i, ((f)localObject).f) });
          f4 = localPaint1.measureText(str1) + f3 + a.a(getContext(), 10.0F);
          localObject = String.format("MA20 %s", new Object[] { a.a(this.h.i, ((f)localObject).g) });
          f5 = localPaint1.measureText((String)localObject);
          f2 = f4;
          float f7 = f5 + f4;
          f5 = f3;
          f4 = f2;
          f3 = f7;
        }
        for (;;)
        {
          Paint localPaint2 = new Paint();
          localPaint2.setColor(getResources().getColor(this.a.getResourceId(6, 0)));
          localPaint2.setAlpha(204);
          paramCanvas.drawRect(f1, 3.0F, f3, f8 + a.a(getContext(), 5.0F), localPaint2);
          paramCanvas.drawText(paramf, f1, f8, localPaint1);
          if ((!getType().equals("big")) && (!this.b)) {
            break;
          }
          localPaint1.setColor(getResources().getColor(c.chart_ma5_color));
          paramCanvas.drawText(str2, f6, f8, localPaint1);
          localPaint1.setColor(getResources().getColor(c.chart_ma10_color));
          paramCanvas.drawText(str1, f5, f8, localPaint1);
          localPaint1.setColor(getResources().getColor(c.chart_ma20_color));
          paramCanvas.drawText((String)localObject, f4, f8, localPaint1);
          return;
          if (!str1.equals("after")) {
            break label132;
          }
          paramf = "后复权";
          break label132;
          localObject = "";
          str1 = "";
          str2 = "";
          f4 = f1;
          f5 = f1;
          f2 = f1;
          f3 = f1 + f3;
          f6 = f2;
        }
      }
    }
  }
  
  private void a(j paramj, Canvas paramCanvas)
  {
    if (getType().equals("small")) {
      return;
    }
    float f1 = getChartStartX();
    float f2 = a.a(getContext(), 5.0F);
    float f3 = getTopChartHeight();
    float f4 = getTopBottomGap();
    float f5 = getFontSize();
    paramj = String.format("成交量：%s", new Object[] { (int)paramj.a });
    Paint localPaint = a(Paint.Align.LEFT);
    localPaint.setTextSize(a.a(getContext(), 10.0F));
    paramCanvas.drawText(paramj, f1 + f2, f3 + f4 + f5, localPaint);
  }
  
  private void b(float paramFloat1, float paramFloat2, Canvas paramCanvas)
  {
    float f4 = getTopBottomGap();
    float f2 = paramFloat1 - f4 / 2.0F;
    float f1 = f4 / 2.0F + paramFloat1;
    float f3 = getChartStartX();
    paramFloat1 = f2;
    if (f2 < 1.0F)
    {
      f1 = 1.0F + f4;
      paramFloat1 = 1.0F;
    }
    a(1.0F, paramFloat1, f1, f3, paramCanvas);
    Paint localPaint = a(Paint.Align.RIGHT);
    localPaint.setTextSize(a.a(getContext(), 10.0F));
    f1 = getChartStartX();
    f2 = a.a(getContext(), 3.0F);
    f3 = a.a(getContext(), 10.0F);
    paramCanvas.drawText(a.a(this.h.i, paramFloat2), f1 - f2, paramFloat1 + f3, localPaint);
  }
  
  public h getStock()
  {
    return this.h;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    a();
    if (this.h == null) {
      return;
    }
    int j;
    Object localObject2;
    Object localObject1;
    float f1;
    float f2;
    float f3;
    if ((getChartType().equals("kline")) && (this.e != null))
    {
      if (!this.b) {
        break label903;
      }
      j = this.e.b(this.c);
      localObject2 = (f)this.e.getShowOHLCMAArray().get(j);
      a((f)localObject2, paramCanvas);
      if (this.e.getIndicator().equals("volume")) {
        a((j)this.e.getShowVolumeArray().get(j), paramCanvas);
      }
      if (this.e.getIndicator().equals("macd")) {
        a((e)this.e.getShowMACDArray().get(j), paramCanvas);
      }
      localObject1 = this.e;
      f1 = ((KlineChartView)localObject1).b / 2.0F;
      f2 = ((KlineChartView)localObject1).c;
      f3 = f1 + (((KlineChartView)localObject1).b + f2) * j;
      f2 = this.d;
      if ((f2 <= 0.0F) || (f2 >= this.e.getTopChartHeight())) {
        break label896;
      }
      f1 = f2;
      if (getType().equals("big"))
      {
        localObject1 = this.e;
        f1 = (((KlineChartView)localObject1).getTopChartHeight() - f2) / ((KlineChartView)localObject1).h;
        b(f2, ((KlineChartView)localObject1).g + f1, paramCanvas);
        f1 = f2;
      }
      label265:
      a(f3, f1, paramCanvas);
      localObject1 = a.a(((f)localObject2).j, "MM-DD hh:mm");
      if ((!getPeriod().equals("1day")) && (!getPeriod().equals("1week")) && (!getPeriod().equals("1month"))) {
        break label944;
      }
      localObject1 = a.a(((f)localObject2).j, "YYYY-MM-DD");
    }
    label521:
    label896:
    label903:
    label934:
    label944:
    for (;;)
    {
      f3 += getChartStartX();
      localObject2 = a(Paint.Align.CENTER);
      ((Paint)localObject2).setTextSize(a.a(getContext(), 10.0F));
      float f7 = ((Paint)localObject2).measureText((String)localObject1) + a.a(getContext(), 10.0F);
      float f4 = f3 - f7 / 2.0F;
      float f5 = getTopChartHeight();
      float f6 = getTopBottomGap();
      f2 = f7 / 2.0F + f3;
      f1 = f4;
      if (f4 < getChartStartX())
      {
        f1 = getChartStartX();
        f2 = f1 + f7;
        f3 = f7 / 2.0F + f1;
      }
      f4 = getChartWidth() + getChartStartX();
      if (f2 > f4)
      {
        f2 = f4 - 1.0F;
        f1 = f2 - f7;
        f3 = f7 / 2.0F + f1;
      }
      for (;;)
      {
        a(f1, f5, f5 + f6, f2, paramCanvas);
        paramCanvas.drawText((String)localObject1, f3, a.a(getContext(), 10.0F) + f5, (Paint)localObject2);
        if ((getChartType().equals("stock")) && (this.f != null) && (this.b))
        {
          j = this.f.b(this.c);
          localObject1 = this.f.a(j);
          if (localObject1 != null)
          {
            a(this.f.b(j), paramCanvas);
            f5 = this.f.getPerWidth();
            f6 = j;
            f3 = this.d;
            if ((f3 <= 0.0F) || (f3 >= this.f.getTopChartHeight())) {
              break label934;
            }
            f1 = ((i)localObject1).a;
            f7 = (f1 - this.f.getLastClose()) / this.f.getLastClose();
            if (getType().equals("big"))
            {
              b(f3, f1, paramCanvas);
              float f10 = getTopBottomGap();
              float f8 = getChartStartX() + getChartWidth();
              f4 = f3 - f10 / 2.0F;
              f2 = f10 / 2.0F + f3;
              float f9 = getViewWidth();
              f1 = f4;
              if (f4 < 1.0F)
              {
                f1 = 1.0F;
                f2 = 1.0F + f10;
              }
              a(f8, f1, f2, f9 - 1.0F, paramCanvas);
              localObject1 = a(Paint.Align.LEFT);
              ((Paint)localObject1).setTextSize(a.a(getContext(), 10.0F));
              f2 = a.a(getContext(), 3.0F);
              f4 = a.a(getContext(), 10.0F);
              paramCanvas.drawText(String.format("%.2f%%", new Object[] { Float.valueOf(f7 * 100.0F) }), f8 + f2, f1 + f4, (Paint)localObject1);
            }
          }
        }
        for (f1 = f3;; f1 = -1.0F)
        {
          a(f5 * f6, f1, paramCanvas);
          if ((!getChartType().equals("fund")) || (!this.b)) {
            break;
          }
          j = this.g.b(this.c);
          f1 = this.g.getPerWidth();
          a(j * f1, this.d, paramCanvas);
          return;
          f1 = -1.0F;
          break label265;
          a(null, paramCanvas);
          if (!this.e.getIndicator().equals("macd")) {
            break label521;
          }
          a(null, paramCanvas);
          break label521;
        }
      }
    }
  }
  
  public void setFundChartView(FundChartView paramFundChartView)
  {
    this.g = paramFundChartView;
  }
  
  public void setIsOnPress(boolean paramBoolean)
  {
    this.b = paramBoolean;
  }
  
  public void setKlineChartView(KlineChartView paramKlineChartView)
  {
    this.e = paramKlineChartView;
    this.i = getDecimalFormat();
  }
  
  public void setPressEventX(float paramFloat)
  {
    this.c = paramFloat;
  }
  
  public void setPressEventY(float paramFloat)
  {
    this.d = paramFloat;
  }
  
  public void setStock(h paramh)
  {
    this.h = paramh;
  }
  
  public void setStockChartView(StockChartView paramStockChartView)
  {
    this.f = paramStockChartView;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stockchart\view\PressInfoView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */