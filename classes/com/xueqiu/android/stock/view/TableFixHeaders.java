package com.xueqiu.android.stock.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.Scroller;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.stock.a.ai;
import com.xueqiu.android.stock.q;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Stack;

public class TableFixHeaders
  extends ViewGroup
{
  private VelocityTracker A;
  private int B;
  private boolean C = false;
  private q D;
  public ai a;
  public int b;
  public int c;
  public List<View> d = new ArrayList();
  public List<View> e = new ArrayList();
  public List<List<View>> f = new ArrayList();
  private int g;
  private int h;
  private int i;
  private int j;
  private int k;
  private int[] l;
  private int[] m;
  private View n = null;
  private int o;
  private int p;
  private int q;
  private int r;
  private c s;
  private e t;
  private boolean u = true;
  private final ImageView[] v = new ImageView[4];
  private final int w;
  private final int x;
  private final int y;
  private final d z;
  
  public TableFixHeaders(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public TableFixHeaders(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.v[2] = new ImageView(paramContext);
    this.v[2].setImageResource(2130838470);
    this.w = getResources().getDimensionPixelSize(2131230913);
    this.z = new d(this, paramContext);
    paramContext = ViewConfiguration.get(paramContext);
    this.B = paramContext.getScaledTouchSlop();
    this.x = paramContext.getScaledMinimumFlingVelocity();
    this.y = paramContext.getScaledMaximumFlingVelocity();
  }
  
  private static int a(int paramInt1, int paramInt2, int[] paramArrayOfInt, int paramInt3)
  {
    int i1 = paramInt1;
    if (paramInt1 != 0)
    {
      if (paramInt1 < 0) {
        i1 = Math.max(paramInt1, -a(paramArrayOfInt, 1, paramInt2));
      }
    }
    else {
      return i1;
    }
    return Math.min(paramInt1, Math.max(0, a(paramArrayOfInt, paramInt2 + 1, paramArrayOfInt.length - 1 - paramInt2) + paramArrayOfInt[0] - paramInt3));
  }
  
  private static int a(int[] paramArrayOfInt, int paramInt1, int paramInt2)
  {
    int i2 = 0;
    int i1 = paramInt1;
    while (i1 < paramInt2 + paramInt1)
    {
      i2 += paramArrayOfInt[i1];
      i1 += 1;
    }
    return i2;
  }
  
  private View a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i1 = this.a.b(paramInt1);
    if (i1 != -1) {
      this.s.a(i1);
    }
    View localView = this.a.a(paramInt1, paramInt2, this);
    localView.setTag(2131624040, Integer.valueOf(i1));
    localView.setTag(2131624039, Integer.valueOf(paramInt1));
    localView.setTag(2131624038, Integer.valueOf(paramInt2));
    localView.measure(View.MeasureSpec.makeMeasureSpec(paramInt3, 1073741824), View.MeasureSpec.makeMeasureSpec(paramInt4, 1073741824));
    if ((paramInt1 == -1) && (paramInt2 == -1))
    {
      addView(localView, getChildCount() - 4);
      return localView;
    }
    if ((paramInt1 == -1) || (paramInt2 == -1))
    {
      addView(localView, getChildCount() - 5);
      return localView;
    }
    addView(localView, 0);
    return localView;
  }
  
  private View a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    View localView = a(paramInt1, paramInt2, paramInt5 - paramInt3, paramInt6 - paramInt4);
    localView.layout(paramInt3, paramInt4, paramInt5, paramInt6);
    return localView;
  }
  
  private void a()
  {
    int i1 = this.d.size();
    a(this.c + i1, i1);
  }
  
  private void a(int paramInt)
  {
    removeView((View)this.d.remove(paramInt));
    Iterator localIterator = this.f.iterator();
    while (localIterator.hasNext()) {
      removeView((View)((List)localIterator.next()).remove(paramInt));
    }
  }
  
  private void a(int paramInt1, int paramInt2)
  {
    Object localObject = a(-1, paramInt1, this.l[(paramInt1 + 1)], this.m[0]);
    this.d.add(paramInt2, localObject);
    int i1 = this.b;
    localObject = this.f.iterator();
    while (((Iterator)localObject).hasNext())
    {
      ((List)((Iterator)localObject).next()).add(paramInt2, a(i1, paramInt1, this.l[(paramInt1 + 1)], this.m[(i1 + 1)]));
      i1 += 1;
    }
  }
  
  private static int[] a(int paramInt1, int paramInt2, int[] paramArrayOfInt)
  {
    int i1 = paramInt1;
    int i2 = paramInt2;
    if (paramInt1 != 0)
    {
      int i3 = paramInt1;
      int i4 = paramInt2;
      if (paramInt1 > 0) {
        for (;;)
        {
          i1 = paramInt1;
          i2 = paramInt2;
          if (paramArrayOfInt[(paramInt2 + 1)] >= paramInt1) {
            break;
          }
          paramInt2 += 1;
          paramInt1 -= paramArrayOfInt[paramInt2];
        }
      }
      for (;;)
      {
        i1 = i3;
        i2 = i4;
        if (i3 >= 0) {
          break;
        }
        i3 += paramArrayOfInt[i4];
        i4 -= 1;
      }
    }
    return new int[] { i1, i2 };
  }
  
  private void b()
  {
    int i1 = this.e.size();
    b(this.b + i1, i1);
  }
  
  private void b(int paramInt)
  {
    removeView((View)this.e.remove(paramInt));
    Iterator localIterator = ((List)this.f.remove(paramInt)).iterator();
    while (localIterator.hasNext()) {
      removeView((View)localIterator.next());
    }
  }
  
  private void b(int paramInt1, int paramInt2)
  {
    Object localObject = a(paramInt1, -1, this.l[0], this.m[(paramInt1 + 1)]);
    this.e.add(paramInt2, localObject);
    localObject = new ArrayList();
    int i2 = this.d.size();
    int i3 = this.c;
    int i1 = this.c;
    while (i1 < i3 + i2)
    {
      ((List)localObject).add(a(paramInt1, i1, this.l[(i1 + 1)], this.m[(paramInt1 + 1)]));
      i1 += 1;
    }
    this.f.add(paramInt2, localObject);
  }
  
  private void c()
  {
    this.j = a(this.j, this.c, this.l, this.q);
    this.k = a(this.k, this.b, this.m, this.r);
  }
  
  private void d()
  {
    int i1 = 0;
    int i2 = getActualScrollX();
    int i3 = getActualScrollY();
    int i4 = getMaxScrollX();
    int i5 = getMaxScrollY();
    if (i1 < this.v.length)
    {
      ImageView localImageView;
      float f1;
      if (this.v[i1] != null)
      {
        localImageView = this.v[i1];
        f1 = Math.min(new int[] { i2, i3, i4 - i2, i5 - i3 }[i1] / this.w, 1.0F);
        if (Build.VERSION.SDK_INT < 11) {
          break label114;
        }
        localImageView.setAlpha(f1);
      }
      for (;;)
      {
        i1 += 1;
        break;
        label114:
        localImageView.setAlpha(Math.round(f1 * 255.0F));
      }
    }
  }
  
  private int getFilledHeight()
  {
    return this.m[0] + a(this.m, this.b + 1, this.e.size()) - this.k;
  }
  
  private int getFilledWidth()
  {
    return this.l[0] + a(this.l, this.c + 1, this.d.size()) - this.j;
  }
  
  private int getMaxScrollX()
  {
    int[] arrayOfInt = this.l;
    return Math.max(0, a(arrayOfInt, 0, arrayOfInt.length) - this.q);
  }
  
  private int getMaxScrollY()
  {
    int[] arrayOfInt = this.m;
    return Math.max(0, a(arrayOfInt, 0, arrayOfInt.length) - this.r);
  }
  
  protected boolean drawChild(Canvas paramCanvas, View paramView, long paramLong)
  {
    Integer localInteger1 = (Integer)paramView.getTag(2131624039);
    Integer localInteger2 = (Integer)paramView.getTag(2131624038);
    if ((localInteger1 == null) || ((localInteger1.intValue() == -1) && (localInteger2.intValue() == -1))) {
      return super.drawChild(paramCanvas, paramView, paramLong);
    }
    paramCanvas.save();
    if (localInteger1.intValue() == -1) {
      paramCanvas.clipRect(this.l[0], 0, paramCanvas.getWidth(), paramCanvas.getHeight());
    }
    for (;;)
    {
      boolean bool = super.drawChild(paramCanvas, paramView, paramLong);
      paramCanvas.restore();
      return bool;
      if (localInteger2.intValue() == -1) {
        paramCanvas.clipRect(0, this.m[0], paramCanvas.getWidth(), paramCanvas.getHeight());
      } else {
        paramCanvas.clipRect(this.l[0], this.m[0], paramCanvas.getWidth(), paramCanvas.getHeight());
      }
    }
  }
  
  public int getActualScrollX()
  {
    return this.j + a(this.l, 1, this.c);
  }
  
  public int getActualScrollY()
  {
    return this.k + a(this.m, 1, this.b);
  }
  
  public ai getAdapter()
  {
    return this.a;
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    }
    int i1;
    int i2;
    do
    {
      return false;
      this.g = ((int)paramMotionEvent.getRawX());
      this.h = ((int)paramMotionEvent.getRawY());
      return false;
      i1 = Math.abs(this.g - (int)paramMotionEvent.getRawX());
      i2 = Math.abs(this.h - (int)paramMotionEvent.getRawY());
      v.c("action move", String.format("x2-%d, y2-%d, %d", new Object[] { Integer.valueOf(i1), Integer.valueOf(i2), Integer.valueOf(this.B) }));
    } while ((i1 <= this.B) && (i2 <= this.B));
    return true;
  }
  
  @SuppressLint({"DrawAllocation"})
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((this.u) || (paramBoolean))
    {
      this.u = false;
      this.n = null;
      this.d.clear();
      this.e.clear();
      this.f.clear();
      removeAllViews();
      if (this.a != null)
      {
        this.q = (paramInt3 - paramInt1);
        this.r = (paramInt4 - paramInt2);
        paramInt1 = this.q;
        Object localObject = this.l;
        paramInt1 = Math.min(paramInt1, a((int[])localObject, 0, localObject.length));
        paramInt2 = this.r;
        localObject = this.m;
        paramInt2 = Math.min(paramInt2, a((int[])localObject, 0, localObject.length));
        localObject = this.v[2];
        ((ImageView)localObject).layout(paramInt1 - this.w, 0, paramInt1, paramInt2);
        addView((View)localObject);
        this.n = a(-1, -1, 0, 0, this.l[0], this.m[0]);
        c();
        localObject = a(this.j, this.c, this.l);
        this.j = localObject[0];
        this.c = localObject[1];
        localObject = a(this.k, this.b, this.m);
        this.k = localObject[0];
        this.b = localObject[1];
        paramInt2 = this.l[0] - this.j;
        paramInt1 = this.c;
        while ((paramInt1 < this.p) && (paramInt2 < this.q))
        {
          paramInt3 = paramInt2 + this.l[(paramInt1 + 1)];
          localObject = a(-1, paramInt1, paramInt2, 0, paramInt3, this.m[0]);
          this.d.add(localObject);
          paramInt1 += 1;
          paramInt2 = paramInt3;
        }
        paramInt2 = this.m[0] - this.k;
        paramInt1 = this.b;
        while ((paramInt1 < this.o) && (paramInt2 < this.r))
        {
          paramInt3 = paramInt2 + this.m[(paramInt1 + 1)];
          localObject = a(paramInt1, -1, 0, paramInt2, this.l[0], paramInt3);
          this.e.add(localObject);
          paramInt1 += 1;
          paramInt2 = paramInt3;
        }
        paramInt2 = this.m[0] - this.k;
        paramInt1 = this.b;
        while ((paramInt1 < this.o) && (paramInt2 < this.r))
        {
          int i1 = paramInt2 + this.m[(paramInt1 + 1)];
          paramInt4 = this.l[0] - this.j;
          localObject = new ArrayList();
          paramInt3 = this.c;
          while ((paramInt3 < this.p) && (paramInt4 < this.q))
          {
            int i2 = paramInt4 + this.l[(paramInt3 + 1)];
            ((List)localObject).add(a(paramInt1, paramInt3, paramInt4, paramInt2, i2, i1));
            paramInt3 += 1;
            paramInt4 = i2;
          }
          this.f.add(localObject);
          paramInt1 += 1;
          paramInt2 = i1;
        }
        d();
      }
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i3 = View.MeasureSpec.getMode(paramInt1);
    int i2 = View.MeasureSpec.getMode(paramInt2);
    int i1 = View.MeasureSpec.getSize(paramInt1);
    paramInt1 = View.MeasureSpec.getSize(paramInt2);
    int[] arrayOfInt;
    if (this.a != null)
    {
      this.o = this.a.a();
      this.p = this.a.b();
      this.l = new int[this.p + 1];
      paramInt2 = -1;
      int i4;
      while (paramInt2 < this.p)
      {
        arrayOfInt = this.l;
        i4 = paramInt2 + 1;
        arrayOfInt[i4] += this.a.a(paramInt2);
        paramInt2 += 1;
      }
      this.m = new int[this.o + 1];
      paramInt2 = -1;
      while (paramInt2 < this.o)
      {
        arrayOfInt = this.m;
        i4 = paramInt2 + 1;
        arrayOfInt[i4] += this.a.c();
        paramInt2 += 1;
      }
      if (i3 == Integer.MIN_VALUE)
      {
        arrayOfInt = this.l;
        paramInt2 = Math.min(i1, a(arrayOfInt, 0, arrayOfInt.length));
        if (i2 != Integer.MIN_VALUE) {
          break label430;
        }
        arrayOfInt = this.m;
        paramInt1 = Math.min(paramInt1, a(arrayOfInt, 0, arrayOfInt.length));
      }
    }
    for (;;)
    {
      if ((this.b >= this.o) || (getMaxScrollY() - getActualScrollY() < 0))
      {
        this.b = 0;
        this.k = Integer.MAX_VALUE;
      }
      if ((this.c >= this.p) || (getMaxScrollX() - getActualScrollX() < 0))
      {
        this.c = 0;
        this.j = Integer.MAX_VALUE;
      }
      setMeasuredDimension(paramInt2, paramInt1);
      return;
      if (i3 == 0)
      {
        arrayOfInt = this.l;
        paramInt2 = a(arrayOfInt, 0, arrayOfInt.length);
        break;
      }
      arrayOfInt = this.l;
      paramInt2 = a(arrayOfInt, 0, arrayOfInt.length);
      if (paramInt2 < i1)
      {
        float f1 = i1 / paramInt2;
        paramInt2 = 1;
        while (paramInt2 < this.l.length)
        {
          this.l[paramInt2] = Math.round(this.l[paramInt2] * f1);
          paramInt2 += 1;
        }
        this.l[0] = (i1 - a(this.l, 1, this.l.length - 1));
      }
      paramInt2 = i1;
      break;
      label430:
      if (i2 == 0)
      {
        arrayOfInt = this.m;
        paramInt1 = a(arrayOfInt, 0, arrayOfInt.length);
      }
      else
      {
        continue;
        if ((i2 == Integer.MIN_VALUE) || (i3 == 0))
        {
          paramInt2 = 0;
          paramInt1 = 0;
        }
        else
        {
          paramInt2 = i1;
        }
      }
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i1 = 0;
    if (this.A == null) {
      this.A = VelocityTracker.obtain();
    }
    this.A.addMovement(paramMotionEvent);
    int i4;
    int i2;
    int i5;
    int i3;
    switch (paramMotionEvent.getAction())
    {
    default: 
    case 0: 
      do
      {
        do
        {
          return true;
          if (!this.z.a.isFinished())
          {
            d locald = this.z;
            if (!locald.a.isFinished()) {
              locald.a.forceFinished(true);
            }
          }
          this.g = ((int)paramMotionEvent.getRawX());
          this.h = ((int)paramMotionEvent.getRawY());
          this.i = this.g;
        } while ((this.l == null) || (this.i <= this.l[0]));
        this.C = true;
      } while (this.D == null);
      this.D.j();
      return true;
    case 2: 
      i4 = (int)paramMotionEvent.getRawX();
      i2 = (int)paramMotionEvent.getRawY();
      i5 = this.g;
      i3 = this.h;
      this.g = i4;
      this.h = i2;
      if ((this.l == null) || (this.i >= this.l[0])) {
        break;
      }
    }
    for (;;)
    {
      scrollBy(i1, i3 - i2);
      return true;
      if ((this.l != null) && (this.i > this.l[0]))
      {
        this.C = false;
        if (this.D != null) {
          this.D.k();
        }
      }
      paramMotionEvent = this.A;
      paramMotionEvent.computeCurrentVelocity(1000, this.y);
      i1 = (int)paramMotionEvent.getXVelocity();
      i2 = (int)paramMotionEvent.getYVelocity();
      if ((Math.abs(i1) > this.x) || (Math.abs(i2) > this.x))
      {
        paramMotionEvent = this.z;
        i3 = getActualScrollX();
        i4 = getActualScrollY();
        i5 = getMaxScrollX();
        int i6 = getMaxScrollY();
        paramMotionEvent.a.fling(i3, i4, i1, i2, 0, i5, 0, i6);
        paramMotionEvent.b = i3;
        paramMotionEvent.c = i4;
        paramMotionEvent.d.post(paramMotionEvent);
        return true;
      }
      if (this.A == null) {
        break;
      }
      this.A.recycle();
      this.A = null;
      return true;
      i1 = i5 - i4;
    }
  }
  
  public void removeView(View paramView)
  {
    super.removeView(paramView);
    int i1 = ((Integer)paramView.getTag(2131624040)).intValue();
    if (i1 != -1) {
      this.s.a[i1].push(paramView);
    }
  }
  
  public void scrollBy(int paramInt1, int paramInt2)
  {
    this.j += paramInt1;
    this.k += paramInt2;
    if (this.u) {
      return;
    }
    c();
    if (this.j != 0)
    {
      if (this.j > 0)
      {
        while (this.l[(this.c + 1)] < this.j)
        {
          if (!this.d.isEmpty()) {
            a(0);
          }
          this.j -= this.l[(this.c + 1)];
          this.c += 1;
        }
        while (getFilledWidth() < this.q) {
          a();
        }
      }
      while ((!this.d.isEmpty()) && (getFilledWidth() - this.l[(this.c + this.d.size())] >= this.q)) {
        a(this.d.size() - 1);
      }
      if (this.d.isEmpty())
      {
        while (this.j < 0)
        {
          this.c -= 1;
          this.j += this.l[(this.c + 1)];
        }
        while (getFilledWidth() < this.q) {
          a();
        }
      }
      while (this.j < 0)
      {
        a(this.c - 1, 0);
        this.c -= 1;
        this.j += this.l[(this.c + 1)];
      }
    }
    if (this.k != 0)
    {
      if (this.k > 0)
      {
        while (this.m[(this.b + 1)] < this.k)
        {
          if (!this.e.isEmpty()) {
            b(0);
          }
          this.k -= this.m[(this.b + 1)];
          this.b += 1;
        }
        while (getFilledHeight() < this.r) {
          b();
        }
      }
      while ((!this.e.isEmpty()) && (getFilledHeight() - this.m[(this.b + this.e.size())] >= this.r)) {
        b(this.e.size() - 1);
      }
      if (this.e.isEmpty())
      {
        while (this.k < 0)
        {
          this.b -= 1;
          this.k += this.m[(this.b + 1)];
        }
        while (getFilledHeight() < this.r) {
          b();
        }
      }
      while (this.k < 0)
      {
        b(this.b - 1, 0);
        this.b -= 1;
        this.k += this.m[(this.b + 1)];
      }
    }
    paramInt1 = this.l[0];
    int i1 = this.j;
    paramInt2 = this.c;
    Iterator localIterator = this.d.iterator();
    paramInt1 -= i1;
    Object localObject1;
    Object localObject2;
    while (localIterator.hasNext())
    {
      localObject1 = (View)localIterator.next();
      localObject2 = this.l;
      paramInt2 += 1;
      i1 = localObject2[paramInt2] + paramInt1;
      ((View)localObject1).layout(paramInt1, 0, i1, this.m[0]);
      paramInt1 = i1;
    }
    paramInt1 = this.m[0];
    i1 = this.k;
    paramInt2 = this.b;
    localIterator = this.e.iterator();
    paramInt1 -= i1;
    while (localIterator.hasNext())
    {
      localObject1 = (View)localIterator.next();
      localObject2 = this.m;
      paramInt2 += 1;
      i1 = localObject2[paramInt2] + paramInt1;
      ((View)localObject1).layout(0, paramInt1, this.l[0], i1);
      paramInt1 = i1;
    }
    paramInt1 = this.m[0];
    i1 = this.k;
    paramInt2 = this.b;
    localIterator = this.f.iterator();
    paramInt1 -= i1;
    while (localIterator.hasNext())
    {
      localObject1 = (List)localIterator.next();
      localObject2 = this.m;
      int i2 = paramInt2 + 1;
      int i3 = localObject2[i2] + paramInt1;
      paramInt2 = this.l[0] - this.j;
      i1 = this.c;
      localObject1 = ((List)localObject1).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (View)((Iterator)localObject1).next();
        int[] arrayOfInt = this.l;
        i1 += 1;
        int i4 = arrayOfInt[i1] + paramInt2;
        ((View)localObject2).layout(paramInt2, paramInt1, i4, i3);
        paramInt2 = i4;
      }
      paramInt1 = i3;
      paramInt2 = i2;
    }
    invalidate();
    d();
  }
  
  public void scrollTo(int paramInt1, int paramInt2)
  {
    if (this.u)
    {
      this.j = paramInt1;
      this.c = 0;
      this.k = paramInt2;
      this.b = 0;
      return;
    }
    scrollBy(paramInt1 - a(this.l, 1, this.c) - this.j, paramInt2 - a(this.m, 1, this.b) - this.k);
  }
  
  public void setAdapter(ai paramai)
  {
    if (this.a != null) {
      this.a.b(this.t);
    }
    this.a = paramai;
    this.t = new e(this, (byte)0);
    this.a.a(this.t);
    this.s = new c();
    this.j = 0;
    this.k = 0;
    this.c = 0;
    this.b = 0;
    this.u = true;
    requestLayout();
  }
  
  public void setTouchListener(q paramq)
  {
    this.D = paramq;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\view\TableFixHeaders.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */