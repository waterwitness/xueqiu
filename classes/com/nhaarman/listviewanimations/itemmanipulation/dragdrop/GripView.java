package com.nhaarman.listviewanimations.itemmanipulation.dragdrop;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.View.MeasureSpec;

public class GripView
  extends View
{
  private static final int[] a = { 16843173 };
  private final Paint b = new Paint(1);
  private float c;
  private float d;
  private int e = 2;
  private int f;
  
  public GripView(@NonNull Context paramContext, @Nullable AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    int i = getResources().getColor(17170432);
    paramInt = i;
    if (paramAttributeSet != null)
    {
      paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, a);
      paramInt = paramAttributeSet.getColor(0, i);
      paramAttributeSet.recycle();
    }
    this.b.setColor(paramInt);
    this.c = ((int)TypedValue.applyDimension(1, 2.0F, paramContext.getResources().getDisplayMetrics()));
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    int i = 0;
    while (i < this.e)
    {
      float f1 = getPaddingLeft();
      float f2 = i * 2;
      float f3 = this.c;
      int j = 0;
      while (j < this.f)
      {
        float f4 = this.d;
        float f5 = j * 2;
        float f6 = this.c;
        paramCanvas.drawCircle(this.c + (f2 * f3 * 2.0F + f1), f4 + f5 * f6 * 2.0F + this.c, this.c, this.b);
        j += 1;
      }
      i += 1;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(View.MeasureSpec.makeMeasureSpec(getPaddingLeft() + getPaddingRight() + (int)(this.e * (this.c * 4.0F - 2.0F)), 1073741824), paramInt2);
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    this.f = ((int)((paramInt2 - getPaddingTop() - getPaddingBottom()) / (this.c * 4.0F)));
    this.d = ((paramInt2 - this.f * this.c * 2.0F - (this.f - 1) * this.c * 2.0F) / 2.0F);
  }
  
  public void setColor(int paramInt)
  {
    this.b.setColor(getResources().getColor(paramInt));
  }
  
  public void setColumnCount(int paramInt)
  {
    this.e = paramInt;
    requestLayout();
  }
  
  public void setDotSizeRadiusPx(float paramFloat)
  {
    this.c = paramFloat;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\nhaarman\listviewanimations\itemmanipulation\dragdrop\GripView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */