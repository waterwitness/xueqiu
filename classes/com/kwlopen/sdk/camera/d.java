package com.kwlopen.sdk.camera;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Typeface;
import android.view.View;

final class d
  extends View
{
  private Paint b = new Paint(1);
  private Paint c;
  
  public d(MaskSurfaceView paramMaskSurfaceView, Context paramContext)
  {
    super(paramContext);
    this.b.setTypeface(Typeface.DEFAULT_BOLD);
    this.b.setColor(-16711936);
    this.b.setStyle(Paint.Style.STROKE);
    this.b.setStrokeWidth(5.0F);
    this.b.setAlpha(180);
    this.c = new Paint(1);
    this.c.setColor(-16777216);
    this.c.setStyle(Paint.Style.FILL);
    this.c.setAlpha(80);
    paramMaskSurfaceView.c = (paramMaskSurfaceView.a * 0.9F);
    paramMaskSurfaceView.d = (paramMaskSurfaceView.c * 0.63F);
  }
  
  protected final void onDraw(Canvas paramCanvas)
  {
    if ((this.a.d == 0.0F) && (this.a.c == 0.0F)) {}
    while ((this.a.d == this.a.b) || (this.a.c == this.a.a)) {
      return;
    }
    float f1 = Math.abs((this.a.b - this.a.d) / 2.0F);
    float f2 = Math.abs((this.a.a - this.a.c) / 2.0F);
    paramCanvas.drawRect(0.0F, 0.0F, this.a.a, f1, this.c);
    paramCanvas.drawRect(this.a.a - f2, f1, this.a.a, this.a.b - f1, this.c);
    paramCanvas.drawRect(0.0F, this.a.b - f1, this.a.a, this.a.b, this.c);
    paramCanvas.drawRect(0.0F, f1, f2, f1 + this.a.d, this.c);
    paramCanvas.drawRect(f2, f1, f2 + this.a.c, f1 + this.a.d, this.b);
    super.onDraw(paramCanvas);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\kwlopen\sdk\camera\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */