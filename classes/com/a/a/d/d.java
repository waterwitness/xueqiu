package com.a.a.d;

import android.graphics.PointF;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

public final class d
  implements View.OnTouchListener
{
  public f a;
  public g b;
  public e c;
  private int d = h.a;
  private float e;
  private float f;
  private float g;
  private float h;
  private float i;
  private float j;
  private float k;
  private long l;
  
  private void a(MotionEvent paramMotionEvent)
  {
    this.i = c(paramMotionEvent);
  }
  
  private void b(MotionEvent paramMotionEvent)
  {
    this.e = paramMotionEvent.getX(0);
    this.f = paramMotionEvent.getY(0);
    this.a.a(this.e, this.f);
  }
  
  private static float c(MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getPointerCount() < 2) {
      return 0.0F;
    }
    return PointF.length(paramMotionEvent.getX(0) - paramMotionEvent.getX(1), paramMotionEvent.getY(0) - paramMotionEvent.getY(1));
  }
  
  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    int n = 0;
    switch (paramMotionEvent.getAction())
    {
    default: 
    case 0: 
    case 261: 
    case 262: 
    case 1: 
      int m;
      do
      {
        return true;
        b(paramMotionEvent);
        this.d = h.c;
        this.j = paramMotionEvent.getX();
        this.k = paramMotionEvent.getY();
        return true;
        b(paramMotionEvent);
        a(paramMotionEvent);
        this.d = h.b;
        return true;
        this.d = h.c;
        return true;
        this.d = h.a;
        this.a.c(this.e, this.f);
        f1 = this.j;
        f2 = this.k;
        float f3 = paramMotionEvent.getX();
        float f4 = paramMotionEvent.getY();
        m = n;
        if (paramMotionEvent != null)
        {
          long l1 = paramMotionEvent.getEventTime();
          long l2 = paramMotionEvent.getDownTime();
          f1 = PointF.length(f1 - f3, f2 - f4);
          m = n;
          if (l1 - l2 < 500L)
          {
            m = n;
            if (f1 < 5.0F) {
              m = 1;
            }
          }
        }
      } while (m == 0);
      if ((float)(System.currentTimeMillis() - this.l) < 280.0F)
      {
        if (this.c != null)
        {
          paramView = this.c;
          paramMotionEvent.getX();
          paramMotionEvent.getY();
          paramView.a();
        }
        this.l = 0L;
        return true;
      }
      this.l = System.currentTimeMillis();
      return true;
    case 6: 
      this.e = this.g;
      this.f = this.h;
      this.d = h.c;
      return true;
    case 5: 
      this.g = paramMotionEvent.getX(0);
      this.h = paramMotionEvent.getY(0);
      b(paramMotionEvent);
      a(paramMotionEvent);
      this.d = h.b;
      return true;
    }
    switch (1.a[(this.d - 1)])
    {
    default: 
      return true;
    case 1: 
      this.g = paramMotionEvent.getX(1);
      this.h = paramMotionEvent.getY(1);
      f1 = c(paramMotionEvent);
      if (this.b != null) {
        this.b.a(f1 / this.i, new PointF(paramMotionEvent.getX(0), paramMotionEvent.getY(0)));
      }
      this.i = f1;
    }
    float f1 = paramMotionEvent.getX(0);
    float f2 = paramMotionEvent.getY(0);
    if (this.a != null) {
      this.a.b(f1 - this.e, f2 - this.f);
    }
    this.e = f1;
    this.f = f2;
    return true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\a\a\d\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */