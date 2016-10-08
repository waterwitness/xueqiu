package android.support.v4.view;

import android.content.Context;
import android.os.Handler;
import android.view.GestureDetector.OnDoubleTapListener;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;

final class o
  implements n
{
  private static final int e = ;
  private static final int f = ViewConfiguration.getTapTimeout();
  private static final int g = ViewConfiguration.getDoubleTapTimeout();
  private int a;
  private int b;
  private int c;
  private int d;
  private final Handler h = new p(this);
  private final GestureDetector.OnGestureListener i;
  private GestureDetector.OnDoubleTapListener j;
  private boolean k;
  private boolean l;
  private boolean m;
  private boolean n;
  private boolean o;
  private MotionEvent p;
  private MotionEvent q;
  private boolean r;
  private float s;
  private float t;
  private float u;
  private float v;
  private boolean w;
  private VelocityTracker x;
  
  public o(Context paramContext, GestureDetector.OnGestureListener paramOnGestureListener)
  {
    this.i = paramOnGestureListener;
    if ((paramOnGestureListener instanceof GestureDetector.OnDoubleTapListener)) {
      this.j = ((GestureDetector.OnDoubleTapListener)paramOnGestureListener);
    }
    if (paramContext == null) {
      throw new IllegalArgumentException("Context must not be null");
    }
    if (this.i == null) {
      throw new IllegalArgumentException("OnGestureListener must not be null");
    }
    this.w = true;
    paramContext = ViewConfiguration.get(paramContext);
    int i1 = paramContext.getScaledTouchSlop();
    int i2 = paramContext.getScaledDoubleTapSlop();
    this.c = paramContext.getScaledMinimumFlingVelocity();
    this.d = paramContext.getScaledMaximumFlingVelocity();
    this.a = (i1 * i1);
    this.b = (i2 * i2);
  }
  
  public final boolean a(MotionEvent paramMotionEvent)
  {
    int i6 = paramMotionEvent.getAction();
    if (this.x == null) {
      this.x = VelocityTracker.obtain();
    }
    this.x.addMovement(paramMotionEvent);
    int i1;
    if ((i6 & 0xFF) == 6)
    {
      i1 = 1;
      if (i1 == 0) {
        break label127;
      }
    }
    int i5;
    int i4;
    float f1;
    float f2;
    float f4;
    float f3;
    label127:
    for (int i3 = at.b(paramMotionEvent);; i3 = -1)
    {
      i5 = at.c(paramMotionEvent);
      i4 = 0;
      f1 = 0.0F;
      for (f2 = 0.0F; i4 < i5; f2 = f3)
      {
        f4 = f1;
        f3 = f2;
        if (i3 != i4)
        {
          f3 = f2 + at.c(paramMotionEvent, i4);
          f4 = f1 + at.d(paramMotionEvent, i4);
        }
        i4 += 1;
        f1 = f4;
      }
      i1 = 0;
      break;
    }
    if (i1 != 0)
    {
      i1 = i5 - 1;
      f2 /= i1;
      f1 /= i1;
    }
    boolean bool2;
    MotionEvent localMotionEvent;
    Object localObject;
    label757:
    int i2;
    switch (i6 & 0xFF)
    {
    case 4: 
    default: 
    case 5: 
    case 6: 
    case 0: 
    case 2: 
      do
      {
        do
        {
          return false;
          i1 = i5;
          break;
          this.s = f2;
          this.u = f2;
          this.t = f1;
          this.v = f1;
          this.h.removeMessages(1);
          this.h.removeMessages(2);
          this.h.removeMessages(3);
          this.r = false;
          this.n = false;
          this.o = false;
          this.l = false;
        } while (!this.m);
        this.m = false;
        return false;
        this.s = f2;
        this.u = f2;
        this.t = f1;
        this.v = f1;
        this.x.computeCurrentVelocity(1000, this.d);
        i3 = at.b(paramMotionEvent);
        i1 = at.b(paramMotionEvent, i3);
        f1 = bf.a(this.x, i1);
        f2 = bf.b(this.x, i1);
        i1 = 0;
        while (i1 < i5)
        {
          if (i1 != i3)
          {
            i4 = at.b(paramMotionEvent, i1);
            f3 = bf.a(this.x, i4);
            if (bf.b(this.x, i4) * f2 + f3 * f1 < 0.0F)
            {
              this.x.clear();
              return false;
            }
          }
          i1 += 1;
        }
        if (this.j != null)
        {
          bool2 = this.h.hasMessages(3);
          if (bool2) {
            this.h.removeMessages(3);
          }
          if ((this.p != null) && (this.q != null) && (bool2))
          {
            localMotionEvent = this.p;
            localObject = this.q;
            if ((this.o) && (paramMotionEvent.getEventTime() - ((MotionEvent)localObject).getEventTime() <= g))
            {
              i1 = (int)localMotionEvent.getX() - (int)paramMotionEvent.getX();
              i3 = (int)localMotionEvent.getY() - (int)paramMotionEvent.getY();
              if (i3 * i3 + i1 * i1 < this.b)
              {
                i1 = 1;
                if (i1 == 0) {
                  break label757;
                }
                this.r = true;
              }
            }
          }
        }
        for (boolean bool1 = this.j.onDoubleTap(this.p) | false | this.j.onDoubleTapEvent(paramMotionEvent);; bool1 = false)
        {
          this.s = f2;
          this.u = f2;
          this.t = f1;
          this.v = f1;
          if (this.p != null) {
            this.p.recycle();
          }
          this.p = MotionEvent.obtain(paramMotionEvent);
          this.n = true;
          this.o = true;
          this.k = true;
          this.m = false;
          this.l = false;
          if (this.w)
          {
            this.h.removeMessages(2);
            this.h.sendEmptyMessageAtTime(2, this.p.getDownTime() + f + e);
          }
          this.h.sendEmptyMessageAtTime(1, this.p.getDownTime() + f);
          return bool1 | this.i.onDown(paramMotionEvent);
          bool1 = false;
          break;
          this.h.sendEmptyMessageDelayed(3, g);
        }
      } while (this.m);
      f3 = this.s - f2;
      f4 = this.t - f1;
      if (this.r) {
        return this.j.onDoubleTapEvent(paramMotionEvent) | false;
      }
      if (this.n)
      {
        i2 = (int)(f2 - this.u);
        i3 = (int)(f1 - this.v);
        i2 = i2 * i2 + i3 * i3;
        if (i2 <= this.a) {
          break label1350;
        }
        bool2 = this.i.onScroll(this.p, paramMotionEvent, f3, f4);
        this.s = f2;
        this.t = f1;
        this.n = false;
        this.h.removeMessages(3);
        this.h.removeMessages(1);
        this.h.removeMessages(2);
      }
      break;
    }
    for (;;)
    {
      if (i2 > this.a) {
        this.o = false;
      }
      return bool2;
      if ((Math.abs(f3) < 1.0F) && (Math.abs(f4) < 1.0F)) {
        break;
      }
      bool2 = this.i.onScroll(this.p, paramMotionEvent, f3, f4);
      this.s = f2;
      this.t = f1;
      return bool2;
      this.k = false;
      localMotionEvent = MotionEvent.obtain(paramMotionEvent);
      if (this.r) {
        bool2 = this.j.onDoubleTapEvent(paramMotionEvent) | false;
      }
      for (;;)
      {
        if (this.q != null) {
          this.q.recycle();
        }
        this.q = localMotionEvent;
        if (this.x != null)
        {
          this.x.recycle();
          this.x = null;
        }
        this.r = false;
        this.l = false;
        this.h.removeMessages(1);
        this.h.removeMessages(2);
        return bool2;
        if (this.m)
        {
          this.h.removeMessages(3);
          this.m = false;
          bool2 = false;
        }
        else if (this.n)
        {
          boolean bool3 = this.i.onSingleTapUp(paramMotionEvent);
          bool2 = bool3;
          if (this.l)
          {
            bool2 = bool3;
            if (this.j != null)
            {
              this.j.onSingleTapConfirmed(paramMotionEvent);
              bool2 = bool3;
            }
          }
        }
        else
        {
          localObject = this.x;
          i2 = at.b(paramMotionEvent, 0);
          ((VelocityTracker)localObject).computeCurrentVelocity(1000, this.d);
          f1 = bf.b((VelocityTracker)localObject, i2);
          f2 = bf.a((VelocityTracker)localObject, i2);
          if ((Math.abs(f1) > this.c) || (Math.abs(f2) > this.c))
          {
            bool2 = this.i.onFling(this.p, paramMotionEvent, f2, f1);
            continue;
            this.h.removeMessages(1);
            this.h.removeMessages(2);
            this.h.removeMessages(3);
            this.x.recycle();
            this.x = null;
            this.r = false;
            this.k = false;
            this.n = false;
            this.o = false;
            this.l = false;
            if (!this.m) {
              break;
            }
            this.m = false;
            return false;
          }
          bool2 = false;
        }
      }
      label1350:
      bool2 = false;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\view\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */