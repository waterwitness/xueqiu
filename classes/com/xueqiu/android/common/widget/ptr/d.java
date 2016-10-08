package com.xueqiu.android.common.widget.ptr;

import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.xueqiu.android.R.styleable;

public abstract class d<T extends View>
  extends LinearLayout
{
  public T a;
  protected boolean b = false;
  protected h c;
  private int d;
  private float e;
  private float f;
  private float g;
  private boolean h = false;
  private int i = 0;
  private int j = 1;
  private int k;
  private boolean l = true;
  private boolean m = true;
  private b n;
  private b o;
  private int p;
  private int q;
  private final Handler r = new Handler();
  private g s = null;
  private e t;
  private ValueAnimator u;
  private int v = 0;
  
  public d(Context paramContext)
  {
    super(paramContext);
    a(paramContext, null);
  }
  
  public d(Context paramContext, int paramInt)
  {
    super(paramContext);
    this.j = paramInt;
    a(paramContext, null);
  }
  
  public d(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet);
  }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet)
  {
    setOrientation(1);
    this.d = ViewConfiguration.getTouchSlop();
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.PullToRefresh);
    if (localTypedArray.hasValue(4)) {
      this.j = localTypedArray.getInteger(4, 1);
    }
    this.a = b(paramContext, paramAttributeSet);
    a(paramContext, this.a);
    int i1 = getMode();
    if (i1 == 1)
    {
      paramAttributeSet = paramContext.getString(2131165859);
      String str1 = paramContext.getString(2131165860);
      String str2 = paramContext.getString(2131165861);
      if ((i1 == 1) || (i1 == 3))
      {
        this.n = new b(paramContext, 1, str2, paramAttributeSet, str1);
        this.n.setId(2131624024);
        addView(this.n, 0, new LinearLayout.LayoutParams(-1, -2));
        b(this.n);
        this.p = this.n.getMeasuredHeight();
        this.q = this.n.getOriginalHeader().getMeasuredHeight();
      }
      if ((i1 == 2) || (i1 == 3))
      {
        this.o = new b(paramContext, 2, str2, paramAttributeSet, str1);
        this.o.setId(2131624024);
        addView(this.o, new LinearLayout.LayoutParams(-1, -2));
        b(this.o);
        this.p = this.o.getMeasuredHeight();
      }
      if (localTypedArray.hasValue(2))
      {
        int i2 = localTypedArray.getColor(2, -16777216);
        if (this.n != null) {
          this.n.setTextColor(i2);
        }
        if (this.o != null) {
          this.o.setTextColor(i2);
        }
      }
      if (localTypedArray.hasValue(3))
      {
        paramContext = localTypedArray.getDrawable(3);
        if (this.n != null)
        {
          this.n.setHeaderImage(paramContext);
          this.n.setHeaderProgress(paramContext);
        }
        if (this.o != null)
        {
          this.o.setHeaderImage(paramContext);
          this.o.setHeaderProgress(paramContext);
        }
      }
      if (localTypedArray.hasValue(1))
      {
        if (this.n != null) {
          this.n.setBackgroundResource(localTypedArray.getResourceId(1, -1));
        }
        if (this.o != null) {
          this.o.setBackgroundResource(localTypedArray.getResourceId(1, -1));
        }
      }
      if (localTypedArray.hasValue(0)) {
        this.a.setBackgroundResource(localTypedArray.getResourceId(0, -1));
      }
      localTypedArray.recycle();
      switch (i1)
      {
      default: 
        setPadding(0, -this.p, 0, 0);
      }
    }
    for (;;)
    {
      if (i1 != 3) {
        this.k = i1;
      }
      return;
      paramAttributeSet = paramContext.getString(2131165862);
      break;
      setPadding(0, -this.p, 0, -this.p);
      continue;
      setPadding(0, 0, 0, -this.p);
    }
  }
  
  private boolean a()
  {
    switch (this.j)
    {
    }
    do
    {
      return false;
      return g();
      return h();
    } while ((!h()) && (!g()));
    return true;
  }
  
  private static void b(View paramView)
  {
    ViewGroup.LayoutParams localLayoutParams2 = paramView.getLayoutParams();
    ViewGroup.LayoutParams localLayoutParams1 = localLayoutParams2;
    if (localLayoutParams2 == null) {
      localLayoutParams1 = new ViewGroup.LayoutParams(-1, -2);
    }
    int i2 = ViewGroup.getChildMeasureSpec(0, 0, localLayoutParams1.width);
    int i1 = localLayoutParams1.height;
    if (i1 > 0) {}
    for (i1 = View.MeasureSpec.makeMeasureSpec(i1, 1073741824);; i1 = View.MeasureSpec.makeMeasureSpec(0, 0))
    {
      paramView.measure(i2, i1);
      return;
    }
  }
  
  protected final void a(int paramInt)
  {
    int i2 = getScrollY();
    int i1 = i2;
    if (this.u != null)
    {
      i1 = i2;
      if (this.u.isRunning())
      {
        i1 = this.v;
        this.u.cancel();
      }
    }
    this.u = ObjectAnimator.ofInt(new int[] { i1, paramInt });
    this.u.setDuration(300L);
    this.u.setInterpolator(new AccelerateDecelerateInterpolator());
    this.u.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
    {
      public final void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
      {
        if (paramAnonymousValueAnimator == d.a(d.this))
        {
          int i = ((Integer)paramAnonymousValueAnimator.getAnimatedValue()).intValue();
          d.a(d.this, i);
          d.this.setHeaderScroll(i);
        }
      }
    });
    this.u.start();
  }
  
  protected void a(Context paramContext, T paramT)
  {
    addView(paramT, new LinearLayout.LayoutParams(-1, 0, 1.0F));
  }
  
  public void a(View paramView)
  {
    if (this.n != null)
    {
      b localb;
      if (paramView != null)
      {
        this.b = true;
        localb = this.n;
        if (paramView == null) {
          break label111;
        }
        localb.a.removeAllViews();
        localb.a.addView(paramView);
        localb.a.setVisibility(0);
      }
      for (;;)
      {
        b(this.n);
        this.p = this.n.getMeasuredHeight();
        setPadding(0, -this.p, 0, 0);
        b(this.n.getOriginalHeader());
        this.q = this.n.getOriginalHeader().getMeasuredHeight();
        return;
        this.b = false;
        break;
        label111:
        localb.a.setVisibility(8);
      }
    }
    this.b = false;
  }
  
  protected abstract T b(Context paramContext, AttributeSet paramAttributeSet);
  
  public void f()
  {
    if (this.i != 0) {
      l();
    }
  }
  
  protected abstract boolean g();
  
  public final T getAdapterView()
  {
    return this.a;
  }
  
  protected final int getCurrentMode()
  {
    return this.k;
  }
  
  protected final b getFooterLayout()
  {
    return this.o;
  }
  
  protected final int getHeaderHeight()
  {
    return this.p;
  }
  
  protected final b getHeaderLayout()
  {
    return this.n;
  }
  
  public final int getMode()
  {
    return this.j;
  }
  
  public final T getRefreshableView()
  {
    return this.a;
  }
  
  protected abstract boolean h();
  
  public final boolean j()
  {
    return (this.i == 2) || (this.i == 3);
  }
  
  public final void k()
  {
    this.c.a();
  }
  
  protected void l()
  {
    this.i = 0;
    this.h = false;
    if (this.n != null) {
      this.n.a();
    }
    if (this.o != null) {
      this.o.a();
    }
    a(0);
  }
  
  public final boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if (!this.m) {
      return false;
    }
    if ((j()) && (this.l)) {
      return true;
    }
    int i1 = paramMotionEvent.getAction();
    if ((i1 == 3) || (i1 == 1))
    {
      this.h = false;
      return false;
    }
    if ((i1 != 0) && (this.h)) {
      return true;
    }
    switch (i1)
    {
    }
    for (;;)
    {
      return this.h;
      if (a())
      {
        float f1 = paramMotionEvent.getY();
        float f2 = f1 - this.g;
        float f3 = Math.abs(f2);
        float f4 = Math.abs(paramMotionEvent.getX() - this.f);
        if ((f3 > this.d) && (f3 > f4)) {
          if (((this.j == 1) || (this.j == 3)) && (f2 >= 1.0E-4F) && (g()))
          {
            this.g = f1;
            this.h = true;
            if (this.j == 3) {
              this.k = 1;
            }
          }
          else if (((this.j == 2) || (this.j == 3)) && (f2 <= 1.0E-4F) && (h()))
          {
            this.g = f1;
            this.h = true;
            if (this.j == 3)
            {
              this.k = 2;
              continue;
              if (a())
              {
                f1 = paramMotionEvent.getY();
                this.e = f1;
                this.g = f1;
                this.f = paramMotionEvent.getX();
                this.h = false;
              }
            }
          }
        }
      }
    }
  }
  
  public final boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (!this.m) {
      return false;
    }
    if ((j()) && (this.l)) {
      return true;
    }
    if ((paramMotionEvent.getAction() == 0) && (paramMotionEvent.getEdgeFlags() != 0)) {
      return false;
    }
    switch (paramMotionEvent.getAction())
    {
    }
    label240:
    do
    {
      do
      {
        do
        {
          return false;
        } while (!this.h);
        this.g = paramMotionEvent.getY();
        getScrollY();
        int i1;
        switch (this.k)
        {
        default: 
          i1 = Math.round(Math.min(this.e - this.g, 0.0F) / 2.0F);
          setHeaderScroll(i1);
          if (i1 != 0)
          {
            if ((this.i != 0) || (this.q >= Math.abs(i1))) {
              break label240;
            }
            this.i = 1;
            switch (this.k)
            {
            }
          }
          break;
        }
        for (;;)
        {
          return true;
          i1 = Math.round(Math.max(this.e - this.g, 0.0F) / 2.0F);
          break;
          this.o.b();
          continue;
          this.n.b();
          continue;
          if ((this.i == 1) && (this.q >= Math.abs(i1)))
          {
            this.i = 0;
            switch (this.k)
            {
            default: 
              break;
            case 1: 
              this.n.d();
              break;
            case 2: 
              this.o.d();
            }
          }
        }
      } while (!a());
      float f1 = paramMotionEvent.getY();
      this.e = f1;
      this.g = f1;
      return true;
    } while (!this.h);
    this.h = false;
    if ((this.i == 1) && (this.c != null))
    {
      setRefreshingInternal(true);
      this.c.a();
      if (this.s != null) {
        this.s.a();
      }
    }
    for (;;)
    {
      return true;
      a(0);
    }
  }
  
  public final void setDisableScrollingWhileRefreshing(boolean paramBoolean)
  {
    this.l = paramBoolean;
  }
  
  protected final void setHeaderScroll(int paramInt)
  {
    scrollTo(0, paramInt);
  }
  
  public void setLongClickable(boolean paramBoolean)
  {
    getRefreshableView().setLongClickable(paramBoolean);
  }
  
  public final void setOnHeaderScrollListener(e parame)
  {
    this.t = parame;
  }
  
  public void setOnPullToRefreshEventListener(g paramg)
  {
    this.s = paramg;
  }
  
  public final void setOnRefreshListener(h paramh)
  {
    this.c = paramh;
  }
  
  public void setPullLabel(String paramString)
  {
    if (this.n != null) {
      this.n.setPullLabel(paramString);
    }
    if (this.o != null) {
      this.o.setPullLabel(paramString);
    }
  }
  
  public final void setPullToRefreshEnabled(boolean paramBoolean)
  {
    this.m = paramBoolean;
  }
  
  public final void setRefreshing(boolean paramBoolean)
  {
    if (!j())
    {
      setRefreshingInternal(paramBoolean);
      this.i = 3;
    }
    k();
  }
  
  protected void setRefreshingInternal(boolean paramBoolean)
  {
    this.i = 2;
    if (this.n != null) {
      this.n.c();
    }
    if (this.o != null) {
      this.o.c();
    }
    if (paramBoolean) {
      if (this.k != 1) {
        break label57;
      }
    }
    label57:
    for (int i1 = -this.p;; i1 = this.p)
    {
      a(i1);
      return;
    }
  }
  
  public void setRefreshingLabel(String paramString)
  {
    if (this.n != null) {
      this.n.setRefreshingLabel(paramString);
    }
    if (this.o != null) {
      this.o.setRefreshingLabel(paramString);
    }
  }
  
  public void setReleaseLabel(String paramString)
  {
    if (this.n != null) {
      this.n.setReleaseLabel(paramString);
    }
    if (this.o != null) {
      this.o.setReleaseLabel(paramString);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\ptr\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */