package com.xueqiu.chart.c;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.TypedValue;

public final class c
{
  public static final int a = Color.parseColor("#666666");
  
  public static float a(Context paramContext, float paramFloat)
  {
    return TypedValue.applyDimension(1, paramFloat, paramContext.getResources().getDisplayMetrics());
  }
  
  public static float a(Paint paramPaint, String paramString)
  {
    Rect localRect = new Rect();
    paramPaint.getTextBounds(paramString, 0, paramString.length(), localRect);
    return localRect.height();
  }
  
  public static float b(Paint paramPaint, String paramString)
  {
    return paramPaint.measureText(paramString);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\chart\c\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */