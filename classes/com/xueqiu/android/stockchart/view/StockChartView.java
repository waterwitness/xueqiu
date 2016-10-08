package com.xueqiu.android.stockchart.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Shader.TileMode;
import android.util.AttributeSet;
import com.xueqiu.android.stockchart.c;
import com.xueqiu.android.stockchart.e.h;
import com.xueqiu.android.stockchart.e.i;
import com.xueqiu.android.stockchart.e.j;
import java.util.ArrayList;
import java.util.Locale;

public class StockChartView
  extends ChartView
{
  public ArrayList<com.xueqiu.android.stockchart.e.a> b;
  public float c = 0.0F;
  public float d;
  public float e;
  private ArrayList<com.xueqiu.android.stockchart.e.a> f;
  private h g;
  private int h;
  private float i = 40.0F;
  
  public StockChartView(Context paramContext)
  {
    super(paramContext);
  }
  
  public StockChartView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private void b(Canvas paramCanvas)
  {
    float f5 = com.xueqiu.android.stockchart.f.a.a(this.f)[0];
    float f6 = getBottomChartHeight() / f5;
    float f1 = getChartStartX();
    Paint localPaint = new Paint();
    localPaint.setStyle(Paint.Style.STROKE);
    localPaint.setStrokeWidth(2.0F);
    localPaint.setAntiAlias(true);
    float f2 = 0.0F;
    int j;
    int k;
    label85:
    float f4;
    float f3;
    if (this.f.size() <= this.b.size())
    {
      j = this.f.size();
      k = 0;
      if (k >= j) {
        break label256;
      }
      if (k >= this.f.size()) {
        break label373;
      }
      j localj = (j)this.f.get(k);
      f4 = ((i)this.b.get(k)).a;
      f3 = f1;
      if (localj != null)
      {
        f2 = f4 - f2;
        if (k == 0) {
          f2 = f4 - getLastClose();
        }
        f3 = f2;
        if (f2 == 0.0F) {
          f3 = 1.0F;
        }
        int m = a(f3);
        f2 = getViewHeight();
        f3 = localj.a;
        localPaint.setColor(m);
        paramCanvas.drawLine(f1, f2 - f3 * f6, f1, getViewHeight() - 1.0F, localPaint);
        f3 = f1 + this.c;
      }
      f2 = f4;
      f1 = f3;
    }
    label256:
    label373:
    for (;;)
    {
      k += 1;
      break label85;
      j = this.b.size();
      break;
      localPaint = a(Paint.Align.LEFT);
      localPaint.setTextSize(com.xueqiu.android.stockchart.f.a.a(getContext(), 10.0F));
      f1 = getChartStartX();
      f2 = getTopChartHeight();
      f3 = getTopBottomGap();
      f4 = com.xueqiu.android.stockchart.f.a.a(getContext(), 10.0F);
      if (getType().equals("big")) {
        localPaint.setTextAlign(Paint.Align.RIGHT);
      }
      for (f1 -= com.xueqiu.android.stockchart.f.a.a(getContext(), 2.0F);; f1 += com.xueqiu.android.stockchart.f.a.a(getContext(), 5.0F))
      {
        paramCanvas.drawText(com.xueqiu.android.stockchart.f.a.a((int)f5), f1, f2 + f3 + f4, localPaint);
        return;
      }
    }
  }
  
  private void c(Canvas paramCanvas)
  {
    float f1 = getTopChartHeight();
    float f3 = getChartStartX();
    getChartWidth();
    float f2 = getChartWidth() / 5.0F;
    f3 += com.xueqiu.android.stockchart.f.a.a(getContext(), 5.0F);
    com.xueqiu.android.stockchart.f.a.a(getContext(), 5.0F);
    Paint localPaint1 = new Paint();
    localPaint1.setColor(getResources().getColor(c.chart_text_color));
    localPaint1.setAntiAlias(true);
    localPaint1.setTextSize(getFontSize());
    Paint localPaint2 = getSplitLinePaint();
    float f4 = com.xueqiu.android.stockchart.f.a.a(getContext(), 10.0F);
    int j = 0;
    while (j < 5)
    {
      Object localObject = a(b(j * f2 + f3 + this.c));
      if (localObject == null) {
        break;
      }
      localObject = com.xueqiu.android.stockchart.f.a.a(((i)localObject).b, "MM-DD");
      float f5 = j;
      float f6 = f2 / 2.0F;
      localPaint1.setTextAlign(Paint.Align.CENTER);
      paramCanvas.drawText((String)localObject, f5 * f2 + f3 + f6, f1 + f4, localPaint1);
      if (j != 0)
      {
        f5 = f3 + j * f2;
        paramCanvas.drawLine(f5, 1.0F, f5, f1, localPaint2);
      }
      j += 1;
    }
  }
  
  private void d(Canvas paramCanvas)
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
    if (getPeriod() != "1m") {}
    for (String str = "YYYY-MM-DD";; str = "MM-DD")
    {
      int j = 0;
      while (j < 5)
      {
        int k = b(j * f3 + f2 + this.c);
        Object localObject = a(k);
        if (localObject == null) {
          break;
        }
        localObject = com.xueqiu.android.stockchart.f.a.a(((i)localObject).b, str);
        float f5 = this.c;
        f5 = f2 + k * f5;
        localPaint1.setTextAlign(Paint.Align.LEFT);
        paramCanvas.drawText((String)localObject, f5, f1 + f4, localPaint1);
        paramCanvas.drawLine(f5, 1.0F, f5, f1, localPaint2);
        j += 1;
      }
      return;
    }
  }
  
  private int getCenterTimeIndex()
  {
    if (this.g == null) {}
    int j;
    do
    {
      return 120;
      j = this.g.c;
      if (com.xueqiu.android.stockchart.f.a.f(j)) {
        return 180;
      }
    } while (!com.xueqiu.android.stockchart.f.a.g(j));
    return 150;
  }
  
  private String[] getSplitTimesFor1d()
  {
    if (this.g == null) {
      return new String[] { "09:30", "11:30", "15:00" };
    }
    int j = this.g.c;
    if (com.xueqiu.android.stockchart.f.a.f(j)) {
      return new String[] { "09:30", "12:30", "16:00" };
    }
    if (com.xueqiu.android.stockchart.f.a.g(j)) {
      return new String[] { "09:30", "12:00", "16:00" };
    }
    return new String[] { "09:30", "11:30", "15:00" };
  }
  
  public final i a(int paramInt)
  {
    if (paramInt < this.b.size()) {
      return (i)this.b.get(paramInt);
    }
    return null;
  }
  
  public final int b(float paramFloat)
  {
    int k = Math.round((paramFloat - getChartStartX()) / this.c);
    int j = k;
    if (k >= this.b.size()) {
      j = this.b.size() - 1;
    }
    k = j;
    if (j < 0) {
      k = 0;
    }
    return k;
  }
  
  public final j b(int paramInt)
  {
    if (paramInt < this.f.size()) {
      return (j)this.f.get(paramInt);
    }
    return null;
  }
  
  public float getCurrentX()
  {
    return this.b.size() * this.c + getChartStartX();
  }
  
  public float getLastClose()
  {
    if (getPeriod().equals("1d")) {
      return this.g.d;
    }
    int j = 0;
    while (j < this.b.size())
    {
      i locali = (i)this.b.get(j);
      if (locali.a != 0.0F) {
        return locali.a;
      }
      j += 1;
    }
    return 0.0F;
  }
  
  public float getPerWidth()
  {
    return this.c;
  }
  
  public float getPriceChartMin()
  {
    return this.e;
  }
  
  public float getPriceChartScale()
  {
    return this.d;
  }
  
  public h getStock()
  {
    return this.g;
  }
  
  public ArrayList<com.xueqiu.android.stockchart.e.a> getTimesArray()
  {
    return this.b;
  }
  
  public int getTimesSize()
  {
    return this.b.size();
  }
  
  public ArrayList<com.xueqiu.android.stockchart.e.a> getVolumeArray()
  {
    return this.f;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    a();
    a(paramCanvas);
    int j;
    Object localObject1;
    if (this.g != null)
    {
      j = this.g.c;
      localObject1 = getPeriod();
      if (!((String)localObject1).equals("1d")) {
        break label113;
      }
      if (!com.xueqiu.android.stockchart.f.a.f(j)) {
        break label85;
      }
      this.h = 391;
    }
    for (;;)
    {
      this.c = (getChartWidth() / (this.h - 1));
      if (this.g != null) {
        break;
      }
      return;
      label85:
      if (com.xueqiu.android.stockchart.f.a.g(j))
      {
        this.h = 332;
      }
      else
      {
        this.h = 242;
        continue;
        label113:
        if (((String)localObject1).equals("5d"))
        {
          if (com.xueqiu.android.stockchart.f.a.f(j)) {
            this.h = 200;
          } else if (com.xueqiu.android.stockchart.f.a.g(j)) {
            this.h = 175;
          } else {
            this.h = 130;
          }
        }
        else if (this.b != null) {
          this.h = this.b.size();
        }
      }
    }
    String str;
    float f6;
    float f3;
    float f2;
    float f1;
    float f5;
    float f4;
    if (this.b != null)
    {
      str = getPeriod();
      f6 = getTopChartHeight();
      localObject1 = com.xueqiu.android.stockchart.f.a.a(this.b);
      f3 = localObject1[0];
      f2 = localObject1[1];
      if (this.g.b == null)
      {
        j = 1;
        if (j != 0)
        {
          f3 = 10.0F;
          f2 = 12.0F;
          this.g.a("11");
        }
        f1 = getLastClose();
        if (!str.equals("1d"))
        {
          f5 = f3;
          f4 = f2;
          if (!str.equals("5d")) {
            break label1995;
          }
        }
        if ((f3 != 0.0F) || (f2 != 0.0F)) {
          break label1596;
        }
        if (f1 != 0.0F) {
          break label2008;
        }
        f1 = this.g.d;
      }
    }
    label352:
    label460:
    label639:
    label680:
    label780:
    label820:
    label1055:
    label1419:
    label1596:
    label1791:
    label1799:
    label1807:
    label1815:
    label1823:
    label1852:
    label1875:
    label1982:
    label1995:
    label2008:
    for (;;)
    {
      f4 = f1;
      j = 1;
      f3 = f1 + 0.15F * f1;
      f2 = f1 - 0.15F * f1;
      f1 = f4;
      for (;;)
      {
        f4 = f3 - f2;
        float f7 = f2 - f4 * 0.06F;
        float f8 = f6 / (0.06F * f4 + f3 - f7);
        this.e = f7;
        this.d = f8;
        float f11 = getTopChartHeight();
        float f9 = getChartStartX();
        float f10 = f9 + getChartWidth();
        Object localObject2;
        Object localObject4;
        Object localObject3;
        int n;
        int i1;
        int m;
        if (getType().equals("big"))
        {
          f5 = com.xueqiu.android.stockchart.f.a.a(getContext(), 2.0F);
          f4 = com.xueqiu.android.stockchart.f.a.a(getContext(), 2.0F) + f10;
          f5 = f9 - f5;
          float f12 = f11 - (f3 - f7) * f8;
          f11 -= (f2 - f7) * f8;
          localObject1 = getSplitLinePaint();
          paramCanvas.drawLine(f9, f12, f10, f12, (Paint)localObject1);
          paramCanvas.drawLine(f9, f11, f10, f11, (Paint)localObject1);
          localObject2 = new Paint();
          ((Paint)localObject2).setAntiAlias(true);
          ((Paint)localObject2).setColor(-65536);
          ((Paint)localObject2).setTextSize(getFontSize());
          if (this.g.b != null)
          {
            localObject4 = com.xueqiu.android.stockchart.f.a.a(this.g.i, f3);
            f3 -= f1;
            localObject3 = String.format(Locale.CHINA, "%.2f%%", new Object[] { Float.valueOf(f3 / f1 * 100.0F) });
            ((Paint)localObject2).setColor(a(f3));
            if (!getType().equals("big")) {
              break label1791;
            }
            localObject1 = Paint.Align.RIGHT;
            ((Paint)localObject2).setTextAlign((Paint.Align)localObject1);
            paramCanvas.drawText((String)localObject4, f5, getFontSize() + f12, (Paint)localObject2);
            if (!getType().equals("big")) {
              break label1799;
            }
            localObject1 = Paint.Align.LEFT;
            ((Paint)localObject2).setTextAlign((Paint.Align)localObject1);
            paramCanvas.drawText((String)localObject3, f4, getFontSize() + f12, (Paint)localObject2);
            f3 = f2 - f1;
            localObject3 = String.format(Locale.CHINA, "%.2f%%", new Object[] { Float.valueOf(f3 / f1 * 100.0F) });
            ((Paint)localObject2).setColor(a(f3));
            localObject4 = com.xueqiu.android.stockchart.f.a.a(this.g.i, f2);
            if (!getType().equals("big")) {
              break label1807;
            }
            localObject1 = Paint.Align.RIGHT;
            ((Paint)localObject2).setTextAlign((Paint.Align)localObject1);
            paramCanvas.drawText((String)localObject4, f5, f11 - 3.0F, (Paint)localObject2);
            if (!getType().equals("big")) {
              break label1815;
            }
            localObject1 = Paint.Align.LEFT;
            ((Paint)localObject2).setTextAlign((Paint.Align)localObject1);
            paramCanvas.drawText((String)localObject3, f4, f11 - 3.0F, (Paint)localObject2);
          }
          if (!getPeriod().equals("1d")) {
            break label1823;
          }
          f1 = getTopChartHeight();
          f2 = getChartStartX();
          f3 = getChartWidth();
          f4 = com.xueqiu.android.stockchart.f.a.a(getContext(), 5.0F);
          f5 = com.xueqiu.android.stockchart.f.a.a(getContext(), 5.0F);
          localObject1 = new Paint();
          ((Paint)localObject1).setColor(getResources().getColor(c.chart_text_color));
          ((Paint)localObject1).setAntiAlias(true);
          ((Paint)localObject1).setTextSize(getFontSize());
          f9 = f1 + com.xueqiu.android.stockchart.f.a.a(getContext(), 10.0F);
          f10 = getChartStartX() + this.c * getCenterTimeIndex();
          localObject2 = getSplitTimesFor1d();
          ((Paint)localObject1).setTextAlign(Paint.Align.LEFT);
          paramCanvas.drawText(localObject2[0], f2 + f4, f9, (Paint)localObject1);
          ((Paint)localObject1).setTextAlign(Paint.Align.CENTER);
          paramCanvas.drawText(localObject2[1], f10, f9, (Paint)localObject1);
          ((Paint)localObject1).setTextAlign(Paint.Align.RIGHT);
          paramCanvas.drawText(localObject2[2], f3 + f2 - f5, f9, (Paint)localObject1);
          paramCanvas.drawLine(f10, 1.0F, f10, f1, getSplitLinePaint());
          if ((str.equals("1d")) || (str.equals("5d")))
          {
            f1 = getTopChartHeight();
            k = getContext().getResources().getColor(c.chart_last_close_color);
            if (this.g != null)
            {
              localObject1 = new Paint();
              ((Paint)localObject1).setStyle(Paint.Style.STROKE);
              ((Paint)localObject1).setColor(k);
              ((Paint)localObject1).setStrokeWidth(0.0F);
              f1 -= (getLastClose() - f7) * f8;
              localObject2 = new Path();
              f2 = getChartStartX();
              f3 = getChartStartX();
              f4 = getChartWidth();
              ((Path)localObject2).moveTo(f2, f1);
              ((Path)localObject2).lineTo(f3 + f4, f1);
              ((Paint)localObject1).setPathEffect(new DashPathEffect(new float[] { 5.0F, 5.0F, 5.0F, 5.0F }, 1.0F));
              paramCanvas.drawPath((Path)localObject2, (Paint)localObject1);
            }
          }
          if (j != 0) {
            break label1982;
          }
          f3 = getChartStartX();
          n = getContext().getResources().getColor(c.chart_line_color);
          j = getContext().getResources().getColor(c.chart_bg_color_start);
          k = getContext().getResources().getColor(c.chart_bg_color_end);
          i1 = getContext().getResources().getColor(c.chart_average_color);
          localObject1 = new Paint();
          ((Paint)localObject1).setColor(n);
          ((Paint)localObject1).setStyle(Paint.Style.FILL);
          ((Paint)localObject1).setAntiAlias(true);
          ((Paint)localObject1).setShader(new LinearGradient(0.0F, 0.0F, 0.0F, getHeight(), j, k, Shader.TileMode.CLAMP));
          localObject2 = new Paint();
          ((Paint)localObject2).setStyle(Paint.Style.STROKE);
          ((Paint)localObject2).setStrokeWidth(2.0F);
          ((Paint)localObject2).setAntiAlias(true);
          localObject3 = new Path();
          localObject4 = new Path();
          f1 = 0.0F;
          j = 0;
          m = 0;
          if (m >= this.b.size()) {
            break label1875;
          }
          k = j;
          f2 = f1;
          f4 = f3;
          if (m < this.b.size())
          {
            i locali = (i)this.b.get(m);
            k = j;
            f2 = f1;
            f4 = f3;
            if (locali != null)
            {
              k = j;
              f2 = f1;
              if (locali.a != 0.0F)
              {
                f2 = f6 - (locali.a - f7) * f8;
                f4 = f6 - (locali.c - f7) * f8;
                if ((m <= 0) || (j == 0)) {
                  break label1852;
                }
                ((Path)localObject3).lineTo(f3, f2);
                ((Path)localObject4).lineTo(f3, f4);
                f2 = f1;
              }
            }
          }
        }
        for (int k = j;; k = 1)
        {
          f4 = f3 + this.c;
          m += 1;
          j = k;
          f1 = f2;
          f3 = f4;
          break label1419;
          j = 0;
          break;
          f4 = f3;
          if (f1 > f3) {
            f4 = f1;
          }
          f5 = f2;
          if (f1 < f2) {
            f5 = f1;
          }
          f3 = f4;
          f2 = f5;
          if (f4 == f5)
          {
            f3 = 0.15F * f1 + f1;
            f2 = f1 - 0.15F * f1;
          }
          f5 = f3;
          f4 = f2;
          if (!com.xueqiu.android.stockchart.f.a.e(this.g.c)) {
            break label1995;
          }
          f4 = f1;
          if (str.equals("5d"))
          {
            f4 = f1;
            if (f3 == f2)
            {
              f4 = f1;
              if (f3 == f1) {
                f4 = this.g.d;
              }
            }
          }
          f2 = Math.max(Math.abs(f2 - f4), Math.abs(f3 - f4));
          f1 = f4;
          j = 0;
          f3 = f4 + f2;
          f2 = f4 - f2;
          break label352;
          f5 = com.xueqiu.android.stockchart.f.a.a(getContext(), 5.0F);
          f4 = f10 - com.xueqiu.android.stockchart.f.a.a(getContext(), 5.0F);
          f5 = f9 + f5;
          break label460;
          localObject1 = Paint.Align.LEFT;
          break label639;
          localObject1 = Paint.Align.RIGHT;
          break label680;
          localObject1 = Paint.Align.LEFT;
          break label780;
          localObject1 = Paint.Align.RIGHT;
          break label820;
          if (getPeriod().equals("5d"))
          {
            c(paramCanvas);
            break label1055;
          }
          d(paramCanvas);
          break label1055;
          ((Path)localObject3).moveTo(f3, f2);
          ((Path)localObject4).moveTo(f3, f4);
        }
        ((Paint)localObject2).setColor(n);
        paramCanvas.drawPath((Path)localObject3, (Paint)localObject2);
        if ((com.xueqiu.android.stockchart.f.a.c(this.g.c)) && ((str.equals("1d")) || (str.equals("5d"))))
        {
          ((Paint)localObject2).setColor(i1);
          paramCanvas.drawPath((Path)localObject4, (Paint)localObject2);
        }
        ((Path)localObject3).lineTo(f3 - this.c, f6);
        ((Path)localObject3).lineTo(getChartStartX(), f6);
        ((Path)localObject3).lineTo(getChartStartX(), f1);
        paramCanvas.drawPath((Path)localObject3, (Paint)localObject1);
        if (this.f == null) {
          break;
        }
        b(paramCanvas);
        return;
        j = 0;
        f3 = f5;
        f2 = f4;
      }
    }
  }
  
  public void setStock(h paramh)
  {
    this.g = paramh;
  }
  
  public void setTimesArray(ArrayList<com.xueqiu.android.stockchart.e.a> paramArrayList)
  {
    this.b = paramArrayList;
  }
  
  public void setVolumeArray(ArrayList<com.xueqiu.android.stockchart.e.a> paramArrayList)
  {
    this.f = paramArrayList;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stockchart\view\StockChartView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */