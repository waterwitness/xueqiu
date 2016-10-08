package com.xueqiu.android.stockchart.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.util.AttributeSet;
import android.util.Pair;
import com.xueqiu.android.stockchart.c;
import com.xueqiu.android.stockchart.e.e;
import com.xueqiu.android.stockchart.e.f;
import com.xueqiu.android.stockchart.e.h;
import com.xueqiu.android.stockchart.e.j;
import java.util.ArrayList;
import java.util.List;

public class KlineChartView
  extends ChartView
{
  float b = com.xueqiu.android.stockchart.f.a.a(getContext(), this.i);
  float c = com.xueqiu.android.stockchart.f.a.a(getContext(), 1.0F);
  public ArrayList<com.xueqiu.android.stockchart.e.a> d;
  public List<com.xueqiu.android.stockchart.e.a> e = new ArrayList();
  public int f = 0;
  public float g;
  public float h;
  private float i = 5.0F;
  private float j = this.b;
  private ArrayList<com.xueqiu.android.stockchart.e.a> k;
  private ArrayList<com.xueqiu.android.stockchart.e.a> l;
  private List<com.xueqiu.android.stockchart.e.a> m = new ArrayList();
  private List<com.xueqiu.android.stockchart.e.a> n = new ArrayList();
  private h o;
  private String p;
  private String q = "volume";
  private String r = "before";
  private int s;
  private int t;
  private int u = 0;
  private int v = 0;
  private boolean w = false;
  
  public KlineChartView(Context paramContext)
  {
    super(paramContext);
  }
  
  public KlineChartView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private void a(String paramString, float paramFloat1, float paramFloat2, Canvas paramCanvas)
  {
    float f3 = paramFloat1 + getChartStartX();
    float f1 = com.xueqiu.android.stockchart.f.a.a(getContext(), 100.0F);
    float f2 = com.xueqiu.android.stockchart.f.a.a(getContext(), 20.0F);
    paramFloat1 = f3 + f2;
    Object localObject = Paint.Align.LEFT;
    if (f1 + f3 > getChartStartX() + getChartWidth())
    {
      f1 = f3 - f2;
      localObject = Paint.Align.RIGHT;
      paramFloat1 = f1;
      f2 = paramFloat1;
      paramFloat1 = f1;
    }
    for (;;)
    {
      Paint localPaint = getSplitLinePaint();
      localPaint.setColor(-7829368);
      paramCanvas.drawLine(f3, paramFloat2, paramFloat1, paramFloat2, localPaint);
      localObject = a(10.0F, (Paint.Align)localObject);
      paramCanvas.drawText(paramString, f2, com.xueqiu.android.stockchart.f.a.a(getContext(), 8.0F) / 2.0F + paramFloat2, (Paint)localObject);
      return;
      f1 = paramFloat1;
      f2 = f1;
    }
  }
  
  private ArrayList<Pair<String, Float>> b(int paramInt)
  {
    float f1 = this.b / 2.0F;
    ArrayList localArrayList = new ArrayList();
    f1 += 1.0F;
    int i1 = 0;
    if (i1 < this.f)
    {
      String str3 = ((f)this.m.get(i1)).j;
      int i2 = Integer.valueOf(com.xueqiu.android.stockchart.f.a.a(str3, "mm")).intValue();
      String str1 = com.xueqiu.android.stockchart.f.a.a(str3, "hh:mm");
      String str2;
      if (paramInt == 15) {
        if ((i2 % paramInt == 0) && (!str1.equals("15:00")) && (!str1.equals("13:00")))
        {
          str2 = str1;
          if (str1.equals("09:30")) {
            str2 = com.xueqiu.android.stockchart.f.a.a(str3, "MM-DD");
          }
          localArrayList.add(new Pair(str2, Float.valueOf(f1)));
        }
      }
      for (;;)
      {
        f1 += getCandleGap() + this.b;
        i1 += 1;
        break;
        if ((str1.equals("09:35")) || (str1.equals("11:00")) || (str1.equals("14:00")))
        {
          str2 = str1;
          if (str1.equals("09:35")) {
            str2 = com.xueqiu.android.stockchart.f.a.a(str3, "MM-DD");
          }
          localArrayList.add(new Pair(str2, Float.valueOf(f1)));
        }
      }
    }
    return localArrayList;
  }
  
  private void b(Canvas paramCanvas)
  {
    if (this.l == null) {
      return;
    }
    this.e.clear();
    getShowData();
    int i2 = this.e.size();
    float f4 = com.xueqiu.android.stockchart.f.a.a(this.e)[0];
    float f5 = getBottomChartHeight() / f4;
    Paint localPaint = new Paint();
    localPaint.setStyle(Paint.Style.STROKE);
    localPaint.setAntiAlias(true);
    float f1 = this.b / 2.0F;
    float f3 = getChartStartX() + (1.0F + f1);
    int i1 = 0;
    f localf;
    for (Object localObject = null; i1 < i2; localObject = localf)
    {
      j localj = (j)this.e.get(i1);
      localf = (f)this.m.get(i1);
      float f6 = getViewHeight();
      float f7 = localj.a;
      float f8 = localf.d;
      f2 = f8 - localf.a;
      f1 = f2;
      if (f2 == 0.0F)
      {
        if (localObject != null) {
          f2 = f8 - ((f)localObject).d;
        }
        f1 = f2;
        if (f2 == 0.0F) {
          f1 = 1.0F;
        }
      }
      localPaint.setColor(a(f1));
      localPaint.setStrokeWidth(this.b);
      paramCanvas.drawLine(f3, f6 - f7 * f5, f3, getViewHeight() - 1.0F, localPaint);
      f3 += getCandleGap() + this.b;
      i1 += 1;
    }
    localObject = a(Paint.Align.LEFT);
    ((Paint)localObject).setTextSize(com.xueqiu.android.stockchart.f.a.a(getContext(), 10.0F));
    f1 = getChartStartX();
    float f2 = getTopChartHeight();
    f3 = getTopBottomGap();
    f5 = com.xueqiu.android.stockchart.f.a.a(getContext(), 10.0F);
    if (getType() == "big") {
      ((Paint)localObject).setTextAlign(Paint.Align.RIGHT);
    }
    for (f1 -= com.xueqiu.android.stockchart.f.a.a(getContext(), 2.0F);; f1 += com.xueqiu.android.stockchart.f.a.a(getContext(), 5.0F))
    {
      paramCanvas.drawText(com.xueqiu.android.stockchart.f.a.a((int)f4), f1, f2 + f3 + f5, (Paint)localObject);
      return;
    }
  }
  
  private void c(Canvas paramCanvas)
  {
    if (this.k == null) {
      return;
    }
    this.n.clear();
    getShowData();
    int i2 = this.n.size();
    Object localObject = com.xueqiu.android.stockchart.f.a.a(this.n);
    float f1 = localObject[0];
    float f2 = localObject[1];
    f2 = Math.max(Math.abs(f1), Math.abs(f2));
    float f3 = f2 * -1.0F;
    float f5 = getBottomChartHeight() / (f2 - f3);
    localObject = new Path();
    Path localPath = new Path();
    Paint localPaint = getSplitLinePaint();
    f1 = this.b / 2.0F;
    float f4 = getViewHeight() - getBottomChartHeight() / 2.0F;
    paramCanvas.drawLine(getChartStartX(), f4, getChartWidth(), f4, localPaint);
    localPaint.setStrokeWidth(this.b);
    f1 = 1.0F + f1 + getChartStartX();
    int i1 = 0;
    if (i1 < i2)
    {
      e locale = (e)this.n.get(i1);
      f6 = getViewHeight() - (locale.a - f3) * f5;
      f7 = getViewHeight() - (locale.b - f3) * f5;
      f8 = getViewHeight();
      f9 = locale.c;
      localPaint.setColor(a(locale.c));
      paramCanvas.drawLine(f1, f8 - (f9 - f3) * f5, f1, f4, localPaint);
      if (i1 == 0)
      {
        ((Path)localObject).moveTo(f1, f6);
        localPath.moveTo(f1, f7);
      }
      for (;;)
      {
        f1 += getCandleGap() + this.b;
        i1 += 1;
        break;
        ((Path)localObject).lineTo(f1, f6);
        localPath.lineTo(f1, f7);
      }
    }
    localPaint.setStrokeWidth(2.0F);
    localPaint.setColor(getResources().getColor(c.chart_dif_color));
    paramCanvas.drawPath((Path)localObject, localPaint);
    localPaint.setColor(getResources().getColor(c.chart_dea_color));
    paramCanvas.drawPath(localPath, localPaint);
    localObject = a(Paint.Align.RIGHT);
    ((Paint)localObject).setTextSize(com.xueqiu.android.stockchart.f.a.a(getContext(), 10.0F));
    f1 = getChartStartX() - com.xueqiu.android.stockchart.f.a.a(getContext(), 3.0F);
    f5 = getViewHeight();
    float f6 = getBottomChartHeight();
    float f7 = com.xueqiu.android.stockchart.f.a.a(getContext(), 8.0F);
    float f8 = getViewHeight();
    float f9 = com.xueqiu.android.stockchart.f.a.a(getContext(), 8.0F);
    paramCanvas.drawText(String.valueOf(f2), f1, f5 - f6 + f7, (Paint)localObject);
    paramCanvas.drawText(String.valueOf(f3), f1, f8 - f9, (Paint)localObject);
    paramCanvas.drawText("0.0", f1, f4, (Paint)localObject);
  }
  
  private void d(Canvas paramCanvas)
  {
    if (!b()) {
      return;
    }
    f localf = (f)this.m.get(0);
    float f2 = localf.b;
    float f1 = localf.c;
    int i3 = 0;
    int i2 = 0;
    int i1 = 1;
    while (i1 < this.f)
    {
      localf = (f)this.m.get(i1);
      f3 = f2;
      if (f2 < localf.b)
      {
        f3 = localf.b;
        i3 = i1;
      }
      f2 = f1;
      if (f1 > localf.c)
      {
        f2 = localf.c;
        i2 = i1;
      }
      i1 += 1;
      f1 = f2;
      f2 = f3;
    }
    float f3 = this.b / 2.0F;
    float f4 = this.c;
    float f5 = this.b;
    float f6 = i3;
    float f7 = getTopChartHeight();
    float f8 = this.g;
    float f9 = this.h;
    float f10 = this.b / 2.0F;
    float f11 = this.c;
    float f12 = this.b;
    float f13 = i2;
    float f14 = getTopChartHeight();
    float f15 = this.g;
    float f16 = this.h;
    a(com.xueqiu.android.stockchart.f.a.a(this.o.i, f2), f3 + (f4 + f5) * f6, f7 - (f2 - f8) * f9, paramCanvas);
    a(com.xueqiu.android.stockchart.f.a.a(this.o.i, f1), f13 * (f11 + f12) + f10, f14 - (f1 - f15) * f16, paramCanvas);
  }
  
  private void getShowData()
  {
    int i1 = this.u;
    while (i1 < this.v)
    {
      this.e.add(this.l.get(i1));
      this.n.add(this.k.get(i1));
      i1 += 1;
    }
  }
  
  public final f a(int paramInt)
  {
    return (f)this.m.get(paramInt);
  }
  
  public final int b(float paramFloat)
  {
    int i2 = (int)Math.ceil((paramFloat - getChartStartX()) / (this.b + this.c)) - 1;
    int i1 = i2;
    if (i2 < 0) {
      i1 = 0;
    }
    i2 = i1;
    if (i1 >= this.f) {
      i2 = this.f - 1;
    }
    return i2;
  }
  
  public final boolean b()
  {
    return (this.m != null) && (this.f > 0);
  }
  
  public final void c()
  {
    setOHLCMAArray(null);
    setVolumeArray(null);
    setMacdArray(null);
    this.b = com.xueqiu.android.stockchart.f.a.a(getContext(), this.i);
  }
  
  public int getCandleCount()
  {
    return this.s;
  }
  
  public float getCandleGap()
  {
    return this.c;
  }
  
  public float getCandleWidth()
  {
    return this.b;
  }
  
  public int getEndIndex()
  {
    return this.v;
  }
  
  public String getIndicator()
  {
    return this.q;
  }
  
  public String getKlineType()
  {
    return this.r;
  }
  
  public ArrayList<com.xueqiu.android.stockchart.e.a> getMacdArray()
  {
    return this.k;
  }
  
  public int getMaxIndex()
  {
    return this.t;
  }
  
  public ArrayList<com.xueqiu.android.stockchart.e.a> getOHLCMAArray()
  {
    return this.d;
  }
  
  public float getOriginCandleWidth()
  {
    return this.j;
  }
  
  public List<com.xueqiu.android.stockchart.e.a> getShowMACDArray()
  {
    return this.n;
  }
  
  public List<com.xueqiu.android.stockchart.e.a> getShowOHLCMAArray()
  {
    return this.m;
  }
  
  public List<com.xueqiu.android.stockchart.e.a> getShowVolumeArray()
  {
    return this.e;
  }
  
  public ArrayList<Pair<String, Float>> getSplitTimesListByDay()
  {
    float f1 = this.b / 2.0F;
    ArrayList localArrayList = new ArrayList();
    Object localObject = "";
    f1 += 1.0F;
    int i1 = 0;
    while (i1 < this.f)
    {
      String str = com.xueqiu.android.stockchart.f.a.a(((f)this.m.get(i1)).j, "MM-DD");
      if (!((String)localObject).equals(str)) {
        localArrayList.add(new Pair(str, Float.valueOf(f1)));
      }
      f1 += getCandleGap() + this.b;
      i1 += 1;
      localObject = str;
    }
    return localArrayList;
  }
  
  public ArrayList<Pair<String, Float>> getSplitTimesListByMonth()
  {
    float f1 = this.b / 2.0F;
    ArrayList localArrayList = new ArrayList();
    f1 = 1.0F + f1;
    Object localObject = "";
    int i1 = 0;
    int i2 = 0;
    String str1;
    if (i2 < this.f)
    {
      String str2 = ((f)this.m.get(i2)).j;
      str1 = str2.split(" ")[1];
      if ((i2 <= 0) || (str1.equals(localObject))) {
        break label205;
      }
      int i3 = i1 + 1;
      if ((!getPeriod().equals("1day")) && ((!getPeriod().equals("1week")) || (i3 % 4 != 0)))
      {
        i1 = i3;
        if (getPeriod().equals("1month"))
        {
          i1 = i3;
          if (i3 % 24 != 0) {}
        }
      }
      else
      {
        localArrayList.add(new Pair(com.xueqiu.android.stockchart.f.a.a(str2, "YYYY-MM"), Float.valueOf(f1)));
        i1 = i3;
      }
    }
    label205:
    for (;;)
    {
      f1 += getCandleGap() + this.b;
      i2 += 1;
      localObject = str1;
      break;
      return localArrayList;
    }
  }
  
  public int getStartIndex()
  {
    return this.u;
  }
  
  public h getStock()
  {
    return this.o;
  }
  
  public String getSymbol()
  {
    return this.p;
  }
  
  public ArrayList<com.xueqiu.android.stockchart.e.a> getVolumeArray()
  {
    return this.l;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    a();
    a(paramCanvas);
    if ((this.d == null) || (this.o == null)) {}
    for (;;)
    {
      if (getType().equals("big")) {
        d(paramCanvas);
      }
      if (this.q.equals("volume")) {
        b(paramCanvas);
      }
      if (this.q.equals("macd")) {
        c(paramCanvas);
      }
      return;
      if (getType().equals("small"))
      {
        this.b = this.j;
        if (this.w) {}
      }
      else
      {
        setCandleWidth(this.b);
      }
      float f5 = getTopChartHeight();
      this.t = this.d.size();
      if (this.v == 0)
      {
        this.v = this.t;
        this.u = (this.v - this.s);
      }
      if (this.v > this.t) {
        this.v = this.t;
      }
      if (this.u < 0) {
        this.u = 0;
      }
      this.m.clear();
      int i1 = this.u;
      while (i1 < this.v)
      {
        this.m.add(this.d.get(i1));
        i1 += 1;
      }
      int i2 = this.m.size();
      this.f = i2;
      Object localObject1 = com.xueqiu.android.stockchart.f.a.a(this.m);
      float f1 = localObject1[0];
      float f2 = localObject1[1];
      float f3 = f1 - f2;
      f1 = f1 + 0.15F * f3 + 0.15F * f3;
      this.g = (f2 - 0.15F * f3 - f3 * 0.15F);
      this.h = (f5 / (f1 - this.g));
      i1 = 4;
      if (getType().equals("small")) {
        i1 = 2;
      }
      f2 = this.g;
      f3 = this.h;
      float f4 = getTopChartHeight();
      localObject1 = com.xueqiu.android.stockchart.f.a.a(f1, f2, i1);
      int i3 = ((ArrayList)localObject1).size();
      Object localObject2 = getSplitLinePaint();
      Paint localPaint = a(10.0F, Paint.Align.RIGHT);
      f1 = getChartStartX() - com.xueqiu.android.stockchart.f.a.a(getContext(), 3.0F);
      if (getType().equals("small"))
      {
        f1 = getChartStartX() + com.xueqiu.android.stockchart.f.a.a(getContext(), 5.0F);
        localPaint.setTextAlign(Paint.Align.LEFT);
      }
      i1 = 0;
      float f6;
      float f7;
      while (i1 < i3)
      {
        double d1 = ((Double)((ArrayList)localObject1).get(i1)).doubleValue();
        localObject3 = com.xueqiu.android.stockchart.f.a.a(this.o.i, d1);
        f6 = getTopChartHeight() - ((float)d1 - f2) * f3;
        f7 = com.xueqiu.android.stockchart.f.a.a(getContext(), 30.0F);
        if ((f6 < f4 - com.xueqiu.android.stockchart.f.a.a(getContext(), 5.0F)) && (f6 > f7))
        {
          paramCanvas.drawLine(getChartStartX(), f6, getViewWidth() - 1.0F, f6, (Paint)localObject2);
          paramCanvas.drawText((String)localObject3, f1, f6, localPaint);
        }
        i1 += 1;
      }
      localObject2 = getSplitLinePaint();
      localPaint = a(10.0F, Paint.Align.CENTER);
      localObject1 = getPeriod();
      i1 = -1;
      switch (((String)localObject1).hashCode())
      {
      default: 
        switch (i1)
        {
        default: 
          localObject1 = getSplitTimesListByMonth();
        }
        break;
      }
      for (;;)
      {
        i3 = ((ArrayList)localObject1).size();
        int i4 = (int)Math.ceil(i3 / 8.0F);
        i1 = 0;
        while (i1 < i3)
        {
          localObject3 = (Pair)((ArrayList)localObject1).get(i1);
          localObject4 = (String)((Pair)localObject3).first;
          f1 = ((Float)((Pair)localObject3).second).floatValue();
          f1 = getChartStartX() + f1;
          f2 = localPaint.measureText((String)localObject4);
          if ((f1 - f2 / 2.0F >= getChartStartX()) && (f2 / 2.0F + f1 <= getChartStartX() + getChartWidth()))
          {
            paramCanvas.drawLine(f1, 1.0F, f1, getTopChartHeight() - 1.0F, (Paint)localObject2);
            paramCanvas.drawText((String)localObject4, f1, getTopChartHeight() + com.xueqiu.android.stockchart.f.a.a(getContext(), 10.0F), localPaint);
          }
          i1 += i4;
        }
        if (!((String)localObject1).equals("1minute")) {
          break;
        }
        i1 = 0;
        break;
        if (!((String)localObject1).equals("5m")) {
          break;
        }
        i1 = 1;
        break;
        if (!((String)localObject1).equals("15m")) {
          break;
        }
        i1 = 2;
        break;
        if (!((String)localObject1).equals("30m")) {
          break;
        }
        i1 = 3;
        break;
        if (!((String)localObject1).equals("60m")) {
          break;
        }
        i1 = 4;
        break;
        localObject1 = b(15);
        continue;
        localObject1 = b(60);
        continue;
        localObject1 = getSplitTimesListByDay();
      }
      localPaint = new Paint();
      localPaint.setAntiAlias(true);
      localPaint.setStyle(Paint.Style.STROKE);
      localPaint.setStrokeWidth(2.0F);
      Object localObject3 = new Paint();
      ((Paint)localObject3).setAntiAlias(true);
      ((Paint)localObject3).setStyle(Paint.Style.STROKE);
      Object localObject4 = new Path();
      Path localPath1 = new Path();
      Path localPath2 = new Path();
      Path localPath3 = new Path();
      f1 = this.b / 2.0F;
      f3 = getChartStartX() + (1.0F + f1);
      i1 = 0;
      localObject1 = null;
      if (i1 < i2)
      {
        localObject2 = (f)this.m.get(i1);
        f6 = f5 - (((f)localObject2).a - this.g) * this.h;
        f7 = ((f)localObject2).b;
        float f8 = this.g;
        float f9 = this.h;
        float f10 = ((f)localObject2).c;
        float f11 = this.g;
        float f12 = this.h;
        f4 = f5 - (((f)localObject2).d - this.g) * this.h;
        float f13 = f5 - (((f)localObject2).e - this.g) * this.h;
        float f14 = f5 - (((f)localObject2).f - this.g) * this.h;
        float f15 = f5 - (((f)localObject2).g - this.g) * this.h;
        float f16 = f5 - (((f)localObject2).h - this.g) * this.h;
        float f17 = ((f)localObject2).d;
        f2 = f17 - ((f)localObject2).a;
        f1 = f2;
        if (f2 == 0.0F)
        {
          if (localObject1 != null) {
            f2 = f17 - ((f)localObject1).d;
          }
          f1 = f2;
          if (f2 == 0.0F) {
            f1 = 1.0F;
          }
        }
        i3 = a(f1);
        if (i1 == 0)
        {
          ((Path)localObject4).moveTo(f3, f13);
          localPath1.moveTo(f3, f14);
          localPath2.moveTo(f3, f15);
          localPath3.moveTo(f3, f16);
        }
        for (;;)
        {
          ((Paint)localObject3).setColor(i3);
          f1 = f4;
          if (f6 == f4) {
            f1 = f6 + 1.0F;
          }
          ((Paint)localObject3).setStrokeWidth(this.b);
          paramCanvas.drawLine(f3, f6, f3, f1, (Paint)localObject3);
          ((Paint)localObject3).setStrokeWidth(2.0F);
          paramCanvas.drawLine(f3, f5 - (f7 - f8) * f9, f3, f5 - (f10 - f11) * f12, (Paint)localObject3);
          f3 += getCandleGap() + this.b;
          i1 += 1;
          localObject1 = localObject2;
          break;
          ((Path)localObject4).lineTo(f3, f13);
          localPath1.lineTo(f3, f14);
          localPath2.lineTo(f3, f15);
          localPath3.lineTo(f3, f16);
        }
      }
      i1 = getResources().getColor(c.chart_ma5_color);
      i2 = getResources().getColor(c.chart_ma10_color);
      i3 = getResources().getColor(c.chart_ma20_color);
      localPaint.setColor(i1);
      paramCanvas.drawPath((Path)localObject4, localPaint);
      localPaint.setColor(i2);
      paramCanvas.drawPath(localPath1, localPaint);
      localPaint.setColor(i3);
      paramCanvas.drawPath(localPath2, localPaint);
    }
  }
  
  public void setCandleWidth(float paramFloat)
  {
    this.s = ((int)Math.floor((getChartWidth() - 2.0F + this.c) / (this.c + paramFloat)));
    this.b = ((getChartWidth() - 2.0F + this.c) / this.s - this.c);
    this.w = true;
  }
  
  public void setEndIndex(int paramInt)
  {
    this.v = paramInt;
  }
  
  public void setIndicator(String paramString)
  {
    this.q = paramString;
  }
  
  public void setKlineType(String paramString)
  {
    this.r = paramString;
  }
  
  public void setMacdArray(ArrayList<com.xueqiu.android.stockchart.e.a> paramArrayList)
  {
    if (paramArrayList == null)
    {
      this.k = null;
      return;
    }
    if (this.k == null)
    {
      this.k = paramArrayList;
      return;
    }
    this.k.addAll(0, paramArrayList);
  }
  
  public void setOHLCMAArray(ArrayList<com.xueqiu.android.stockchart.e.a> paramArrayList)
  {
    if (paramArrayList == null)
    {
      this.d = null;
      this.v = 0;
      return;
    }
    if (this.d == null)
    {
      this.d = paramArrayList;
      return;
    }
    this.d.addAll(0, paramArrayList);
    int i1 = paramArrayList.size();
    this.t += i1;
    this.u += i1;
    this.v = (i1 + this.v);
  }
  
  public void setShowMACDArray(List<com.xueqiu.android.stockchart.e.a> paramList)
  {
    this.n = paramList;
  }
  
  public void setStartIndex(int paramInt)
  {
    this.u = paramInt;
  }
  
  public void setStock(h paramh)
  {
    this.o = paramh;
  }
  
  public void setSymbol(String paramString)
  {
    this.p = paramString;
  }
  
  public void setVolumeArray(ArrayList<com.xueqiu.android.stockchart.e.a> paramArrayList)
  {
    if (paramArrayList == null)
    {
      this.l = null;
      return;
    }
    if (this.l == null)
    {
      this.l = paramArrayList;
      return;
    }
    this.l.addAll(0, paramArrayList);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stockchart\view\KlineChartView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */