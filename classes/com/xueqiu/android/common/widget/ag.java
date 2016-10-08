package com.xueqiu.android.common.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.Layout.Alignment;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.view.View;
import android.view.View.MeasureSpec;
import com.xueqiu.android.stockchart.f.a;

public final class ag
  extends View
{
  private float a = 40.0F;
  private float b = 0.0F;
  private String[] c = null;
  private String[][] d = null;
  private int e = getResources().getColor(2131558648);
  private int f = getResources().getColor(2131558650);
  private int g = getResources().getColor(2131558647);
  private int h = getResources().getColor(2131558668);
  private int i = getResources().getColor(2131558668);
  private int j = getResources().getColor(2131558646);
  private int k = 2;
  private int l = 10;
  private float[] m = new float[0];
  private float[] n = null;
  private String[] o = new String[0];
  private float p = getWidth();
  private Canvas q = new Canvas();
  private Context r;
  
  public ag(Context paramContext)
  {
    super(paramContext);
    this.r = paramContext;
  }
  
  private Layout.Alignment a(int paramInt)
  {
    if (this.o == null) {
      return Layout.Alignment.ALIGN_NORMAL;
    }
    String str = this.o[paramInt];
    if (str.equals("left")) {
      return Layout.Alignment.ALIGN_NORMAL;
    }
    if (str.equals("right")) {
      return Layout.Alignment.ALIGN_OPPOSITE;
    }
    return Layout.Alignment.ALIGN_CENTER;
  }
  
  private void a(String paramString, Layout.Alignment paramAlignment, int paramInt, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, boolean paramBoolean)
  {
    TextPaint localTextPaint = new TextPaint();
    localTextPaint.setAntiAlias(true);
    localTextPaint.setColor(paramInt);
    localTextPaint.setTextSize(a.a(this.r, 13.0F));
    paramFloat3 -= a.a(this.r, this.l);
    if (paramBoolean)
    {
      localTextPaint.setTypeface(Typeface.create(localTextPaint.getTypeface(), 1));
      if (localTextPaint.measureText(paramString) > paramFloat3) {
        localTextPaint.setTextSize(a.a(this.r, 10.0F));
      }
    }
    paramString = new StaticLayout(paramString, localTextPaint, (int)paramFloat3, paramAlignment, 1.0F, 0.4F, false);
    this.q.save();
    paramFloat4 = (paramFloat4 - paramString.getHeight()) / 2.0F;
    paramFloat3 = paramFloat1;
    if (paramAlignment == Layout.Alignment.ALIGN_NORMAL) {
      paramFloat3 = paramFloat1 + a.a(this.r, this.l);
    }
    this.q.translate(paramFloat3, paramFloat4 + paramFloat2);
    paramString.draw(this.q);
    this.q.restore();
  }
  
  private Paint getPaint()
  {
    Paint localPaint = new Paint();
    localPaint.setAntiAlias(true);
    return localPaint;
  }
  
  private float getTableBodyHeight()
  {
    int i3 = this.d.length;
    this.n = new float[i3];
    if (i3 == 0) {
      return a.a(getContext(), 100.0F);
    }
    int i1 = 0;
    float f3 = 0.0F;
    float f1;
    int i2;
    label59:
    float f2;
    if (i1 < i3)
    {
      String[] arrayOfString = this.d[i1];
      f1 = this.a;
      i2 = 0;
      if (i2 < arrayOfString.length)
      {
        String str = arrayOfString[i2];
        f2 = this.m[i2];
        float f4 = this.p;
        float f5 = a.a(this.r, this.l);
        Layout.Alignment localAlignment = a(i2);
        TextPaint localTextPaint = new TextPaint();
        localTextPaint.setAntiAlias(true);
        localTextPaint.setTextSize(a.a(this.r, 13.0F));
        f5 = new StaticLayout(str, localTextPaint, (int)(f2 * f4 - f5), localAlignment, 1.0F, 0.0F, false).getHeight();
        f4 = a.a(getContext(), this.a);
        f2 = f4;
        if (f5 > f4 - a.a(getContext(), 20.0F)) {
          f2 = a.a(getContext(), 20.0F) + f5;
        }
        if (f2 <= f1) {
          break label256;
        }
      }
    }
    for (;;)
    {
      i2 += 1;
      f1 = f2;
      break label59;
      this.n[i1] = f1;
      f3 += f1;
      i1 += 1;
      break;
      return f3;
      label256:
      f2 = f1;
    }
  }
  
  protected final void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    this.p = getWidth();
    if (this.d == null) {
      this.d = new String[0][];
    }
    if (this.m == null) {}
    for (;;)
    {
      return;
      this.q = paramCanvas;
      float f2;
      if (this.c != null)
      {
        paramCanvas = getPaint();
        paramCanvas.setColor(this.e);
        this.q.drawRect(0.0F, 0.0F, this.p, a.a(this.r, this.b), paramCanvas);
        f1 = 0.0F;
        i1 = 0;
        while (i1 < this.k)
        {
          paramCanvas = this.c[i1];
          f2 = this.m[i1] * this.p;
          a(paramCanvas, a(i1), this.h, f1, 0.0F, f2, a.a(this.r, this.b), true);
          f1 += f2;
          i1 += 1;
        }
      }
      int i3 = this.d.length;
      float f1 = a.a(this.r, this.b);
      if (i3 == 0)
      {
        paramCanvas = getPaint();
        paramCanvas.setColor(this.f);
        this.q.drawRect(0.0F, f1, this.p, a.a(this.r, 100.0F) + f1, paramCanvas);
        a("暂无数据", Layout.Alignment.ALIGN_CENTER, this.j, 0.0F, f1, this.p, a.a(this.r, 100.0F), false);
        return;
      }
      int i1 = 0;
      while (i1 < i3)
      {
        paramCanvas = this.d[i1];
        float f3 = this.n[i1];
        Paint localPaint = getPaint();
        if (i1 % 2 == 0) {}
        for (int i2 = this.g;; i2 = this.f)
        {
          localPaint.setColor(i2);
          this.q.drawRect(0.0F, f1, 0.0F + this.p, f1 + f3, localPaint);
          int i4 = paramCanvas.length;
          f2 = 0.0F;
          i2 = 0;
          while (i2 < i4)
          {
            localPaint = paramCanvas[i2];
            float f4 = this.m[i2] * this.p;
            a(localPaint, a(i2), this.i, f2, f1, f4, f3, false);
            f2 += f4;
            i2 += 1;
          }
        }
        f1 += f3;
        i1 += 1;
      }
    }
  }
  
  protected final void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if (this.d == null) {
      return;
    }
    paramInt1 = View.MeasureSpec.getSize(paramInt1);
    this.p = paramInt1;
    if (this.c == null) {}
    for (float f1 = 0.0F;; f1 = a.a(getContext(), this.b))
    {
      setMeasuredDimension(paramInt1, (int)(f1 + getTableBodyHeight()));
      return;
    }
  }
  
  public final void setBodyTextColor(int paramInt)
  {
    this.i = paramInt;
  }
  
  public final void setColumnCount(int paramInt)
  {
    this.k = paramInt;
  }
  
  public final void setColumnPadding(int paramInt)
  {
    this.l = paramInt;
  }
  
  public final void setColumnsAlign(String[] paramArrayOfString)
  {
    this.o = paramArrayOfString;
  }
  
  public final void setColumnsWidth(int[] paramArrayOfInt)
  {
    int i4 = 0;
    this.k = paramArrayOfInt.length;
    this.m = new float[this.k];
    int i2 = 0;
    int i1 = 0;
    int i3;
    for (;;)
    {
      i3 = i4;
      if (i2 >= this.k) {
        break;
      }
      i1 += paramArrayOfInt[i2];
      i2 += 1;
    }
    while (i3 < this.k)
    {
      this.m[i3] = (paramArrayOfInt[i3] / i1);
      i3 += 1;
    }
  }
  
  public final void setData(String[][] paramArrayOfString)
  {
    this.d = paramArrayOfString;
  }
  
  public final void setEvenRowBgColor(int paramInt)
  {
    this.g = paramInt;
  }
  
  public final void setHeadBgColor(int paramInt)
  {
    this.e = paramInt;
  }
  
  public final void setHeadHeight(float paramFloat)
  {
    this.b = paramFloat;
  }
  
  public final void setHeadNames(String[] paramArrayOfString)
  {
    if (paramArrayOfString != null)
    {
      this.b = 40.0F;
      this.c = paramArrayOfString;
    }
  }
  
  public final void setHeadTextColor(int paramInt)
  {
    this.h = paramInt;
  }
  
  public final void setOddRowBgColor(int paramInt)
  {
    this.f = paramInt;
  }
  
  public final void setRowHeight(float paramFloat)
  {
    this.a = paramFloat;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\ag.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */