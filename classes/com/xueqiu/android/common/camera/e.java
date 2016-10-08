package com.xueqiu.android.common.camera;

import android.graphics.Rect;
import android.graphics.RectF;
import android.hardware.Camera.Size;
import com.xueqiu.android.base.util.v;
import java.util.Comparator;

public final class e
{
  private static int a(float paramFloat, int paramInt)
  {
    paramInt = (int)(2000.0F * paramFloat / paramInt - 1000.0F);
    if (paramInt > 1000) {
      return 1000;
    }
    if (paramInt < 64536) {
      return 64536;
    }
    return paramInt;
  }
  
  public static Rect a(float paramFloat1, float paramFloat2, float paramFloat3, int paramInt1, int paramInt2)
  {
    int i = Float.valueOf(100.0F * paramFloat3).intValue();
    v.c("calculateTapArea", "x--->" + paramFloat1 + ",,,y--->" + paramFloat2);
    RectF localRectF1 = new RectF(paramFloat1 - i, paramFloat2 - i, i + paramFloat1, i + paramFloat2);
    RectF localRectF2 = new RectF(a(localRectF1.left, paramInt1), a(localRectF1.top, paramInt2), a(localRectF1.right, paramInt1), a(localRectF1.bottom, paramInt2));
    v.c("calculateTapArea", "rectSource: " + localRectF1);
    v.c("calculateTapArea", "rectF: " + localRectF2);
    return new Rect(Math.round(localRectF2.left), Math.round(localRectF2.top), Math.round(localRectF2.right), Math.round(localRectF2.bottom));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\camera\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */