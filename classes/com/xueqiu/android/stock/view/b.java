package com.xueqiu.android.stock.view;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.Style;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import android.view.View.MeasureSpec;
import com.xueqiu.android.stockchart.f.a;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class b
  extends View
{
  public TypedArray a = getContext().getTheme().obtainStyledAttributes(new int[] { 2130772256, 2130772257, 2130772002, 2130771999 });
  private List<Map<String, Object>> b = null;
  private int c = (int)a.a(getContext(), 19.0F);
  private int d = (int)a.a(getContext(), 12.0F);
  private int e = (int)a.a(getContext(), 16.0F);
  private int f = (int)a.a(getContext(), 22.0F);
  private int g = (int)(a.a(getContext(), 28.0F) + this.f);
  private Canvas h = null;
  private TextPaint i = null;
  private int j = 0;
  
  public b(Context paramContext)
  {
    super(paramContext);
  }
  
  private void a()
  {
    this.i = new TextPaint();
    this.i.setTextSize(this.d);
    this.i.setAntiAlias(true);
    Paint localPaint = new Paint();
    localPaint.setStyle(Paint.Style.STROKE);
    localPaint.setStrokeWidth(0.0F);
    localPaint.setAntiAlias(true);
    localPaint.setColor(getResources().getColor(this.a.getResourceId(3, 0)));
    int n = (int)a.a(getContext(), 20.0F);
    this.j = ((getWidth() - n * 3) / 2);
    int m = this.g + this.c / 2;
    int i3 = this.b.size();
    int i1 = 0;
    int k = n;
    while (i1 < i3)
    {
      Iterator localIterator = ((Map)this.b.get(i1)).entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        if ((i1 + 1) % 2 != 0)
        {
          a(localEntry, k, m);
          k = this.j + n + k;
        }
        else
        {
          a(localEntry, k, m);
          int i2 = m;
          if ((i1 + 1) % 4 == 0)
          {
            i2 = (int)(m + a.a(getContext(), 20.0F));
            if (i1 != i3 - 1)
            {
              m = k - this.j - n;
              int i4 = (int)(this.c / 2 + i2 - a.a(getContext(), 10.0F) - this.d / 2);
              this.h.drawLine(m, i4, m + this.j, i4, localPaint);
              this.h.drawLine(k, i4, this.j + k, i4, localPaint);
            }
          }
          m = this.c + i2;
          k = n;
        }
      }
      i1 += 1;
    }
  }
  
  private void a(Map.Entry<String, Object> paramEntry, int paramInt1, int paramInt2)
  {
    String str2 = (String)paramEntry.getKey();
    String str1 = paramEntry.getValue().toString();
    paramEntry = str1;
    if (TextUtils.isEmpty(str1)) {
      paramEntry = "--";
    }
    this.i.setTextAlign(Paint.Align.LEFT);
    this.i.setColor(getResources().getColor(this.a.getResourceId(1, 0)));
    this.h.drawText(str2, paramInt1, paramInt2, this.i);
    this.i.setTextAlign(Paint.Align.RIGHT);
    this.i.setColor(getResources().getColor(this.a.getResourceId(0, 0)));
    this.h.drawText(paramEntry, this.j + paramInt1, paramInt2, this.i);
  }
  
  private int getViewHeight()
  {
    int k = this.g;
    int m = this.c / 2;
    int i1 = this.b.size();
    int n = m + k;
    m = 0;
    while (m < i1)
    {
      k = n;
      if ((m + 1) % 2 == 0)
      {
        n += this.c;
        k = n;
        if ((m + 1) % 4 == 0) {
          k = (int)(n + a.a(getContext(), 20.0F));
        }
      }
      m += 1;
      n = k;
    }
    return n + (int)a.a(getContext(), 10.0F);
  }
  
  protected final void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    this.h = paramCanvas;
    if (this.b == null) {
      return;
    }
    int k = getWidth();
    int m = getViewHeight();
    paramCanvas = new Paint();
    paramCanvas.setColor(getResources().getColor(this.a.getResourceId(2, 0)));
    this.h.drawRect(0.0F, 0.0F, k, m, paramCanvas);
    paramCanvas = new Paint();
    paramCanvas.setAntiAlias(true);
    paramCanvas.setTextSize(this.e);
    paramCanvas.setColor(getResources().getColor(this.a.getResourceId(0, 0)));
    paramCanvas.setTextAlign(Paint.Align.CENTER);
    float f1 = getWidth() / 2;
    float f2 = a.a(getContext(), 16.0F);
    float f3 = this.f / 2;
    this.h.drawText("行情数据", f1, f2 + f3, paramCanvas);
    a();
  }
  
  protected final void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if (this.b == null) {
      return;
    }
    setMeasuredDimension(View.MeasureSpec.getSize(paramInt1), getViewHeight());
  }
  
  public final void setData(List<Map<String, Object>> paramList)
  {
    this.b = paramList;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\view\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */