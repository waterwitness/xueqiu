package com.xueqiu.android.common.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View.MeasureSpec;
import android.widget.ImageView;
import com.xueqiu.android.R.styleable;

public class CircularImageView
  extends ImageView
{
  private int a;
  private int b;
  private Bitmap c;
  private Paint d = new Paint();
  private Paint e;
  private boolean f = false;
  private BitmapShader g;
  
  public CircularImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.d.setAntiAlias(true);
    this.e = new Paint();
    this.e.setAntiAlias(true);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.CircularImageView, paramInt, 0);
    if (paramContext.getBoolean(0, true))
    {
      setBorderWidth(paramContext.getDimensionPixelOffset(1, (int)(getContext().getResources().getDisplayMetrics().density * 4.0F + 0.5F)));
      setBorderColor(paramContext.getColor(2, -1));
    }
    if (paramContext.getBoolean(3, false))
    {
      setLayerType(1, this.e);
      this.e.setShadowLayer(4.0F, 0.0F, 2.0F, -16777216);
    }
  }
  
  public void invalidate()
  {
    super.invalidate();
    this.f = false;
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    Drawable localDrawable = getDrawable();
    Bitmap localBitmap;
    if (localDrawable == null) {
      localBitmap = null;
    }
    for (;;)
    {
      this.c = localBitmap;
      if (this.c != null)
      {
        if (!this.f)
        {
          this.b = paramCanvas.getWidth();
          if (paramCanvas.getHeight() < this.b) {
            this.b = paramCanvas.getHeight();
          }
          if (!isInEditMode()) {
            this.g = new BitmapShader(Bitmap.createScaledBitmap(this.c, this.b, this.b, false), Shader.TileMode.CLAMP, Shader.TileMode.CLAMP);
          }
          this.f = true;
        }
        this.b = paramCanvas.getWidth();
        if (paramCanvas.getHeight() < this.b) {
          this.b = paramCanvas.getHeight();
        }
        if (!isInEditMode()) {
          this.d.setShader(this.g);
        }
        int i = (this.b - this.a * 2) / 2;
        paramCanvas.drawCircle(this.a + i, this.a + i, (this.b - this.a * 2) / 2 + this.a - 4.0F, this.e);
        paramCanvas.drawCircle(this.a + i, i + this.a, (this.b - this.a * 2) / 2 - 4.0F, this.d);
      }
      return;
      if ((localDrawable instanceof BitmapDrawable))
      {
        localBitmap = ((BitmapDrawable)localDrawable).getBitmap();
      }
      else
      {
        localBitmap = Bitmap.createBitmap(localDrawable.getIntrinsicWidth(), localDrawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Canvas localCanvas = new Canvas(localBitmap);
        localDrawable.setBounds(0, 0, localCanvas.getWidth(), localCanvas.getHeight());
        localDrawable.draw(localCanvas);
      }
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.getMode(paramInt1);
    paramInt1 = View.MeasureSpec.getSize(paramInt1);
    if (i == 1073741824)
    {
      i = View.MeasureSpec.getMode(paramInt2);
      paramInt2 = View.MeasureSpec.getSize(paramInt2);
      if (i != 1073741824) {
        break label55;
      }
    }
    for (;;)
    {
      setMeasuredDimension(paramInt1, paramInt2 + 2);
      return;
      if (i == Integer.MIN_VALUE) {
        break;
      }
      paramInt1 = this.b;
      break;
      label55:
      if (i != Integer.MIN_VALUE) {
        paramInt2 = this.b;
      }
    }
  }
  
  public void setBorderColor(int paramInt)
  {
    if (this.e != null) {
      this.e.setColor(paramInt);
    }
    invalidate();
  }
  
  public void setBorderWidth(int paramInt)
  {
    this.a = paramInt;
    requestLayout();
    invalidate();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\CircularImageView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */