package com.xueqiu.android.stockchart.view;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.Style;
import android.preference.PreferenceManager;
import android.util.AttributeSet;
import android.view.View;
import com.xueqiu.android.stockchart.b;
import com.xueqiu.android.stockchart.f.a;

public class BaseView
  extends View
{
  public TypedArray a = getContext().getTheme().obtainStyledAttributes(new int[] { b.attr_chart_border_color, b.attr_chart_split_color, b.attr_chart_text_color, b.attr_chart_period_container_bg_color, b.attr_chart_red_color, b.attr_chart_green_color, b.attr_bg_color });
  private int b = Integer.parseInt(PreferenceManager.getDefaultSharedPreferences(getContext()).getString("stock_color", "1"));
  private float c;
  private float d;
  
  public BaseView(Context paramContext)
  {
    super(paramContext);
  }
  
  public BaseView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public BaseView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private Paint a(int paramInt)
  {
    Paint localPaint = getPaint();
    localPaint.setColor(paramInt);
    localPaint.setStyle(Paint.Style.STROKE);
    localPaint.setStrokeWidth(0.0F);
    return localPaint;
  }
  
  public final int a(float paramFloat)
  {
    int i = getResources().getColor(this.a.getResourceId(4, 0));
    int j = getResources().getColor(this.a.getResourceId(5, 0));
    int k = getResources().getColor(this.a.getResourceId(2, 0));
    if (paramFloat > 0.0F) {
      if (this.b != 0) {}
    }
    do
    {
      return j;
      return i;
      if (paramFloat >= 0.0F) {
        break;
      }
    } while (this.b != 0);
    return i;
    return k;
  }
  
  public final Paint a(float paramFloat, Paint.Align paramAlign)
  {
    Paint localPaint = getPaint();
    localPaint.setTextSize(a.a(getContext(), paramFloat));
    localPaint.setColor(getResources().getColor(this.a.getResourceId(2, 0)));
    localPaint.setTextAlign(paramAlign);
    return localPaint;
  }
  
  public final Paint a(Paint.Align paramAlign)
  {
    Paint localPaint = getPaint();
    localPaint.setColor(getResources().getColor(this.a.getResourceId(2, 0)));
    localPaint.setTextAlign(paramAlign);
    return localPaint;
  }
  
  public Paint getBorderLinePaint()
  {
    return a(getResources().getColor(this.a.getResourceId(0, 0)));
  }
  
  public float getFontSize()
  {
    return a.a(getContext(), 10.0F);
  }
  
  public Paint getPaint()
  {
    Paint localPaint = new Paint();
    localPaint.setAntiAlias(true);
    return localPaint;
  }
  
  public Paint getSplitLinePaint()
  {
    Paint localPaint = a(getResources().getColor(this.a.getResourceId(1, 0)));
    localPaint.setStrokeWidth(0.0F);
    return localPaint;
  }
  
  public float getViewHeight()
  {
    return this.d;
  }
  
  public float getViewWidth()
  {
    return this.c;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    this.d = getHeight();
    this.c = getWidth();
  }
  
  public void setStockColor(int paramInt)
  {
    this.b = paramInt;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stockchart\view\BaseView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */