package com.xueqiu.android.common.pdf;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.View;
import com.xueqiu.android.R.styleable;
import com.xueqiu.android.base.util.v;

public class RoundProgressBar
  extends View
{
  private Paint a = new Paint();
  private int b;
  private int c;
  private int d;
  private float e;
  private float f;
  private int g;
  private int h;
  private boolean i;
  private int j;
  
  public RoundProgressBar(Context paramContext)
  {
    this(paramContext, (byte)0);
  }
  
  private RoundProgressBar(Context paramContext, byte paramByte)
  {
    this(paramContext, null, 0);
  }
  
  public RoundProgressBar(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.RoundProgressBar);
    this.b = paramContext.getColor(0, getResources().getColor(2131558590));
    this.c = paramContext.getColor(1, -1);
    this.d = paramContext.getColor(3, -16711936);
    this.e = paramContext.getDimension(4, 15.0F);
    this.f = paramContext.getDimension(2, getResources().getDimensionPixelSize(2131230881));
    this.g = paramContext.getInteger(5, 100);
    this.i = paramContext.getBoolean(6, true);
    this.j = paramContext.getInt(7, 0);
    paramContext.recycle();
  }
  
  public int getCricleColor()
  {
    return this.b;
  }
  
  public int getCricleProgressColor()
  {
    return this.c;
  }
  
  public int getMax()
  {
    try
    {
      int k = this.g;
      return k;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public int getProgress()
  {
    try
    {
      int k = this.h;
      return k;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public float getRoundWidth()
  {
    return this.f;
  }
  
  public int getTextColor()
  {
    return this.d;
  }
  
  public float getTextSize()
  {
    return this.e;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    int k = getWidth() / 2;
    int m = (int)(k - this.f / 2.0F);
    this.a.setColor(this.b);
    this.a.setStyle(Paint.Style.STROKE);
    this.a.setStrokeWidth(this.f);
    this.a.setAntiAlias(true);
    paramCanvas.drawCircle(k, k, m, this.a);
    v.e("log", String.valueOf(k));
    this.a.setStrokeWidth(0.0F);
    this.a.setColor(this.d);
    this.a.setTextSize(this.e);
    this.a.setTypeface(Typeface.DEFAULT_BOLD);
    int n = (int)(this.h / this.g * 100.0F);
    float f1 = this.a.measureText(n + "%");
    if ((this.i) && (n != 0) && (this.j == 0)) {
      paramCanvas.drawText(n + "%", k - f1 / 2.0F, k + this.e / 2.0F, this.a);
    }
    this.a.setStrokeWidth(this.f);
    this.a.setColor(this.c);
    RectF localRectF = new RectF(k - m, k - m, k + m, k + m);
    switch (this.j)
    {
    }
    do
    {
      return;
      this.a.setStyle(Paint.Style.STROKE);
      paramCanvas.drawArc(localRectF, 0.0F, this.h * 360 / this.g, false, this.a);
      return;
      this.a.setStyle(Paint.Style.FILL_AND_STROKE);
    } while (this.h == 0);
    paramCanvas.drawArc(localRectF, 0.0F, this.h * 360 / this.g, true, this.a);
  }
  
  public void setCricleColor(int paramInt)
  {
    this.b = paramInt;
  }
  
  public void setCricleProgressColor(int paramInt)
  {
    this.c = paramInt;
  }
  
  public void setMax(int paramInt)
  {
    if (paramInt < 0) {
      try
      {
        throw new IllegalArgumentException("max not less than 0");
      }
      finally {}
    }
    this.g = paramInt;
  }
  
  public void setProgress(int paramInt)
  {
    if (paramInt < 0) {
      paramInt = 0;
    }
    for (;;)
    {
      int k = paramInt;
      try
      {
        if (paramInt > this.g) {
          k = this.g;
        }
        if (k <= this.g)
        {
          this.h = k;
          postInvalidate();
        }
        return;
      }
      finally {}
    }
  }
  
  public void setRoundWidth(float paramFloat)
  {
    this.f = paramFloat;
  }
  
  public void setTextColor(int paramInt)
  {
    this.d = paramInt;
  }
  
  public void setTextSize(float paramFloat)
  {
    this.e = paramFloat;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\pdf\RoundProgressBar.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */