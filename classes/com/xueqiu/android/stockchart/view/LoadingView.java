package com.xueqiu.android.stockchart.view;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.util.AttributeSet;

public class LoadingView
  extends BaseView
{
  public LoadingView(Context paramContext)
  {
    super(paramContext);
  }
  
  public LoadingView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    Paint localPaint = new Paint();
    localPaint.setColor(-16777216);
    localPaint.setStyle(Paint.Style.FILL);
    localPaint.setAlpha(20);
    float f1 = getViewWidth() / 2.0F;
    float f2 = getViewHeight() / 2.0F;
    localPaint = getBorderLinePaint();
    float f3 = f2 - 25.0F;
    float f4 = f1 - 100.0F;
    float f5 = 100.0F + f1;
    float f6 = 25.0F + f2;
    Path localPath = new Path();
    localPath.moveTo(f4, f3);
    localPath.lineTo(f5, f3);
    localPath.lineTo(f5, f6);
    localPath.lineTo(f4, f6);
    localPath.lineTo(f4, f3);
    paramCanvas.drawPath(localPath, localPaint);
    localPaint.setColor(getResources().getColor(this.a.getResourceId(3, 0)));
    localPaint.setStyle(Paint.Style.FILL);
    paramCanvas.drawRect(f4, f3, f5, f6, localPaint);
    localPaint.setColor(getResources().getColor(this.a.getResourceId(2, 0)));
    localPaint.setTextAlign(Paint.Align.CENTER);
    localPaint.setTextSize(24.0F);
    paramCanvas.drawText("数据加载中...", f1, 10.0F + f2, localPaint);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stockchart\view\LoadingView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */