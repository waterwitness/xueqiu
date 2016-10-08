package com.xueqiu.android.view.wheel;

import android.content.Context;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.GradientDrawable.Orientation;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import android.widget.Scroller;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class WheelView
  extends View
{
  private static final int[] d = { -15658735, 11184810, 11184810 };
  boolean a = false;
  List<Object> b = new LinkedList();
  d c = new d()
  {
    public final void a()
    {
      WheelView.a(WheelView.this, true);
      Iterator localIterator = WheelView.this.b.iterator();
      for (;;)
      {
        if (!localIterator.hasNext()) {
          return;
        }
        localIterator.next();
      }
    }
    
    public final void a(int paramAnonymousInt)
    {
      WheelView.a(WheelView.this, paramAnonymousInt);
      paramAnonymousInt = WheelView.this.getHeight();
      if (WheelView.a(WheelView.this) > paramAnonymousInt)
      {
        WheelView.b(WheelView.this, paramAnonymousInt);
        WheelView.b(WheelView.this).a();
      }
      while (WheelView.a(WheelView.this) >= -paramAnonymousInt) {
        return;
      }
      WheelView.b(WheelView.this, -paramAnonymousInt);
      WheelView.b(WheelView.this).a();
    }
    
    public final void b()
    {
      Iterator localIterator;
      if (WheelView.c(WheelView.this)) {
        localIterator = WheelView.this.b.iterator();
      }
      for (;;)
      {
        if (!localIterator.hasNext())
        {
          WheelView.a(WheelView.this, false);
          WheelView.b(WheelView.this, 0);
          WheelView.this.invalidate();
          return;
        }
        localIterator.next();
      }
    }
    
    public final void c()
    {
      if (Math.abs(WheelView.a(WheelView.this)) > 1)
      {
        c localc = WheelView.b(WheelView.this);
        int i = WheelView.a(WheelView.this);
        localc.d.forceFinished(true);
        localc.e = 0;
        localc.d.startScroll(0, 0, 0, i, 400);
        localc.a(0);
        localc.d();
      }
    }
  };
  private int e = 0;
  private int f = 5;
  private int g = 0;
  private Drawable h;
  private GradientDrawable i;
  private GradientDrawable j;
  private c k;
  private boolean l;
  private int m;
  private LinearLayout n;
  private int o;
  private com.xueqiu.android.view.wheel.a.c p;
  private b q = new b(this);
  private List<Object> r = new LinkedList();
  private List<Object> s = new LinkedList();
  private DataSetObserver t = new DataSetObserver()
  {
    public final void onChanged()
    {
      WheelView.this.a(false);
    }
    
    public final void onInvalidated()
    {
      WheelView.this.a(true);
    }
  };
  
  public WheelView(Context paramContext)
  {
    super(paramContext);
    a();
  }
  
  public WheelView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  public WheelView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a();
  }
  
  private int a(int paramInt1, int paramInt2)
  {
    if (this.h == null) {
      this.h = getResources().getDrawable(a("wheel_val"));
    }
    if (this.i == null) {
      this.i = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, d);
    }
    if (this.j == null) {
      this.j = new GradientDrawable(GradientDrawable.Orientation.BOTTOM_TOP, d);
    }
    setBackgroundDrawable(getResources().getDrawable(a("wheel_bg")));
    this.n.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
    this.n.measure(View.MeasureSpec.makeMeasureSpec(paramInt1, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
    int i1 = this.n.getMeasuredWidth();
    if (paramInt2 == 1073741824) {
      paramInt2 = paramInt1;
    }
    for (;;)
    {
      this.n.measure(View.MeasureSpec.makeMeasureSpec(paramInt2 - 20, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
      return paramInt2;
      i1 = Math.max(i1 + 20, getSuggestedMinimumWidth());
      if (paramInt2 == Integer.MIN_VALUE)
      {
        paramInt2 = paramInt1;
        if (paramInt1 < i1) {}
      }
      else
      {
        paramInt2 = i1;
      }
    }
  }
  
  private int a(String paramString)
  {
    return getResources().getIdentifier(paramString, "drawable", getContext().getPackageName());
  }
  
  private void a()
  {
    this.k = new c(getContext(), this.c);
  }
  
  private boolean a(int paramInt)
  {
    return (this.p != null) && (this.p.a() > 0) && ((this.a) || ((paramInt >= 0) && (paramInt < this.p.a())));
  }
  
  private boolean a(int paramInt, boolean paramBoolean)
  {
    boolean bool = false;
    View localView;
    if ((this.p == null) || (this.p.a() == 0))
    {
      localView = null;
      if (localView != null)
      {
        if (!paramBoolean) {
          break label140;
        }
        this.n.addView(localView, 0);
      }
    }
    for (;;)
    {
      bool = true;
      return bool;
      int i2 = this.p.a();
      int i1 = paramInt;
      if (!a(paramInt))
      {
        localView = this.p.a(b.a(this.q.b), this.n);
        break;
      }
      while (i1 < 0) {
        i1 += i2;
      }
      localView = this.p.a(i1 % i2, b.a(this.q.a), this.n);
      break;
      label140:
      this.n.addView(localView);
    }
  }
  
  private void b()
  {
    if (this.n == null)
    {
      this.n = new LinearLayout(getContext());
      this.n.setOrientation(1);
    }
  }
  
  private void b(int paramInt1, int paramInt2)
  {
    this.n.layout(0, 0, paramInt1 - 20, paramInt2);
  }
  
  private int getItemHeight()
  {
    if (this.g != 0) {
      return this.g;
    }
    if ((this.n != null) && (this.n.getChildAt(0) != null))
    {
      this.g = this.n.getChildAt(0).getHeight();
      return this.g;
    }
    return getHeight() / this.f;
  }
  
  private a getItemsRange()
  {
    if (getItemHeight() == 0) {
      return null;
    }
    int i1 = this.e;
    int i2 = 1;
    for (;;)
    {
      if (getItemHeight() * i2 >= getHeight())
      {
        int i4 = i2;
        int i3 = i1;
        if (this.m != 0)
        {
          i3 = i1;
          if (this.m > 0) {
            i3 = i1 - 1;
          }
          i1 = this.m / getItemHeight();
          i3 -= i1;
          double d1 = i2 + 1;
          i4 = (int)(Math.asin(i1) + d1);
        }
        return new a(i3, i4);
      }
      i1 -= 1;
      i2 += 2;
    }
  }
  
  private void setCurrentItem$2563266(int paramInt)
  {
    if ((this.p == null) || (this.p.a() == 0)) {}
    int i2;
    int i1;
    do
    {
      do
      {
        return;
        i2 = this.p.a();
        if (paramInt >= 0)
        {
          i1 = paramInt;
          if (paramInt < i2) {
            break;
          }
        }
      } while (!this.a);
      if (paramInt < 0) {
        break;
      }
      i1 = paramInt % i2;
    } while (i1 == this.e);
    this.m = 0;
    this.e = i1;
    Iterator localIterator = this.r.iterator();
    for (;;)
    {
      if (!localIterator.hasNext())
      {
        invalidate();
        return;
        paramInt += i2;
        break;
      }
      localIterator.next();
    }
  }
  
  public final void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      b localb = this.q;
      if (localb.a != null) {
        localb.a.clear();
      }
      if (localb.b != null) {
        localb.b.clear();
      }
      if (this.n != null) {
        this.n.removeAllViews();
      }
      this.m = 0;
    }
    for (;;)
    {
      invalidate();
      return;
      if (this.n != null) {
        this.q.a(this.n, this.o, new a());
      }
    }
  }
  
  public int getCurrentItem()
  {
    return this.e;
  }
  
  public com.xueqiu.android.view.wheel.a.c getViewAdapter()
  {
    return this.p;
  }
  
  public int getVisibleItems()
  {
    return this.f;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    a locala;
    int i2;
    int i1;
    label74:
    label109:
    label139:
    label148:
    int i3;
    if ((this.p != null) && (this.p.a() > 0))
    {
      locala = getItemsRange();
      if (this.n == null) {
        break label380;
      }
      i2 = this.q.a(this.n, this.o, locala);
      if (this.o == i2) {
        break label375;
      }
      i1 = 1;
      this.o = i2;
      i2 = i1;
      i1 = i2;
      if (i2 == 0)
      {
        if ((this.o != locala.a) || (this.n.getChildCount() != locala.b)) {
          break label390;
        }
        i1 = 0;
      }
      if ((this.o <= locala.a) || (this.o > locala.a())) {
        break label420;
      }
      i2 = this.o - 1;
      if (i2 >= locala.a) {
        break label395;
      }
      i3 = this.o;
      i2 = this.n.getChildCount();
    }
    for (;;)
    {
      if (i2 >= locala.b)
      {
        this.o = i3;
        if (i1 != 0)
        {
          a(getWidth(), 1073741824);
          b(getWidth(), getHeight());
        }
        paramCanvas.save();
        paramCanvas.translate(10.0F, -((this.e - this.o) * getItemHeight() + (getItemHeight() - getHeight()) / 2) + this.m);
        this.n.draw(paramCanvas);
        paramCanvas.restore();
        i1 = getHeight() / 2;
        i2 = (int)(getItemHeight() / 2 * 1.2D);
        this.h.setBounds(0, i1 - i2, getWidth(), i1 + i2);
        this.h.draw(paramCanvas);
        i1 = (int)(1.5D * getItemHeight());
        this.i.setBounds(0, 0, getWidth(), i1);
        this.i.draw(paramCanvas);
        this.j.setBounds(0, getHeight() - i1, getWidth(), getHeight());
        this.j.draw(paramCanvas);
        return;
        label375:
        i1 = 0;
        break;
        label380:
        b();
        i2 = 1;
        break label74;
        label390:
        i1 = 1;
        break label109;
        label395:
        if (!a(i2, true)) {
          break label148;
        }
        this.o = i2;
        i2 -= 1;
        break label139;
        label420:
        this.o = locala.a;
        break label148;
      }
      int i4 = i3;
      if (!a(this.o + i2, false))
      {
        i4 = i3;
        if (this.n.getChildCount() == 0) {
          i4 = i3 + 1;
        }
      }
      i2 += 1;
      i3 = i4;
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    b(paramInt3 - paramInt1, paramInt4 - paramInt2);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i1 = View.MeasureSpec.getMode(paramInt1);
    int i2 = View.MeasureSpec.getMode(paramInt2);
    int i3 = View.MeasureSpec.getSize(paramInt1);
    paramInt2 = View.MeasureSpec.getSize(paramInt2);
    if (this.n != null)
    {
      this.q.a(this.n, this.o, new a());
      int i4 = this.f / 2;
      paramInt1 = this.e + i4;
      label69:
      if (paramInt1 >= this.e - i4) {
        break label114;
      }
      i3 = a(i3, i1);
      if (i2 != 1073741824) {
        break label135;
      }
      paramInt1 = paramInt2;
    }
    for (;;)
    {
      setMeasuredDimension(i3, paramInt1);
      return;
      b();
      break;
      label114:
      if (a(paramInt1, true)) {
        this.o = paramInt1;
      }
      paramInt1 -= 1;
      break label69;
      label135:
      LinearLayout localLinearLayout = this.n;
      if ((localLinearLayout != null) && (localLinearLayout.getChildAt(0) != null)) {
        this.g = localLinearLayout.getChildAt(0).getMeasuredHeight();
      }
      i1 = Math.max(this.g * this.f - this.g * 10 / 50, getSuggestedMinimumHeight());
      paramInt1 = i1;
      if (i2 == Integer.MIN_VALUE) {
        paramInt1 = Math.min(i1, paramInt2);
      }
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((!isEnabled()) || (getViewAdapter() == null)) {
      return true;
    }
    label44:
    Object localObject;
    switch (paramMotionEvent.getAction())
    {
    default: 
      localObject = this.k;
      switch (paramMotionEvent.getAction())
      {
      }
      break;
    }
    while ((!((c)localObject).c.onTouchEvent(paramMotionEvent)) && (paramMotionEvent.getAction() == 1))
    {
      ((c)localObject).c();
      return true;
      if (getParent() == null) {
        break label44;
      }
      getParent().requestDisallowInterceptTouchEvent(true);
      break label44;
      if (this.l) {
        break label44;
      }
      int i1 = (int)paramMotionEvent.getY() - getHeight() / 2;
      if (i1 > 0) {
        i1 += getItemHeight() / 2;
      }
      for (;;)
      {
        i1 /= getItemHeight();
        if ((i1 == 0) || (!a(i1 + this.e))) {
          break;
        }
        localObject = this.s.iterator();
        while (((Iterator)localObject).hasNext()) {
          ((Iterator)localObject).next();
        }
        i1 -= getItemHeight() / 2;
      }
      ((c)localObject).f = paramMotionEvent.getY();
      ((c)localObject).d.forceFinished(true);
      ((c)localObject).b();
      continue;
      i1 = (int)(paramMotionEvent.getY() - ((c)localObject).f);
      if (i1 != 0)
      {
        ((c)localObject).d();
        ((c)localObject).a.a(i1);
        ((c)localObject).f = paramMotionEvent.getY();
      }
    }
  }
  
  public void setCurrentItem(int paramInt)
  {
    setCurrentItem$2563266(paramInt);
  }
  
  public void setCyclic(boolean paramBoolean)
  {
    this.a = paramBoolean;
    a(false);
  }
  
  public void setInterpolator(Interpolator paramInterpolator)
  {
    c localc = this.k;
    localc.d.forceFinished(true);
    localc.d = new Scroller(localc.b, paramInterpolator);
  }
  
  public void setViewAdapter(com.xueqiu.android.view.wheel.a.c paramc)
  {
    if (this.p != null) {
      this.p.b(this.t);
    }
    this.p = paramc;
    if (this.p != null) {
      this.p.a(this.t);
    }
    a(true);
  }
  
  public void setVisibleItems(int paramInt)
  {
    this.f = paramInt;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\view\wheel\WheelView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */