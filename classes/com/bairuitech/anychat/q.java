package com.bairuitech.anychat;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;

final class q
  implements SurfaceHolder.Callback
{
  int a = -1;
  private Bitmap b = null;
  private SurfaceHolder c;
  private Rect d = new Rect();
  private Rect e = new Rect();
  private float f = 1.0F;
  private float g = 1.0F;
  private float h = 0.33333334F;
  
  public q(SurfaceHolder paramSurfaceHolder)
  {
    if (paramSurfaceHolder == null) {
      return;
    }
    this.a = 0;
    this.c = paramSurfaceHolder;
    paramSurfaceHolder.addCallback(this);
  }
  
  private void a(int paramInt1, int paramInt2)
  {
    this.e.right = ((int)(this.e.left + this.g * paramInt1));
    this.e.bottom = ((int)(this.e.top + this.f * paramInt2));
  }
  
  public final void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3)
  {
    a(paramInt2, paramInt3);
  }
  
  public final void surfaceCreated(SurfaceHolder paramSurfaceHolder)
  {
    Canvas localCanvas = paramSurfaceHolder.lockCanvas();
    if (localCanvas != null)
    {
      Rect localRect = paramSurfaceHolder.getSurfaceFrame();
      if (localRect != null) {
        a(localRect.right - localRect.left, localRect.bottom - localRect.top);
      }
      paramSurfaceHolder.unlockCanvasAndPost(localCanvas);
    }
  }
  
  public final void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
  {
    this.b = null;
    this.c = null;
    this.a = -1;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\bairuitech\anychat\q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */