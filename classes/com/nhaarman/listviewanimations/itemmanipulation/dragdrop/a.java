package com.nhaarman.listviewanimations.itemmanipulation.dragdrop;

import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.WrapperListAdapter;
import com.nhaarman.listviewanimations.a.f;
import com.nhaarman.listviewanimations.itemmanipulation.DynamicListView;

@TargetApi(14)
public class a
  implements com.nhaarman.listviewanimations.itemmanipulation.b
{
  @NonNull
  public final g a;
  @Nullable
  public m b;
  public long c;
  @NonNull
  public k d;
  @Nullable
  public n e;
  @NonNull
  private final j g;
  @NonNull
  private final i h;
  private final int i;
  @Nullable
  private ListAdapter j;
  @Nullable
  private View k;
  private float l = -1.0F;
  private int m = -1;
  private float n;
  private float o;
  private boolean p;
  
  static
  {
    if (!a.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      f = bool;
      return;
    }
  }
  
  public a(@NonNull DynamicListView paramDynamicListView)
  {
    this(new l(paramDynamicListView));
  }
  
  private a(@NonNull j paramj)
  {
    this.g = paramj;
    if (this.g.i() != null) {
      a(this.g.i());
    }
    this.a = new g(this);
    this.g.a(this.a);
    this.d = new b((byte)0);
    if (Build.VERSION.SDK_INT <= 19) {}
    for (this.h = new c(this, (byte)0);; this.h = new e(this, (byte)0))
    {
      this.c = -1L;
      this.i = ViewConfiguration.get(paramj.j().getContext()).getScaledTouchSlop();
      return;
    }
  }
  
  private int a(long paramLong)
  {
    View localView = b(paramLong);
    if (localView == null) {
      return -1;
    }
    return this.g.a(localView);
  }
  
  private void a(View paramView, long paramLong, float paramFloat)
  {
    if ((!f) && (this.b == null)) {
      throw new AssertionError();
    }
    if ((!f) && (this.j == null)) {
      throw new AssertionError();
    }
    if ((!f) && (this.k == null)) {
      throw new AssertionError();
    }
    int i1 = this.g.a(paramView);
    int i2 = this.g.a(this.k);
    ((f)this.j).a(i1 - this.g.h(), i2 - this.g.h());
    ((BaseAdapter)this.j).notifyDataSetChanged();
    m localm = this.b;
    i2 = paramView.getHeight();
    i1 = i2;
    if (localm.a()) {
      i1 = -i2;
    }
    localm.a += i1;
    float f1 = localm.b;
    localm.b = (i1 + f1);
    this.h.a(paramLong, paramFloat);
  }
  
  private boolean a()
  {
    if (this.k == null) {
      return false;
    }
    if ((!f) && (this.b == null)) {
      throw new AssertionError();
    }
    ValueAnimator localValueAnimator = ValueAnimator.ofInt(new int[] { this.b.getBounds().top, (int)this.k.getY() });
    h localh = new h(this, this.b, this.k, (byte)0);
    localValueAnimator.addUpdateListener(localh);
    localValueAnimator.addListener(localh);
    localValueAnimator.start();
    int i1 = a(this.c);
    int i2 = this.g.h();
    if ((this.m != i1 - i2) && (this.e != null)) {
      this.e.a();
    }
    return true;
  }
  
  @Nullable
  private View b(long paramLong)
  {
    ListAdapter localListAdapter = this.j;
    Object localObject2;
    if ((paramLong == -1L) || (localListAdapter == null))
    {
      localObject2 = null;
      return (View)localObject2;
    }
    int i2 = this.g.d();
    Object localObject1 = null;
    int i1 = 0;
    for (;;)
    {
      localObject2 = localObject1;
      if (i1 >= this.g.g()) {
        break;
      }
      localObject2 = localObject1;
      if (localObject1 != null) {
        break;
      }
      int i3 = i2 + i1;
      localObject2 = localObject1;
      if (i3 - this.g.h() >= 0)
      {
        localObject2 = localObject1;
        if (localListAdapter.getItemId(i3 - this.g.h()) == paramLong) {
          localObject2 = this.g.a(i1);
        }
      }
      i1 += 1;
      localObject1 = localObject2;
    }
  }
  
  public final void a(@NonNull ListAdapter paramListAdapter)
  {
    ListAdapter localListAdapter = paramListAdapter;
    if ((paramListAdapter instanceof WrapperListAdapter)) {
      localListAdapter = ((WrapperListAdapter)paramListAdapter).getWrappedAdapter();
    }
    if (!localListAdapter.hasStableIds()) {
      throw new IllegalStateException("Adapter doesn't have stable ids! Make sure your adapter has stable ids, and override hasStableIds() to return true.");
    }
    if (!(localListAdapter instanceof f)) {
      throw new IllegalArgumentException("Adapter should implement Swappable!");
    }
    this.j = localListAdapter;
  }
  
  public final boolean a(@NonNull MotionEvent paramMotionEvent)
  {
    long l2 = -1L;
    boolean bool2 = true;
    if (!this.p)
    {
      boolean bool1;
      switch (paramMotionEvent.getAction() & 0xFF)
      {
      default: 
        bool1 = false;
      case 0: 
      case 2: 
        int i1;
        Object localObject;
        do
        {
          do
          {
            do
            {
              do
              {
                return bool1;
                this.l = paramMotionEvent.getY();
                this.n = paramMotionEvent.getRawX();
                this.o = paramMotionEvent.getRawY();
                return true;
                this.l = paramMotionEvent.getY();
                float f1 = paramMotionEvent.getRawX();
                float f2 = this.n;
                float f3 = paramMotionEvent.getRawY() - this.o;
                if ((this.b != null) || (Math.abs(f3) <= this.i) || (Math.abs(f3) <= Math.abs(f1 - f2))) {
                  break;
                }
                i1 = this.g.a((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY());
                if (i1 == -1) {
                  break label791;
                }
                localObject = this.g.a(i1 - this.g.d());
                if ((!f) && (localObject == null)) {
                  throw new AssertionError();
                }
                k localk = this.d;
                this.g.h();
                if (!localk.a((View)localObject, paramMotionEvent.getX() - ((View)localObject).getX(), paramMotionEvent.getY() - ((View)localObject).getY())) {
                  break label791;
                }
                i1 -= this.g.h();
                bool1 = bool2;
              } while (this.c != -1L);
              if (this.l < 0.0F) {
                throw new IllegalStateException("User must be touching the DynamicListView!");
              }
              if (this.j == null) {
                throw new IllegalStateException("This DynamicListView has no adapter set!");
              }
              bool1 = bool2;
            } while (i1 < 0);
            bool1 = bool2;
          } while (i1 >= this.j.getCount());
          this.k = this.g.a(i1 - this.g.d() + this.g.h());
          bool1 = bool2;
        } while (this.k == null);
        this.m = i1;
        this.c = this.j.getItemId(i1);
        this.b = new m(this.k, this.l);
        this.k.setVisibility(4);
        return true;
        if (this.b != null)
        {
          localObject = this.b;
          ((m)localObject).a((int)(((m)localObject).a - ((m)localObject).b + paramMotionEvent.getY() + ((m)localObject).c));
          if ((this.b == null) || (this.j == null))
          {
            this.g.j().invalidate();
            return true;
          }
          i1 = a(this.c);
          long l1;
          int i2;
          if (i1 - 1 - this.g.h() >= 0)
          {
            l1 = this.j.getItemId(i1 - 1 - this.g.h());
            if (i1 + 1 - this.g.h() < this.j.getCount()) {
              l2 = this.j.getItemId(i1 + 1 - this.g.h());
            }
            if (!this.b.a()) {
              break label748;
            }
            paramMotionEvent = b(l1);
            localObject = this.b;
            i1 = (int)(((m)localObject).getBounds().top - ((m)localObject).a);
            if ((paramMotionEvent != null) && (Math.abs(i1) > this.b.getIntrinsicHeight()))
            {
              i2 = this.b.getIntrinsicHeight();
              if (i1 >= 0) {
                break label755;
              }
            }
          }
          for (i1 = -1;; i1 = 1)
          {
            a(paramMotionEvent, l1, i1 * i2);
            this.a.a();
            this.g.j().invalidate();
            break;
            l1 = -1L;
            break label577;
            l1 = l2;
            break label638;
          }
        }
        break;
      case 1: 
        bool1 = a();
        this.l = -1.0F;
        return bool1;
      case 3: 
        label577:
        label638:
        label748:
        label755:
        bool1 = a();
        this.l = -1.0F;
        return bool1;
      }
    }
    label791:
    return false;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\nhaarman\listviewanimations\itemmanipulation\dragdrop\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */