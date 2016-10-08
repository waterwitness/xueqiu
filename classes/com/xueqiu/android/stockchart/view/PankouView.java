package com.xueqiu.android.stockchart.view;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.util.AttributeSet;
import android.view.MotionEvent;
import com.xueqiu.android.stockchart.c;
import com.xueqiu.android.stockchart.e.g;
import com.xueqiu.android.stockchart.e.h;
import com.xueqiu.android.stockchart.f.a;
import java.text.DecimalFormat;
import java.util.List;

public class PankouView
  extends BaseView
{
  private com.xueqiu.android.stockchart.a.b b;
  private String c = "wudang";
  private String d = "small";
  private h e;
  private String f;
  private List<g> g;
  private DecimalFormat h = new DecimalFormat("0.00");
  private List<com.xueqiu.android.stockchart.e.b> i;
  
  public PankouView(Context paramContext)
  {
    super(paramContext);
  }
  
  public PankouView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public PankouView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private void a(Canvas paramCanvas)
  {
    float f4 = getViewHeight() / 10.0F;
    float f1 = f4 / 2.0F;
    float f2 = getFontSize() / 2.0F;
    float f5 = 0.0F + a.a(getContext(), 5.0F);
    float f6 = a.a(getContext(), 30.0F);
    float f7 = a.a(getContext(), 8.0F);
    float f8 = getViewWidth() - f7 - a.a(getContext(), 5.0F);
    Paint localPaint = new Paint();
    localPaint.setAntiAlias(true);
    localPaint.setTextSize(a.a(getContext(), 10.0F));
    int j;
    int k;
    label122:
    String str;
    if (this.i == null)
    {
      j = 10;
      k = 0;
      f1 += f2;
      if (k >= j) {
        break label360;
      }
      float f3 = 0.0F;
      f2 = 0.0F;
      str = "-";
      int m = 0;
      if (this.i != null)
      {
        com.xueqiu.android.stockchart.e.b localb = (com.xueqiu.android.stockchart.e.b)this.i.get(k);
        f3 = localb.b;
        f2 = localb.c;
        str = localb.a.substring(0, 5);
        m = localb.d;
      }
      localPaint.setColor(getResources().getColor(c.chart_text_color));
      localPaint.setTextAlign(Paint.Align.LEFT);
      paramCanvas.drawText(str, f5, f1, localPaint);
      paramCanvas.drawText(a.a(this.e.i, f3), f5 + f6, f1, localPaint);
      localPaint.setTextAlign(Paint.Align.RIGHT);
      paramCanvas.drawText(String.valueOf(Math.round(f2 / 100.0F)), f8, f1, localPaint);
      localPaint.setColor(a(m));
      str = "";
      if (m == -1) {
        str = "S";
      }
      if (m != 1) {
        break label361;
      }
      str = "B";
    }
    label360:
    label361:
    for (;;)
    {
      paramCanvas.drawText(str, f8 + f7, f1, localPaint);
      k += 1;
      f1 += f4;
      break label122;
      j = this.i.size();
      break;
      return;
    }
  }
  
  public String getChartSize()
  {
    return this.d;
  }
  
  public List<com.xueqiu.android.stockchart.e.b> getDetailList()
  {
    return this.i;
  }
  
  public float getPankouWidth()
  {
    return a.a(getContext(), 110.0F);
  }
  
  public String getSymbol()
  {
    return this.f;
  }
  
  public String getType()
  {
    return this.c;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if (this.e == null) {}
    do
    {
      return;
      if (!this.c.equals("wudang")) {
        break;
      }
    } while (this.g == null);
    float f3 = getViewHeight() / 11.0F;
    float f1 = f3 / 2.0F;
    f1 = getFontSize() / 2.0F + f1;
    float f2;
    label64:
    int j;
    label147:
    Object localObject;
    float f7;
    if (this.e == null)
    {
      f2 = 0.0F;
      float f4 = 0.0F + a.a(getContext(), 5.0F);
      float f5 = a.a(getContext(), 30.0F);
      float f6 = getViewWidth() - a.a(getContext(), 5.0F);
      Paint localPaint = new Paint();
      localPaint.setAntiAlias(true);
      localPaint.setTextSize(a.a(getContext(), 10.0F));
      int k = this.g.size();
      j = 0;
      if (j < k)
      {
        localObject = (g)this.g.get(j);
        float f8 = ((g)localObject).b;
        float f9 = ((g)localObject).c;
        f7 = ((g)localObject).d;
        localObject = ((g)localObject).a;
        localPaint.setTextAlign(Paint.Align.LEFT);
        localPaint.setColor(getResources().getColor(c.chart_text_color));
        paramCanvas.drawText((String)localObject, f4, f1, localPaint);
        if (f8 != 0.0F) {
          localPaint.setColor(a(f8 - f2));
        }
        paramCanvas.drawText(a.a(this.e.i, f8), f4 + f5, f1, localPaint);
        localPaint.setColor(getResources().getColor(c.chart_text_color));
        localPaint.setTextAlign(Paint.Align.RIGHT);
        paramCanvas.drawText(String.valueOf((int)f9), f6, f1, localPaint);
        f1 += f3;
        if (j != 4) {
          break label538;
        }
        if (!this.d.equals("big")) {
          break label474;
        }
        localPaint.setTextAlign(Paint.Align.LEFT);
        localPaint.setColor(getResources().getColor(this.a.getResourceId(2, 0)));
        localPaint.setTextSize(a.a(getContext(), 12.0F));
        paramCanvas.drawText("现价", f4, f1, localPaint);
        localPaint.setTextAlign(Paint.Align.RIGHT);
        localPaint.setColor(a(f7 - f2));
        paramCanvas.drawText(a.a(this.e.i, f7), f6, f1, localPaint);
        f1 += f3;
        localPaint.setTextSize(a.a(getContext(), 10.0F));
      }
    }
    label474:
    label538:
    for (;;)
    {
      j += 1;
      break label147;
      break;
      f2 = this.e.d;
      break label64;
      localObject = getSplitLinePaint();
      f7 = f1 - f3 / 4.0F;
      paramCanvas.drawLine(a.a(getContext(), 5.0F) + 0.0F, f7, getViewWidth() - a.a(getContext(), 5.0F), f7, (Paint)localObject);
      f1 += f3;
      continue;
      a(paramCanvas);
      return;
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((!this.c.equals("wudang")) || (this.b == null) || (this.g == null)) {}
    int k;
    do
    {
      return true;
      float f1 = getViewHeight() / 11.0F;
      k = (int)Math.floor(paramMotionEvent.getY() / f1);
      int j = k;
      if (k > 5) {
        j = k - 1;
      }
      k = j;
      if (j < 0) {
        k = 0;
      }
    } while (k >= this.g.size());
    paramMotionEvent = (g)this.g.get(k);
    paramMotionEvent = a.a(this.e.i, paramMotionEvent.b);
    this.b.a(paramMotionEvent);
    return true;
  }
  
  public void setChartSize(String paramString)
  {
    this.d = paramString;
  }
  
  public void setDetailList(List<com.xueqiu.android.stockchart.e.b> paramList)
  {
    this.i = paramList;
    invalidate();
  }
  
  public void setOnPankouClickListener(com.xueqiu.android.stockchart.a.b paramb)
  {
    this.b = paramb;
  }
  
  public void setPanKouList(List<g> paramList)
  {
    this.g = paramList;
    invalidate();
  }
  
  public void setStock(h paramh)
  {
    this.e = paramh;
  }
  
  public void setSymbol(String paramString)
  {
    this.f = paramString;
    this.h = a.b(paramString);
  }
  
  public void setType(String paramString)
  {
    this.c = paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stockchart\view\PankouView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */