package com.xueqiu.android.common.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewGroup;
import com.xueqiu.android.base.r;
import com.xueqiu.android.base.util.ay;
import java.util.ArrayList;
import java.util.List;

public class RadarChart
  extends ViewGroup
{
  int a = -1;
  private Paint b;
  private Paint c;
  private Paint d;
  private Paint e;
  private Paint f;
  private List<Integer> g;
  private List<String> h;
  private String i = "#ffaa00";
  private float j = ay.a(90.0F);
  private float k = ay.a(30.0F);
  private float l = ay.a(15.0F);
  private float m = ay.a(4.0F);
  private float n = ay.a(30.0F);
  private float o = 2.0F;
  private int p = 2131558600;
  private int q = 2131558602;
  private int r = 2131558604;
  private int s = 0;
  private float t = 20.0F;
  private float u = 270.0F;
  private List<Rect> v = new ArrayList();
  private boolean w = true;
  private ad x;
  
  public RadarChart(Context paramContext)
  {
    super(paramContext);
    a();
  }
  
  public RadarChart(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  public RadarChart(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a();
  }
  
  private static PointF a(PointF paramPointF, float paramFloat1, float paramFloat2)
  {
    return new PointF((float)(paramPointF.x + paramFloat1 * Math.cos(Math.toRadians(paramFloat2))), (float)(paramPointF.y + paramFloat1 * Math.sin(Math.toRadians(paramFloat2))));
  }
  
  private void a()
  {
    setWillNotDraw(false);
    this.b = new Paint(1);
    this.b.setAlpha(255);
    this.b.setStrokeWidth(this.o);
    this.b.setStyle(Paint.Style.STROKE);
    Paint localPaint = this.b;
    float f1 = ay.a(this.o * 1.5F);
    float f2 = ay.a(this.o * 2.5F);
    float f3 = this.o;
    localPaint.setPathEffect(new DashPathEffect(new float[] { f1, f2 }, f3 * 25.0F));
    this.f = new Paint();
    this.f.setStyle(Paint.Style.FILL);
    this.f.setColor(r.a(this.p));
    this.b.setColor(r.a(this.q));
    this.c = new Paint();
    this.c.setAlpha(255);
    this.d = new Paint(1);
    this.d.setColor(Color.parseColor("#ffffff"));
    this.d.setStrokeWidth(ay.a(3.0F));
    this.d.setTextSize(this.n);
    this.e = new Paint(1);
    this.e.setStrokeWidth(ay.a(2.0F));
    this.e.setTextSize(ay.a(14.0F));
    this.e.setColor(Color.parseColor("#666666"));
    this.v.clear();
  }
  
  private void a(Canvas paramCanvas, List<Integer> paramList)
  {
    float f1 = 360 / paramList.size();
    PointF localPointF = getCenter();
    float f2 = ay.a(10.0F);
    float f3 = ay.a(4.0F);
    int i1 = 0;
    if (i1 < paramList.size())
    {
      Object localObject = (Integer)paramList.get(i1);
      float f4 = this.k;
      float f5 = this.j;
      float f6 = this.k;
      localObject = a(localPointF, ((Integer)localObject).intValue() * (f5 - f6) / this.t + f4, i1 * f1 + this.u);
      Rect localRect = new Rect();
      this.e.getTextBounds((String)this.h.get(i1), 0, ((String)this.h.get(i1)).length(), localRect);
      f4 = localRect.width();
      f5 = localRect.height();
      if (localPointF.x > ((PointF)localObject).x)
      {
        this.v.add(new Rect((int)(((PointF)localObject).x - f4 - f2), (int)(((PointF)localObject).y - f2), (int)(((PointF)localObject).x + f2), (int)(f5 + ((PointF)localObject).y + f2)));
        paramCanvas.drawText((String)this.h.get(i1), ((PointF)localObject).x - localRect.width() - f3, ((PointF)localObject).y + f3, this.e);
      }
      for (;;)
      {
        i1 += 1;
        break;
        this.v.add(new Rect((int)(((PointF)localObject).x - f2), (int)(((PointF)localObject).y - f2), (int)(f4 + ((PointF)localObject).x + f2), (int)(f5 + ((PointF)localObject).y + f2)));
        paramCanvas.drawText((String)this.h.get(i1), ((PointF)localObject).x + f3, ((PointF)localObject).y + f3, this.e);
      }
    }
  }
  
  private PointF getCenter()
  {
    return new PointF(getWidth() / 2.0F, getHeight() / 2.0F);
  }
  
  public float getCircleWidth()
  {
    return this.o;
  }
  
  public List<String> getLabels()
  {
    return this.h;
  }
  
  public float getOutRadius()
  {
    return this.j;
  }
  
  public ad getRectListener()
  {
    return this.x;
  }
  
  public List<Integer> getScores()
  {
    return this.g;
  }
  
  public float getSpacing()
  {
    return this.l;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if ((this.g == null) || (this.g.size() < 3)) {}
    do
    {
      return;
      int i2 = this.g.size();
      PointF localPointF = getCenter();
      this.f.setColor(r.a(this.p));
      paramCanvas.drawCircle(localPointF.x, localPointF.y, this.j, this.f);
      int i1 = 0;
      while (i1 < i2)
      {
        this.b.setColor(r.a(this.q));
        paramCanvas.drawCircle(localPointF.x, localPointF.y, this.j - this.l * i1, this.b);
        i1 += 1;
      }
      localPointF = getCenter();
      float f1 = 360 / this.g.size();
      Object localObject1 = new Path();
      i1 = 0;
      float f2;
      float f3;
      float f4;
      if (i1 < this.g.size())
      {
        i2 = ((Integer)this.g.get(i1)).intValue();
        f2 = this.k;
        f3 = this.j;
        f4 = this.k;
        localObject2 = a(localPointF, i2 * (f3 - f4) / this.t + f2, i1 * f1 + this.u);
        if (i1 == 0) {
          ((Path)localObject1).moveTo(((PointF)localObject2).x, ((PointF)localObject2).y);
        }
        for (;;)
        {
          i1 += 1;
          break;
          ((Path)localObject1).lineTo(((PointF)localObject2).x, ((PointF)localObject2).y);
        }
      }
      ((Path)localObject1).close();
      this.c.setStyle(Paint.Style.FILL);
      this.c.setColor(Color.parseColor(this.i));
      this.c.setAlpha(224);
      paramCanvas.drawPath((Path)localObject1, this.c);
      this.c.setStyle(Paint.Style.STROKE);
      this.c.setStrokeWidth(ay.a(1.0F));
      this.c.setAlpha(255);
      paramCanvas.drawPath((Path)localObject1, this.c);
      i1 = 0;
      while (i1 < this.g.size())
      {
        i2 = ((Integer)this.g.get(i1)).intValue();
        f2 = this.k;
        f3 = this.j;
        f4 = this.k;
        localObject1 = a(localPointF, i2 * (f3 - f4) / this.t + f2, i1 * f1 + this.u);
        this.c.setColor(Color.parseColor(this.i));
        this.c.setStyle(Paint.Style.FILL);
        paramCanvas.drawCircle(((PointF)localObject1).x, ((PointF)localObject1).y, this.m, this.c);
        this.c.setColor(r.a(this.r));
        this.c.setStyle(Paint.Style.STROKE);
        this.c.setFlags(1);
        this.c.setStrokeWidth(this.m / 2.0F);
        paramCanvas.drawCircle(((PointF)localObject1).x, ((PointF)localObject1).y, this.m * 1.25F, this.c);
        i1 += 1;
      }
      localPointF = getCenter();
      localObject1 = String.valueOf(this.s);
      Object localObject2 = new Rect();
      this.d.getTextBounds((String)localObject1, 0, ((String)localObject1).length(), (Rect)localObject2);
      paramCanvas.drawText((String)localObject1, localPointF.x - ((Rect)localObject2).width() / 2.0F, localPointF.y + ((Rect)localObject2).height() / 2.0F, this.d);
    } while (!this.w);
    a(paramCanvas, this.g);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {}
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool = false;
    int i2 = (int)paramMotionEvent.getX();
    int i3 = (int)paramMotionEvent.getY();
    switch (paramMotionEvent.getAction())
    {
    }
    for (;;)
    {
      if (this.x != null) {
        bool = true;
      }
      return bool;
      int i1 = 0;
      while (i1 < this.v.size())
      {
        if (((Rect)this.v.get(i1)).contains(i2, i3))
        {
          this.a = i1;
          break;
        }
        i1 += 1;
      }
      if ((this.a != -1) && (this.x != null)) {
        this.x.a(this.a);
      }
      this.a = -1;
    }
  }
  
  public void setCircleWidth(float paramFloat)
  {
    this.o = paramFloat;
  }
  
  public void setDrawLabel(boolean paramBoolean)
  {
    this.w = paramBoolean;
  }
  
  public void setInRadius(float paramFloat)
  {
    this.k = paramFloat;
  }
  
  public void setItemRadius(float paramFloat)
  {
    this.m = paramFloat;
  }
  
  public void setLabels(List<String> paramList)
  {
    this.h = paramList;
  }
  
  public void setOutRadius(float paramFloat)
  {
    this.j = paramFloat;
  }
  
  public void setPaintColor(String paramString)
  {
    this.i = paramString;
  }
  
  public void setRadarBg(int paramInt)
  {
    this.p = paramInt;
  }
  
  public void setRadarCircle(int paramInt)
  {
    this.q = paramInt;
  }
  
  public void setRadarPoint(int paramInt)
  {
    this.r = paramInt;
  }
  
  public void setRectListener(ad paramad)
  {
    this.x = paramad;
  }
  
  public void setScores(List<Integer> paramList)
  {
    this.g = paramList;
  }
  
  public void setSpacing(float paramFloat)
  {
    this.l = paramFloat;
  }
  
  public void setSubMaxScore(float paramFloat)
  {
    this.t = paramFloat;
  }
  
  public void setTotalScore(int paramInt)
  {
    this.s = paramInt;
  }
  
  public void setValueSize(float paramFloat)
  {
    this.n = paramFloat;
    this.d.setTextSize(paramFloat);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\RadarChart.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */