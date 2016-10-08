package com.nhaarman.listviewanimations.itemmanipulation.b;

import android.graphics.Rect;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.c.a.r;

public abstract class f
  implements View.OnTouchListener, com.nhaarman.listviewanimations.itemmanipulation.b
{
  private final int a;
  @NonNull
  final com.nhaarman.listviewanimations.a.d b;
  public float c;
  public boolean d;
  public boolean e;
  public int f;
  @Nullable
  public a g;
  public int h;
  private final int i;
  private final int j;
  private final long k;
  private int l;
  private float m;
  private float n;
  private boolean o;
  @Nullable
  private VelocityTracker p;
  @Nullable
  private View q;
  @Nullable
  private View r;
  private int s;
  private int t;
  private boolean u;
  
  private static Rect a(View paramView1, View paramView2)
  {
    Rect localRect = new Rect(paramView2.getLeft(), paramView2.getTop(), paramView2.getRight(), paramView2.getBottom());
    if (!paramView1.equals(paramView2)) {
      for (;;)
      {
        paramView2 = (ViewGroup)paramView2.getParent();
        if (paramView2.equals(paramView1)) {
          break;
        }
        localRect.offset(paramView2.getLeft(), paramView2.getTop());
      }
    }
    return localRect;
  }
  
  private void a(@NonNull View paramView, int paramInt, boolean paramBoolean)
  {
    if (this.l < 2) {
      this.l = this.b.j().getWidth();
    }
    if (paramBoolean) {}
    for (float f1 = this.l;; f1 = -this.l)
    {
      r localr1 = r.a(paramView, "translationX", new float[] { f1 });
      r localr2 = r.a(paramView, "alpha", new float[] { 0.0F });
      com.c.a.d locald = new com.c.a.d();
      locald.a(new com.c.a.a[] { localr1, localr2 });
      locald.b(this.k);
      locald.a(new g(this, paramView, paramInt, (byte)0));
      locald.a();
      return;
    }
  }
  
  private void b()
  {
    if (this.q == null) {
      return;
    }
    r localr1 = r.a(this.r, "translationX", new float[] { 0.0F });
    r localr2 = r.a(this.r, "alpha", new float[] { 1.0F });
    com.c.a.d locald = new com.c.a.d();
    locald.a(new com.c.a.a[] { localr1, localr2 });
    locald.b(this.k);
    locald.a(new h(this, this.q, this.s, (byte)0));
    locald.a();
  }
  
  private void c()
  {
    if (this.p != null) {
      this.p.recycle();
    }
    this.p = null;
    this.m = 0.0F;
    this.n = 0.0F;
    this.q = null;
    this.r = null;
    this.s = -1;
    this.d = false;
    this.o = false;
  }
  
  public void a() {}
  
  public void a(int paramInt)
  {
    int i1 = this.b.d();
    int i2 = this.b.e();
    if ((paramInt < i1) || (paramInt > i2)) {
      throw new IllegalArgumentException("View for position " + paramInt + " not visible!");
    }
    View localView = com.nhaarman.listviewanimations.a.b.a(this.b, paramInt);
    if (localView == null) {
      throw new IllegalStateException("No view found for position " + paramInt);
    }
    a(localView, paramInt, true);
    this.h += 1;
    this.t -= 1;
  }
  
  public void a(@NonNull View paramView)
  {
    com.c.c.a.a(paramView, 1.0F);
    com.c.c.a.b(paramView, 0.0F);
  }
  
  public abstract void a(@NonNull View paramView, int paramInt);
  
  public final boolean a(@NonNull MotionEvent paramMotionEvent)
  {
    return onTouch(null, paramMotionEvent);
  }
  
  public abstract boolean c(int paramInt);
  
  public boolean onTouch(@Nullable View paramView, @NonNull MotionEvent paramMotionEvent)
  {
    int i1 = 1;
    if (this.b.i() == null) {}
    do
    {
      return false;
      if ((this.t == -1) || (this.h == 0)) {
        this.t = (this.b.f() - this.b.h());
      }
      if (this.l < 2) {
        this.l = this.b.j().getWidth();
      }
      switch (paramMotionEvent.getActionMasked())
      {
      default: 
        return false;
      }
    } while (!this.u);
    Rect localRect = new Rect();
    int i2 = this.b.g();
    int i3 = (int)paramMotionEvent.getX();
    int i4 = (int)paramMotionEvent.getY();
    Object localObject = null;
    i1 = 0;
    label161:
    if ((i1 < i2) && (localObject == null))
    {
      View localView = this.b.a(i1);
      if (localView == null) {
        break label961;
      }
      localView.getHitRect(localRect);
      if (!localRect.contains(i3, i4)) {
        break label961;
      }
      localObject = localView;
    }
    label403:
    label885:
    label891:
    label952:
    label961:
    for (;;)
    {
      i1 += 1;
      break label161;
      if (localObject == null) {
        break;
      }
      i1 = com.nhaarman.listviewanimations.a.b.a(this.b, (View)localObject);
      boolean bool;
      if (this.b.i() == null)
      {
        bool = false;
        this.o = bool;
        if ((this.s == i1) || (i1 >= this.t)) {
          break;
        }
        if (paramView != null) {
          paramView.onTouchEvent(paramMotionEvent);
        }
        if (!this.e) {
          break label403;
        }
        this.b.j().requestDisallowInterceptTouchEvent(true);
      }
      for (;;)
      {
        this.m = paramMotionEvent.getX();
        this.n = paramMotionEvent.getY();
        this.q = ((View)localObject);
        this.r = ((View)localObject);
        this.s = i1;
        this.p = VelocityTracker.obtain();
        this.p.addMovement(paramMotionEvent);
        return true;
        if (this.g != null)
        {
          this.b.i().getItemId(i1);
          bool = this.g.a();
          break;
        }
        bool = true;
        break;
        if (this.f != 0)
        {
          this.e = false;
          paramView = ((View)localObject).findViewById(this.f);
          if ((paramView != null) && (a(this.b.j(), paramView).contains((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY()))) {
            this.b.j().requestDisallowInterceptTouchEvent(true);
          }
        }
      }
      if ((this.p == null) || (this.q == null)) {
        break;
      }
      this.p.addMovement(paramMotionEvent);
      float f1 = paramMotionEvent.getX() - this.m;
      float f2 = paramMotionEvent.getY();
      float f3 = this.n;
      if ((Math.abs(f1) > this.a) && (Math.abs(f1) > Math.abs(f2 - f3)))
      {
        if (!this.d) {
          this.h += 1;
        }
        this.d = true;
        this.b.j().requestDisallowInterceptTouchEvent(true);
        if (paramView != null)
        {
          localObject = MotionEvent.obtain(paramMotionEvent);
          ((MotionEvent)localObject).setAction(paramMotionEvent.getActionIndex() << 8 | 0x3);
          paramView.onTouchEvent((MotionEvent)localObject);
          ((MotionEvent)localObject).recycle();
        }
      }
      if (!this.d) {
        break;
      }
      if (this.o)
      {
        com.c.c.a.b(this.r, f1);
        com.c.c.a.a(this.r, Math.max(this.c, Math.min(1.0F, 1.0F - Math.abs(f1) * 2.0F / this.l)));
      }
      for (;;)
      {
        return true;
        com.c.c.a.b(this.r, f1 * 0.1F);
      }
      if ((this.p == null) || (this.q == null)) {
        break;
      }
      if ((this.s != -1) && (this.d)) {
        b();
      }
      c();
      return false;
      if ((this.p == null) || (this.q == null)) {
        break;
      }
      if (this.d)
      {
        if (!this.o) {
          break label952;
        }
        f1 = paramMotionEvent.getX() - this.m;
        this.p.addMovement(paramMotionEvent);
        this.p.computeCurrentVelocity(1000);
        f2 = Math.abs(this.p.getXVelocity());
        f3 = Math.abs(this.p.getYVelocity());
        if (Math.abs(f1) <= this.l / 2) {
          break label891;
        }
        if (f1 <= 0.0F) {
          break label885;
        }
        bool = true;
      }
      for (;;)
      {
        if (i1 != 0)
        {
          if (c(this.s)) {
            this.t -= 1;
          }
          if (this.q != null) {
            a(this.q, this.s, bool);
          }
        }
        for (;;)
        {
          c();
          return false;
          bool = false;
          break;
          if ((this.i > f2) || (f2 > this.j) || (f3 >= f2)) {
            break label952;
          }
          if (this.p.getXVelocity() > 0.0F)
          {
            bool = true;
            break;
          }
          bool = false;
          break;
          b();
        }
        bool = false;
        i1 = 0;
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\nhaarman\listviewanimations\itemmanipulation\b\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */