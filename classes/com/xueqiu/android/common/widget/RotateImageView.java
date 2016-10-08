package com.xueqiu.android.common.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PaintFlagsDrawFilter;
import android.util.AttributeSet;
import android.widget.ImageView;

public class RotateImageView
  extends ImageView
{
  private PaintFlagsDrawFilter a = new PaintFlagsDrawFilter(0, 3);
  
  public RotateImageView(Context paramContext)
  {
    super(paramContext);
  }
  
  public RotateImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public RotateImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    paramCanvas.setDrawFilter(this.a);
    super.onDraw(paramCanvas);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\RotateImageView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */