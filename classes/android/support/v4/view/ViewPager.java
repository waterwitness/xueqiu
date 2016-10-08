package android.support.v4.view;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.database.DataSetObservable;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.annotation.CallSuper;
import android.support.annotation.DrawableRes;
import android.support.v4.widget.r;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class ViewPager
  extends ViewGroup
{
  private static final cu ai = new cu();
  private static final int[] b = { 16842931 };
  private static final Comparator<cl> d = new Comparator() {};
  private static final Interpolator e = new Interpolator()
  {
    public final float getInterpolation(float paramAnonymousFloat)
    {
      paramAnonymousFloat -= 1.0F;
      return paramAnonymousFloat * (paramAnonymousFloat * paramAnonymousFloat * paramAnonymousFloat * paramAnonymousFloat) + 1.0F;
    }
  };
  private int A = 1;
  private boolean B;
  private boolean C;
  private int D;
  private int E;
  private int F;
  private float G;
  private float H;
  private float I;
  private float J;
  private int K = -1;
  private VelocityTracker L;
  private int M;
  private int N;
  private int O;
  private int P;
  private long Q;
  private r R;
  private r S;
  private boolean T = true;
  private boolean U = false;
  private boolean V;
  private int W;
  public boolean a;
  private List<cp> aa;
  private cp ab;
  private cp ac;
  private co ad;
  private cq ae;
  private Method af;
  private int ag;
  private ArrayList<View> ah;
  private final Runnable aj = new Runnable()
  {
    public final void run()
    {
      ViewPager.a(ViewPager.this);
      ViewPager.this.c();
    }
  };
  private int ak = 0;
  private int c;
  private final ArrayList<cl> f = new ArrayList();
  private final cl g = new cl();
  private final Rect h = new Rect();
  private bd i;
  private int j;
  private int k = -1;
  private Parcelable l = null;
  private ClassLoader m = null;
  private Scroller n;
  private cr o;
  private int p;
  private Drawable q;
  private int r;
  private int s;
  private float t = -3.4028235E38F;
  private float u = Float.MAX_VALUE;
  private int v;
  private int w;
  private boolean x;
  private boolean y;
  private boolean z;
  
  public ViewPager(Context paramContext)
  {
    super(paramContext);
    g();
  }
  
  public ViewPager(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    g();
  }
  
  private int a(int paramInt1, float paramFloat, int paramInt2, int paramInt3)
  {
    if ((Math.abs(paramInt3) > this.O) && (Math.abs(paramInt2) > this.M))
    {
      if (paramInt2 > 0) {}
      for (;;)
      {
        paramInt2 = paramInt1;
        if (this.f.size() > 0)
        {
          cl localcl1 = (cl)this.f.get(0);
          cl localcl2 = (cl)this.f.get(this.f.size() - 1);
          paramInt2 = Math.max(localcl1.b, Math.min(paramInt1, localcl2.b));
        }
        return paramInt2;
        paramInt1 += 1;
      }
    }
    if (paramInt1 >= this.j) {}
    for (float f1 = 0.4F;; f1 = 0.6F)
    {
      paramInt1 = (int)(f1 + (paramInt1 + paramFloat));
      break;
    }
  }
  
  private Rect a(Rect paramRect, View paramView)
  {
    if (paramRect == null) {
      paramRect = new Rect();
    }
    for (;;)
    {
      if (paramView == null)
      {
        paramRect.set(0, 0, 0, 0);
        return paramRect;
      }
      paramRect.left = paramView.getLeft();
      paramRect.right = paramView.getRight();
      paramRect.top = paramView.getTop();
      paramRect.bottom = paramView.getBottom();
      for (paramView = paramView.getParent(); ((paramView instanceof ViewGroup)) && (paramView != this); paramView = paramView.getParent())
      {
        paramView = (ViewGroup)paramView;
        paramRect.left += paramView.getLeft();
        paramRect.right += paramView.getRight();
        paramRect.top += paramView.getTop();
        paramRect.bottom += paramView.getBottom();
      }
      return paramRect;
    }
  }
  
  private cl a(int paramInt1, int paramInt2)
  {
    cl localcl = new cl();
    localcl.b = paramInt1;
    localcl.a = this.i.a(this, paramInt1);
    localcl.d = 1.0F;
    if ((paramInt2 < 0) || (paramInt2 >= this.f.size()))
    {
      this.f.add(localcl);
      return localcl;
    }
    this.f.add(paramInt2, localcl);
    return localcl;
  }
  
  private cl a(View paramView)
  {
    int i1 = 0;
    while (i1 < this.f.size())
    {
      cl localcl = (cl)this.f.get(i1);
      if (this.i.a(paramView, localcl.a)) {
        return localcl;
      }
      i1 += 1;
    }
    return null;
  }
  
  private void a(int paramInt)
  {
    int i1;
    Object localObject2;
    if (this.j != paramInt) {
      if (this.j < paramInt)
      {
        i1 = 66;
        localObject2 = b(this.j);
        this.j = paramInt;
      }
    }
    for (int i2 = i1;; i2 = 2)
    {
      if (this.i == null) {
        h();
      }
      do
      {
        return;
        i1 = 17;
        break;
        if (this.z)
        {
          h();
          return;
        }
      } while (getWindowToken() == null);
      paramInt = this.A;
      int i8 = Math.max(0, this.j - paramInt);
      int i6 = this.i.b();
      int i7 = Math.min(i6 - 1, paramInt + this.j);
      Object localObject1;
      if (i6 != this.c) {
        try
        {
          String str = getResources().getResourceName(getId());
          throw new IllegalStateException("The application's PagerAdapter changed the adapter's contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: " + this.c + ", found: " + i6 + " Pager id: " + str + " Pager class: " + getClass() + " Problematic adapter: " + this.i.getClass());
        }
        catch (Resources.NotFoundException localNotFoundException)
        {
          for (;;)
          {
            localObject1 = Integer.toHexString(getId());
          }
        }
      }
      paramInt = 0;
      if (paramInt < this.f.size())
      {
        localObject1 = (cl)this.f.get(paramInt);
        if (((cl)localObject1).b >= this.j) {
          if (((cl)localObject1).b != this.j) {
            break label1262;
          }
        }
      }
      for (;;)
      {
        if ((localObject1 == null) && (i6 > 0)) {}
        for (Object localObject3 = a(this.j, paramInt);; localObject3 = localObject1)
        {
          label333:
          int i9;
          float f2;
          label346:
          float f3;
          int i3;
          label368:
          float f1;
          if (localObject3 != null)
          {
            int i5 = paramInt - 1;
            int i4;
            Object localObject4;
            if (i5 >= 0)
            {
              localObject1 = (cl)this.f.get(i5);
              i9 = getClientWidth();
              if (i9 > 0) {
                break label530;
              }
              f2 = 0.0F;
              i1 = this.j;
              f3 = 0.0F;
              i4 = i1 - 1;
              i3 = paramInt;
              localObject4 = localObject1;
              if (i4 < 0) {
                break label680;
              }
              if ((f3 < f2) || (i4 >= i8)) {
                break label560;
              }
              if (localObject4 == null) {
                break label680;
              }
              localObject1 = localObject4;
              paramInt = i5;
              f1 = f3;
              i1 = i3;
              if (i4 == ((cl)localObject4).b)
              {
                localObject1 = localObject4;
                paramInt = i5;
                f1 = f3;
                i1 = i3;
                if (!((cl)localObject4).c)
                {
                  this.f.remove(i5);
                  this.i.a(this, i4, ((cl)localObject4).a);
                  paramInt = i5 - 1;
                  i1 = i3 - 1;
                  if (paramInt < 0) {
                    break label551;
                  }
                  localObject1 = (cl)this.f.get(paramInt);
                  f1 = f3;
                }
              }
            }
            for (;;)
            {
              i4 -= 1;
              localObject4 = localObject1;
              i5 = paramInt;
              f3 = f1;
              i3 = i1;
              break label368;
              paramInt += 1;
              break;
              localObject1 = null;
              break label333;
              label530:
              f2 = 2.0F - ((cl)localObject3).d + getPaddingLeft() / i9;
              break label346;
              label551:
              localObject1 = null;
              f1 = f3;
              continue;
              label560:
              if ((localObject4 != null) && (i4 == ((cl)localObject4).b))
              {
                f1 = f3 + ((cl)localObject4).d;
                paramInt = i5 - 1;
                if (paramInt >= 0)
                {
                  localObject1 = (cl)this.f.get(paramInt);
                  i1 = i3;
                }
                else
                {
                  localObject1 = null;
                  i1 = i3;
                }
              }
              else
              {
                f1 = f3 + a(i4, i5 + 1).d;
                i1 = i3 + 1;
                if (i5 >= 0)
                {
                  localObject1 = (cl)this.f.get(i5);
                  paramInt = i5;
                }
                else
                {
                  localObject1 = null;
                  paramInt = i5;
                }
              }
            }
            label680:
            f1 = ((cl)localObject3).d;
            paramInt = i3 + 1;
            if (f1 < 2.0F) {
              if (paramInt < this.f.size())
              {
                localObject1 = (cl)this.f.get(paramInt);
                label721:
                if (i9 > 0) {
                  break label846;
                }
                f2 = 0.0F;
                label728:
                i1 = this.j;
                i1 += 1;
                label740:
                if (i1 >= i6) {
                  break label989;
                }
                if ((f1 < f2) || (i1 <= i7)) {
                  break label867;
                }
                if (localObject1 == null) {
                  break label989;
                }
                if ((i1 != ((cl)localObject1).b) || (((cl)localObject1).c)) {
                  break label1252;
                }
                this.f.remove(paramInt);
                this.i.a(this, i1, ((cl)localObject1).a);
                if (paramInt >= this.f.size()) {
                  break label861;
                }
                localObject1 = (cl)this.f.get(paramInt);
              }
            }
          }
          label846:
          label861:
          label867:
          label989:
          label1244:
          label1250:
          label1252:
          for (;;)
          {
            i1 += 1;
            break label740;
            localObject1 = null;
            break label721;
            f2 = getPaddingRight() / i9 + 2.0F;
            break label728;
            localObject1 = null;
            continue;
            if ((localObject1 != null) && (i1 == ((cl)localObject1).b))
            {
              f3 = ((cl)localObject1).d;
              paramInt += 1;
              if (paramInt < this.f.size()) {}
              for (localObject1 = (cl)this.f.get(paramInt);; localObject1 = null)
              {
                f1 += f3;
                break;
              }
            }
            localObject1 = a(i1, paramInt);
            paramInt += 1;
            f3 = ((cl)localObject1).d;
            if (paramInt < this.f.size()) {}
            for (localObject1 = (cl)this.f.get(paramInt);; localObject1 = null)
            {
              f1 += f3;
              break;
            }
            a((cl)localObject3, i3, (cl)localObject2);
            localObject2 = this.i;
            paramInt = this.j;
            if (localObject3 != null) {}
            for (localObject1 = ((cl)localObject3).a;; localObject1 = null)
            {
              ((bd)localObject2).b(this, paramInt, localObject1);
              this.i.a(this);
              i1 = getChildCount();
              paramInt = 0;
              while (paramInt < i1)
              {
                localObject2 = getChildAt(paramInt);
                localObject1 = (cm)((View)localObject2).getLayoutParams();
                ((cm)localObject1).f = paramInt;
                if ((!((cm)localObject1).a) && (((cm)localObject1).c == 0.0F))
                {
                  localObject2 = a((View)localObject2);
                  if (localObject2 != null)
                  {
                    ((cm)localObject1).c = ((cl)localObject2).d;
                    ((cm)localObject1).e = ((cl)localObject2).b;
                  }
                }
                paramInt += 1;
              }
            }
            h();
            if (!hasFocus()) {
              break;
            }
            localObject1 = findFocus();
            if (localObject1 != null) {}
            for (localObject1 = b((View)localObject1);; localObject1 = null)
            {
              if ((localObject1 != null) && (((cl)localObject1).b == this.j)) {
                break label1250;
              }
              paramInt = 0;
              for (;;)
              {
                if (paramInt >= getChildCount()) {
                  break label1244;
                }
                localObject1 = getChildAt(paramInt);
                localObject2 = a((View)localObject1);
                if ((localObject2 != null) && (((cl)localObject2).b == this.j) && (((View)localObject1).requestFocus(i2))) {
                  break;
                }
                paramInt += 1;
              }
              break;
            }
            break;
          }
        }
        label1262:
        localObject1 = null;
      }
      localObject2 = null;
    }
  }
  
  @CallSuper
  private void a(int paramInt1, float paramFloat, int paramInt2)
  {
    int i1;
    int i2;
    int i7;
    int i5;
    Object localObject;
    int i3;
    int i4;
    label132:
    int i9;
    if (this.W > 0)
    {
      int i6 = getScrollX();
      i1 = getPaddingLeft();
      i2 = getPaddingRight();
      i7 = getWidth();
      int i8 = getChildCount();
      i5 = 0;
      if (i5 < i8)
      {
        localObject = getChildAt(i5);
        cm localcm = (cm)((View)localObject).getLayoutParams();
        if (!localcm.a) {
          break label464;
        }
        switch (localcm.b & 0x7)
        {
        case 2: 
        case 4: 
        default: 
          i3 = i1;
          i4 = i2;
          i2 = i1;
          i1 = i4;
          i9 = i3 + i6 - ((View)localObject).getLeft();
          i3 = i1;
          i4 = i2;
          if (i9 != 0)
          {
            ((View)localObject).offsetLeftAndRight(i9);
            i4 = i2;
            i3 = i1;
          }
          break;
        }
      }
    }
    for (;;)
    {
      i5 += 1;
      i1 = i4;
      i2 = i3;
      break;
      i3 = ((View)localObject).getWidth();
      i4 = i3 + i1;
      i3 = i1;
      i1 = i2;
      i2 = i4;
      break label132;
      i3 = Math.max((i7 - ((View)localObject).getMeasuredWidth()) / 2, i1);
      i4 = i1;
      i1 = i2;
      i2 = i4;
      break label132;
      i3 = i7 - i2 - ((View)localObject).getMeasuredWidth();
      i9 = ((View)localObject).getMeasuredWidth();
      i4 = i1;
      i1 = i2 + i9;
      i2 = i4;
      break label132;
      if (this.ab != null) {
        this.ab.a(paramInt1, paramFloat, paramInt2);
      }
      if (this.aa != null)
      {
        i2 = this.aa.size();
        i1 = 0;
        while (i1 < i2)
        {
          localObject = (cp)this.aa.get(i1);
          if (localObject != null) {
            ((cp)localObject).a(paramInt1, paramFloat, paramInt2);
          }
          i1 += 1;
        }
      }
      if (this.ac != null) {
        this.ac.a(paramInt1, paramFloat, paramInt2);
      }
      if (this.ae != null)
      {
        getScrollX();
        paramInt2 = getChildCount();
        paramInt1 = 0;
        while (paramInt1 < paramInt2)
        {
          localObject = getChildAt(paramInt1);
          if (!((cm)((View)localObject).getLayoutParams()).a)
          {
            ((View)localObject).getLeft();
            getClientWidth();
          }
          paramInt1 += 1;
        }
      }
      this.V = true;
      return;
      label464:
      i3 = i2;
      i4 = i1;
    }
  }
  
  private void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((paramInt2 > 0) && (!this.f.isEmpty()))
    {
      int i1 = getPaddingLeft();
      int i2 = getPaddingRight();
      int i3 = getPaddingLeft();
      int i4 = getPaddingRight();
      f1 = getScrollX() / (paramInt2 - i3 - i4 + paramInt4);
      paramInt2 = (int)((paramInt1 - i1 - i2 + paramInt3) * f1);
      scrollTo(paramInt2, getScrollY());
      if (!this.n.isFinished())
      {
        paramInt3 = this.n.getDuration();
        paramInt4 = this.n.timePassed();
        localcl = b(this.j);
        this.n.startScroll(paramInt2, 0, (int)(localcl.e * paramInt1), 0, paramInt3 - paramInt4);
      }
      return;
    }
    cl localcl = b(this.j);
    if (localcl != null) {}
    for (float f1 = Math.min(localcl.e, this.u);; f1 = 0.0F)
    {
      paramInt1 = (int)(f1 * (paramInt1 - getPaddingLeft() - getPaddingRight()));
      if (paramInt1 == getScrollX()) {
        break;
      }
      a(false);
      scrollTo(paramInt1, getScrollY());
      return;
    }
  }
  
  private void a(int paramInt1, boolean paramBoolean1, int paramInt2, boolean paramBoolean2)
  {
    cl localcl = b(paramInt1);
    int i1 = 0;
    if (localcl != null) {
      i1 = (int)(getClientWidth() * Math.max(this.t, Math.min(localcl.e, this.u)));
    }
    if (paramBoolean1)
    {
      if (getChildCount() == 0) {
        setScrollingCacheEnabled(false);
      }
      int i2;
      int i3;
      int i4;
      for (;;)
      {
        if (paramBoolean2) {
          d(paramInt1);
        }
        return;
        i2 = getScrollX();
        i3 = getScrollY();
        i1 -= i2;
        i4 = 0 - i3;
        if ((i1 != 0) || (i4 != 0)) {
          break;
        }
        a(false);
        c();
        setScrollState(0);
      }
      setScrollingCacheEnabled(true);
      setScrollState(2);
      int i5 = getClientWidth();
      int i6 = i5 / 2;
      float f3 = Math.min(1.0F, 1.0F * Math.abs(i1) / i5);
      float f1 = i6;
      float f2 = i6;
      f3 = (float)Math.sin((float)((f3 - 0.5F) * 0.4712389167638204D));
      paramInt2 = Math.abs(paramInt2);
      if (paramInt2 > 0) {}
      for (paramInt2 = Math.round(1000.0F * Math.abs((f2 * f3 + f1) / paramInt2)) * 4;; paramInt2 = (int)((Math.abs(i1) / (f1 * 1.0F + this.p) + 1.0F) * 100.0F))
      {
        paramInt2 = Math.min(paramInt2, 600);
        this.n.startScroll(i2, i3, i1, i4, paramInt2);
        ViewCompat.d(this);
        break;
        f1 = i5;
      }
    }
    if (paramBoolean2) {
      d(paramInt1);
    }
    a(false);
    scrollTo(i1, 0);
    c(i1);
  }
  
  private void a(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    a(paramInt, paramBoolean1, paramBoolean2, 0);
  }
  
  private void a(int paramInt1, boolean paramBoolean1, boolean paramBoolean2, int paramInt2)
  {
    boolean bool = false;
    if ((this.i == null) || (this.i.b() <= 0))
    {
      setScrollingCacheEnabled(false);
      return;
    }
    if ((!paramBoolean2) && (this.j == paramInt1) && (this.f.size() != 0))
    {
      setScrollingCacheEnabled(false);
      return;
    }
    int i1;
    if (paramInt1 < 0) {
      i1 = 0;
    }
    for (;;)
    {
      paramInt1 = this.A;
      if ((i1 <= this.j + paramInt1) && (i1 >= this.j - paramInt1)) {
        break;
      }
      paramInt1 = 0;
      while (paramInt1 < this.f.size())
      {
        ((cl)this.f.get(paramInt1)).c = true;
        paramInt1 += 1;
      }
      i1 = paramInt1;
      if (paramInt1 >= this.i.b()) {
        i1 = this.i.b() - 1;
      }
    }
    paramBoolean2 = bool;
    if (this.j != i1) {
      paramBoolean2 = true;
    }
    if (this.T)
    {
      this.j = i1;
      if (paramBoolean2) {
        d(i1);
      }
      requestLayout();
      return;
    }
    a(i1);
    a(i1, paramBoolean1, paramInt2, paramBoolean2);
  }
  
  private void a(cl paramcl1, int paramInt, cl paramcl2)
  {
    int i3 = this.i.b();
    int i1 = getClientWidth();
    if (i1 > 0) {}
    float f1;
    int i2;
    for (float f2 = this.p / i1;; f2 = 0.0F)
    {
      if (paramcl2 == null) {
        break label365;
      }
      i1 = paramcl2.b;
      if (i1 >= paramcl1.b) {
        break;
      }
      f1 = paramcl2.e + paramcl2.d + f2;
      i2 = 0;
      i1 += 1;
      if ((i1 > paramcl1.b) || (i2 >= this.f.size())) {
        break label365;
      }
      for (paramcl2 = (cl)this.f.get(i2); (i1 > paramcl2.b) && (i2 < this.f.size() - 1); paramcl2 = (cl)this.f.get(i2)) {
        i2 += 1;
      }
    }
    for (;;)
    {
      if (i1 < paramcl2.b)
      {
        i1 += 1;
        f1 = 1.0F + f2 + f1;
      }
      else
      {
        paramcl2.e = f1;
        f1 += paramcl2.d + f2;
        i1 += 1;
        break;
        if (i1 > paramcl1.b)
        {
          i2 = this.f.size();
          f1 = paramcl2.e;
          i2 -= 1;
          i1 -= 1;
          if ((i1 >= paramcl1.b) && (i2 >= 0)) {
            for (paramcl2 = (cl)this.f.get(i2); (i1 < paramcl2.b) && (i2 > 0); paramcl2 = (cl)this.f.get(i2)) {
              i2 -= 1;
            }
          }
        }
        for (;;)
        {
          if (i1 > paramcl2.b)
          {
            i1 -= 1;
            f1 -= 1.0F + f2;
          }
          else
          {
            f1 -= paramcl2.d + f2;
            paramcl2.e = f1;
            i1 -= 1;
            break;
            label365:
            int i4 = this.f.size();
            float f3 = paramcl1.e;
            i1 = paramcl1.b - 1;
            if (paramcl1.b == 0)
            {
              f1 = paramcl1.e;
              this.t = f1;
              if (paramcl1.b != i3 - 1) {
                break label498;
              }
              f1 = paramcl1.e + paramcl1.d - 1.0F;
              label431:
              this.u = f1;
              i2 = paramInt - 1;
              f1 = f3;
            }
            for (;;)
            {
              if (i2 < 0) {
                break label551;
              }
              paramcl2 = (cl)this.f.get(i2);
              for (;;)
              {
                if (i1 > paramcl2.b)
                {
                  i1 -= 1;
                  f1 -= 1.0F + f2;
                  continue;
                  f1 = -3.4028235E38F;
                  break;
                  label498:
                  f1 = Float.MAX_VALUE;
                  break label431;
                }
              }
              f1 -= paramcl2.d + f2;
              paramcl2.e = f1;
              if (paramcl2.b == 0) {
                this.t = f1;
              }
              i1 -= 1;
              i2 -= 1;
            }
            label551:
            f1 = paramcl1.e + paramcl1.d + f2;
            i2 = paramcl1.b + 1;
            i1 = paramInt + 1;
            paramInt = i2;
            while (i1 < i4)
            {
              paramcl1 = (cl)this.f.get(i1);
              while (paramInt < paramcl1.b)
              {
                paramInt += 1;
                f1 += 1.0F + f2;
              }
              if (paramcl1.b == i3 - 1) {
                this.u = (paramcl1.d + f1 - 1.0F);
              }
              paramcl1.e = f1;
              f1 += paramcl1.d + f2;
              paramInt += 1;
              i1 += 1;
            }
            this.U = false;
            return;
          }
        }
      }
    }
  }
  
  private void a(MotionEvent paramMotionEvent)
  {
    int i1 = at.b(paramMotionEvent);
    if (at.b(paramMotionEvent, i1) == this.K) {
      if (i1 != 0) {
        break label56;
      }
    }
    label56:
    for (i1 = 1;; i1 = 0)
    {
      this.G = at.c(paramMotionEvent, i1);
      this.K = at.b(paramMotionEvent, i1);
      if (this.L != null) {
        this.L.clear();
      }
      return;
    }
  }
  
  private void a(boolean paramBoolean)
  {
    if (this.ak == 2) {}
    int i2;
    for (int i1 = 1;; i1 = 0)
    {
      if (i1 != 0)
      {
        setScrollingCacheEnabled(false);
        this.n.abortAnimation();
        i2 = getScrollX();
        i3 = getScrollY();
        int i4 = this.n.getCurrX();
        int i5 = this.n.getCurrY();
        if ((i2 != i4) || (i3 != i5))
        {
          scrollTo(i4, i5);
          if (i4 != i2) {
            c(i4);
          }
        }
      }
      this.z = false;
      int i3 = 0;
      i2 = i1;
      i1 = i3;
      while (i1 < this.f.size())
      {
        cl localcl = (cl)this.f.get(i1);
        if (localcl.c)
        {
          localcl.c = false;
          i2 = 1;
        }
        i1 += 1;
      }
    }
    if (i2 != 0)
    {
      if (paramBoolean) {
        ViewCompat.a(this, this.aj);
      }
    }
    else {
      return;
    }
    this.aj.run();
  }
  
  private boolean a(View paramView, boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3)
  {
    int i1;
    if ((paramView instanceof ViewGroup))
    {
      ViewGroup localViewGroup = (ViewGroup)paramView;
      int i2 = paramView.getScrollX();
      int i3 = paramView.getScrollY();
      i1 = localViewGroup.getChildCount() - 1;
      if (i1 >= 0)
      {
        localView = localViewGroup.getChildAt(i1);
        if ((paramInt2 + i2 < localView.getLeft()) || (paramInt2 + i2 >= localView.getRight()) || (paramInt3 + i3 < localView.getTop()) || (paramInt3 + i3 >= localView.getBottom()) || (!a(localView, true, paramInt1, paramInt2 + i2 - localView.getLeft(), paramInt3 + i3 - localView.getTop()))) {}
      }
    }
    while ((paramBoolean) && (ViewCompat.a(paramView, -paramInt1)))
    {
      View localView;
      return true;
      i1 -= 1;
      break;
    }
    return false;
  }
  
  private cl b(int paramInt)
  {
    int i1 = 0;
    while (i1 < this.f.size())
    {
      cl localcl = (cl)this.f.get(i1);
      if (localcl.b == paramInt) {
        return localcl;
      }
      i1 += 1;
    }
    return null;
  }
  
  private cl b(View paramView)
  {
    for (;;)
    {
      ViewParent localViewParent = paramView.getParent();
      if (localViewParent == this) {
        break;
      }
      if ((localViewParent == null) || (!(localViewParent instanceof View))) {
        return null;
      }
      paramView = (View)localViewParent;
    }
    return a(paramView);
  }
  
  private boolean b(float paramFloat)
  {
    int i2 = 1;
    boolean bool2 = false;
    boolean bool1 = false;
    float f1 = this.G;
    this.G = paramFloat;
    float f2 = getScrollX() + (f1 - paramFloat);
    int i3 = getClientWidth();
    paramFloat = i3 * this.t;
    f1 = i3;
    float f3 = this.u;
    cl localcl1 = (cl)this.f.get(0);
    cl localcl2 = (cl)this.f.get(this.f.size() - 1);
    if (localcl1.b != 0) {
      paramFloat = localcl1.e * i3;
    }
    for (int i1 = 0;; i1 = 1)
    {
      if (localcl2.b != this.i.b() - 1)
      {
        f1 = localcl2.e * i3;
        i2 = 0;
      }
      for (;;)
      {
        if (f2 < paramFloat)
        {
          f1 = paramFloat;
          if (i1 != 0)
          {
            bool1 = this.R.a(Math.abs(paramFloat - f2) / i3);
            f1 = paramFloat;
          }
        }
        for (;;)
        {
          this.G += f1 - (int)f1;
          scrollTo((int)f1, getScrollY());
          c((int)f1);
          return bool1;
          if (f2 > f1)
          {
            bool1 = bool2;
            if (i2 != 0) {
              bool1 = this.S.a(Math.abs(f2 - f1) / i3);
            }
          }
          else
          {
            f1 = f2;
          }
        }
        f1 *= f3;
      }
    }
  }
  
  private boolean c(int paramInt)
  {
    boolean bool = false;
    if (this.f.size() == 0)
    {
      this.V = false;
      a(0, 0.0F, 0);
      if (!this.V) {
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
      }
    }
    else
    {
      cl localcl = k();
      int i2 = getClientWidth();
      int i3 = this.p;
      float f1 = this.p / i2;
      int i1 = localcl.b;
      f1 = (paramInt / i2 - localcl.e) / (localcl.d + f1);
      paramInt = (int)((i3 + i2) * f1);
      this.V = false;
      a(i1, f1, paramInt);
      if (!this.V) {
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
      }
      bool = true;
    }
    return bool;
  }
  
  private void d(int paramInt)
  {
    if (this.ab != null) {
      this.ab.b_(paramInt);
    }
    if (this.aa != null)
    {
      int i2 = this.aa.size();
      int i1 = 0;
      while (i1 < i2)
      {
        cp localcp = (cp)this.aa.get(i1);
        if (localcp != null) {
          localcp.b_(paramInt);
        }
        i1 += 1;
      }
    }
    if (this.ac != null) {
      this.ac.b_(paramInt);
    }
  }
  
  private boolean e(int paramInt)
  {
    boolean bool = false;
    View localView = findFocus();
    Object localObject;
    int i2;
    if (localView == this)
    {
      localObject = null;
      localView = FocusFinder.getInstance().findNextFocus(this, (View)localObject, paramInt);
      if ((localView == null) || (localView == localObject)) {
        break label299;
      }
      if (paramInt != 17) {
        break label245;
      }
      i1 = a(this.h, localView).left;
      i2 = a(this.h, (View)localObject).left;
      if ((localObject != null) && (i1 >= i2))
      {
        bool = m();
        label85:
        if (bool) {
          playSoundEffect(SoundEffectConstants.getContantForFocusDirection(paramInt));
        }
        return bool;
      }
    }
    else
    {
      if (localView == null) {
        break label376;
      }
      localObject = localView.getParent();
      if (!(localObject instanceof ViewGroup)) {
        break label381;
      }
      if (localObject != this) {}
    }
    label245:
    label299:
    label376:
    label381:
    for (int i1 = 1;; i1 = 0)
    {
      if (i1 == 0)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append(localView.getClass().getSimpleName());
        localObject = localView.getParent();
        for (;;)
        {
          if ((localObject instanceof ViewGroup))
          {
            localStringBuilder.append(" => ").append(localObject.getClass().getSimpleName());
            localObject = ((ViewParent)localObject).getParent();
            continue;
            localObject = ((ViewParent)localObject).getParent();
            break;
          }
        }
        Log.e("ViewPager", "arrowScroll tried to find focus based on non-child current focused view " + localStringBuilder.toString());
        localObject = null;
        break;
        bool = localView.requestFocus();
        break label85;
        if (paramInt != 66) {
          break label85;
        }
        i1 = a(this.h, localView).left;
        i2 = a(this.h, (View)localObject).left;
        if ((localObject == null) || (i1 > i2))
        {
          bool = localView.requestFocus();
          break label85;
          if ((paramInt == 17) || (paramInt == 1))
          {
            bool = m();
            break label85;
          }
          if ((paramInt != 66) && (paramInt != 2)) {
            break label85;
          }
        }
        if ((this.i != null) && (this.j < this.i.b() - 1))
        {
          a(this.j + 1, true);
          bool = true;
          break label85;
        }
        bool = false;
        break label85;
      }
      localObject = localView;
      break;
    }
  }
  
  private void g()
  {
    setWillNotDraw(false);
    setDescendantFocusability(262144);
    setFocusable(true);
    Context localContext = getContext();
    this.n = new Scroller(localContext, e);
    ViewConfiguration localViewConfiguration = ViewConfiguration.get(localContext);
    float f1 = localContext.getResources().getDisplayMetrics().density;
    this.F = bx.a(localViewConfiguration);
    this.M = ((int)(400.0F * f1));
    this.N = localViewConfiguration.getScaledMaximumFlingVelocity();
    this.R = new r(localContext);
    this.S = new r(localContext);
    this.O = ((int)(25.0F * f1));
    this.P = ((int)(2.0F * f1));
    this.D = ((int)(16.0F * f1));
    ViewCompat.a(this, new cn(this));
    if (ViewCompat.e(this) == 0) {
      ViewCompat.c(this, 1);
    }
  }
  
  private int getClientWidth()
  {
    return getMeasuredWidth() - getPaddingLeft() - getPaddingRight();
  }
  
  private void h()
  {
    if (this.ag != 0)
    {
      if (this.ah == null) {
        this.ah = new ArrayList();
      }
      for (;;)
      {
        int i2 = getChildCount();
        int i1 = 0;
        while (i1 < i2)
        {
          View localView = getChildAt(i1);
          this.ah.add(localView);
          i1 += 1;
        }
        this.ah.clear();
      }
      Collections.sort(this.ah, ai);
    }
  }
  
  private boolean i()
  {
    this.K = -1;
    l();
    return this.R.c() | this.S.c();
  }
  
  private void j()
  {
    ViewParent localViewParent = getParent();
    if (localViewParent != null) {
      localViewParent.requestDisallowInterceptTouchEvent(true);
    }
  }
  
  private cl k()
  {
    int i1 = getClientWidth();
    float f1;
    float f2;
    label36:
    float f4;
    float f3;
    int i3;
    int i2;
    Object localObject1;
    label53:
    Object localObject2;
    cl localcl;
    if (i1 > 0)
    {
      f1 = getScrollX() / i1;
      if (i1 <= 0) {
        break label203;
      }
      f2 = this.p / i1;
      f4 = 0.0F;
      f3 = 0.0F;
      i3 = -1;
      i1 = 0;
      i2 = 1;
      localObject1 = null;
      localObject2 = localObject1;
      if (i1 < this.f.size())
      {
        localcl = (cl)this.f.get(i1);
        if ((i2 != 0) || (localcl.b == i3 + 1)) {
          break label238;
        }
        localcl = this.g;
        localcl.e = (f4 + f3 + f2);
        localcl.b = (i3 + 1);
        localcl.d = 1.0F;
        i1 -= 1;
      }
    }
    label203:
    label208:
    label238:
    for (;;)
    {
      f3 = localcl.e;
      f4 = localcl.d;
      if (i2 == 0)
      {
        localObject2 = localObject1;
        if (f1 < f3) {}
      }
      else
      {
        if ((f1 >= f4 + f3 + f2) && (i1 != this.f.size() - 1)) {
          break label208;
        }
        localObject2 = localcl;
      }
      return (cl)localObject2;
      f1 = 0.0F;
      break;
      f2 = 0.0F;
      break label36;
      i3 = localcl.b;
      f4 = localcl.d;
      i2 = 0;
      i1 += 1;
      localObject1 = localcl;
      break label53;
    }
  }
  
  private void l()
  {
    this.B = false;
    this.C = false;
    if (this.L != null)
    {
      this.L.recycle();
      this.L = null;
    }
  }
  
  private boolean m()
  {
    if (this.j > 0)
    {
      a(this.j - 1, true);
      return true;
    }
    return false;
  }
  
  private void setScrollState(int paramInt)
  {
    int i4 = 0;
    if (this.ak == paramInt) {}
    label39:
    label79:
    label85:
    do
    {
      return;
      this.ak = paramInt;
      int i1;
      int i2;
      if (this.ae != null)
      {
        if (paramInt != 0)
        {
          i1 = 1;
          int i5 = getChildCount();
          i2 = 0;
          if (i2 >= i5) {
            break label85;
          }
          if (i1 == 0) {
            break label79;
          }
        }
        for (int i3 = 2;; i3 = 0)
        {
          ViewCompat.a(getChildAt(i2), i3, null);
          i2 += 1;
          break label39;
          i1 = 0;
          break;
        }
      }
      if (this.ab != null) {
        this.ab.b(paramInt);
      }
      if (this.aa != null)
      {
        i2 = this.aa.size();
        i1 = i4;
        while (i1 < i2)
        {
          cp localcp = (cp)this.aa.get(i1);
          if (localcp != null) {
            localcp.b(paramInt);
          }
          i1 += 1;
        }
      }
    } while (this.ac == null);
    this.ac.b(paramInt);
  }
  
  private void setScrollingCacheEnabled(boolean paramBoolean)
  {
    if (this.y != paramBoolean) {
      this.y = paramBoolean;
    }
  }
  
  public final void a()
  {
    if (this.aa != null) {
      this.aa.clear();
    }
  }
  
  public final void a(float paramFloat)
  {
    if (!this.a) {
      throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
    }
    this.G += paramFloat;
    float f2 = getScrollX() - paramFloat;
    int i1 = getClientWidth();
    paramFloat = i1;
    float f4 = this.t;
    float f1 = i1;
    float f3 = this.u;
    Object localObject = (cl)this.f.get(0);
    cl localcl = (cl)this.f.get(this.f.size() - 1);
    if (((cl)localObject).b != 0) {}
    for (paramFloat = ((cl)localObject).e * i1;; paramFloat *= f4)
    {
      if (localcl.b != this.i.b() - 1) {}
      for (f1 = localcl.e * i1;; f1 *= f3)
      {
        if (f2 < paramFloat) {}
        for (;;)
        {
          this.G += paramFloat - (int)paramFloat;
          scrollTo((int)paramFloat, getScrollY());
          c((int)paramFloat);
          long l1 = SystemClock.uptimeMillis();
          localObject = MotionEvent.obtain(this.Q, l1, 2, this.G, 0.0F, 0);
          this.L.addMovement((MotionEvent)localObject);
          ((MotionEvent)localObject).recycle();
          return;
          if (f2 > f1) {
            paramFloat = f1;
          } else {
            paramFloat = f2;
          }
        }
      }
    }
  }
  
  public void a(int paramInt, boolean paramBoolean)
  {
    this.z = false;
    a(paramInt, paramBoolean, false);
  }
  
  public final void a(cp paramcp)
  {
    if (this.aa == null) {
      this.aa = new ArrayList();
    }
    this.aa.add(paramcp);
  }
  
  public void addFocusables(ArrayList<View> paramArrayList, int paramInt1, int paramInt2)
  {
    int i2 = paramArrayList.size();
    int i3 = getDescendantFocusability();
    if (i3 != 393216)
    {
      int i1 = 0;
      while (i1 < getChildCount())
      {
        View localView = getChildAt(i1);
        if (localView.getVisibility() == 0)
        {
          cl localcl = a(localView);
          if ((localcl != null) && (localcl.b == this.j)) {
            localView.addFocusables(paramArrayList, paramInt1, paramInt2);
          }
        }
        i1 += 1;
      }
    }
    if (((i3 == 262144) && (i2 != paramArrayList.size())) || (!isFocusable())) {}
    while ((((paramInt2 & 0x1) == 1) && (isInTouchMode()) && (!isFocusableInTouchMode())) || (paramArrayList == null)) {
      return;
    }
    paramArrayList.add(this);
  }
  
  public void addTouchables(ArrayList<View> paramArrayList)
  {
    int i1 = 0;
    while (i1 < getChildCount())
    {
      View localView = getChildAt(i1);
      if (localView.getVisibility() == 0)
      {
        cl localcl = a(localView);
        if ((localcl != null) && (localcl.b == this.j)) {
          localView.addTouchables(paramArrayList);
        }
      }
      i1 += 1;
    }
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    if (!checkLayoutParams(paramLayoutParams)) {
      paramLayoutParams = generateLayoutParams(paramLayoutParams);
    }
    for (;;)
    {
      cm localcm = (cm)paramLayoutParams;
      localcm.a |= paramView instanceof ck;
      if (this.x)
      {
        if ((localcm != null) && (localcm.a)) {
          throw new IllegalStateException("Cannot add pager decor view during layout");
        }
        localcm.d = true;
        addViewInLayout(paramView, paramInt, paramLayoutParams);
        return;
      }
      super.addView(paramView, paramInt, paramLayoutParams);
      return;
    }
  }
  
  final void b()
  {
    int i7 = this.i.b();
    this.c = i7;
    int i1;
    int i2;
    int i3;
    int i5;
    int i4;
    label70:
    Object localObject;
    if ((this.f.size() < this.A * 2 + 1) && (this.f.size() < i7))
    {
      i1 = 1;
      i2 = this.j;
      i3 = 0;
      i5 = 0;
      i4 = i1;
      i1 = i2;
      i2 = i3;
      i3 = i5;
      if (i3 >= this.f.size()) {
        break label273;
      }
      localObject = (cl)this.f.get(i3);
      i5 = this.i.c();
      if (i5 == -1) {
        break label357;
      }
      if (i5 != -2) {
        break label222;
      }
      this.f.remove(i3);
      i4 = i3 - 1;
      i3 = i2;
      if (i2 == 0) {
        i3 = 1;
      }
      this.i.a(this, ((cl)localObject).b, ((cl)localObject).a);
      if (this.j != ((cl)localObject).b) {
        break label380;
      }
      i2 = Math.max(0, Math.min(this.j, i7 - 1));
      i1 = i3;
      i3 = 1;
    }
    for (;;)
    {
      i5 = i3;
      int i6 = i2;
      i3 = i4 + 1;
      i2 = i1;
      i1 = i6;
      i4 = i5;
      break label70;
      i1 = 0;
      break;
      label222:
      if (((cl)localObject).b != i5)
      {
        if (((cl)localObject).b == this.j) {
          i1 = i5;
        }
        ((cl)localObject).b = i5;
        i5 = i1;
        i6 = 1;
        i4 = i3;
        i1 = i2;
        i2 = i5;
        i3 = i6;
        continue;
        label273:
        if (i2 != 0) {
          this.i.a(this);
        }
        Collections.sort(this.f, d);
        if (i4 != 0)
        {
          i3 = getChildCount();
          i2 = 0;
          while (i2 < i3)
          {
            localObject = (cm)getChildAt(i2).getLayoutParams();
            if (!((cm)localObject).a) {
              ((cm)localObject).c = 0.0F;
            }
            i2 += 1;
          }
          a(i1, false, true);
          requestLayout();
        }
      }
      else
      {
        label357:
        i5 = i1;
        i6 = i4;
        i4 = i3;
        i1 = i2;
        i2 = i5;
        i3 = i6;
        continue;
        label380:
        i2 = i1;
        i5 = 1;
        i1 = i3;
        i3 = i5;
      }
    }
  }
  
  final void c()
  {
    a(this.j);
  }
  
  public boolean canScrollHorizontally(int paramInt)
  {
    if (this.i == null) {}
    int i1;
    int i2;
    do
    {
      do
      {
        return false;
        i1 = getClientWidth();
        i2 = getScrollX();
        if (paramInt >= 0) {
          break;
        }
      } while (i2 <= (int)(i1 * this.t));
      return true;
    } while ((paramInt <= 0) || (i2 >= (int)(i1 * this.u)));
    return true;
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof cm)) && (super.checkLayoutParams(paramLayoutParams));
  }
  
  public void computeScroll()
  {
    if ((!this.n.isFinished()) && (this.n.computeScrollOffset()))
    {
      int i1 = getScrollX();
      int i2 = getScrollY();
      int i3 = this.n.getCurrX();
      int i4 = this.n.getCurrY();
      if ((i1 != i3) || (i2 != i4))
      {
        scrollTo(i3, i4);
        if (!c(i3))
        {
          this.n.abortAnimation();
          scrollTo(0, i4);
        }
      }
      ViewCompat.d(this);
      return;
    }
    a(true);
  }
  
  public final boolean d()
  {
    if (this.B) {
      return false;
    }
    this.a = true;
    setScrollState(1);
    this.G = 0.0F;
    this.I = 0.0F;
    if (this.L == null) {
      this.L = VelocityTracker.obtain();
    }
    for (;;)
    {
      long l1 = SystemClock.uptimeMillis();
      MotionEvent localMotionEvent = MotionEvent.obtain(l1, l1, 0, 0.0F, 0.0F, 0);
      this.L.addMovement(localMotionEvent);
      localMotionEvent.recycle();
      this.Q = l1;
      return true;
      this.L.clear();
    }
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    boolean bool2 = false;
    boolean bool1;
    if (!super.dispatchKeyEvent(paramKeyEvent))
    {
      if (paramKeyEvent.getAction() == 0) {}
      switch (paramKeyEvent.getKeyCode())
      {
      default: 
        bool1 = false;
      }
    }
    for (;;)
    {
      if (bool1) {
        bool2 = true;
      }
      return bool2;
      bool1 = e(17);
      continue;
      bool1 = e(66);
      continue;
      if (Build.VERSION.SDK_INT < 11) {
        break;
      }
      if (v.b(paramKeyEvent))
      {
        bool1 = e(2);
      }
      else
      {
        if (!v.a(paramKeyEvent)) {
          break;
        }
        bool1 = e(1);
      }
    }
  }
  
  public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    boolean bool2 = false;
    boolean bool1;
    if (paramAccessibilityEvent.getEventType() == 4096)
    {
      bool1 = super.dispatchPopulateAccessibilityEvent(paramAccessibilityEvent);
      return bool1;
    }
    int i2 = getChildCount();
    int i1 = 0;
    for (;;)
    {
      bool1 = bool2;
      if (i1 >= i2) {
        break;
      }
      View localView = getChildAt(i1);
      if (localView.getVisibility() == 0)
      {
        cl localcl = a(localView);
        if ((localcl != null) && (localcl.b == this.j) && (localView.dispatchPopulateAccessibilityEvent(paramAccessibilityEvent))) {
          return true;
        }
      }
      i1 += 1;
    }
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    int i3 = 0;
    int i1 = 0;
    int i4 = ViewCompat.a(this);
    boolean bool;
    if ((i4 == 0) || ((i4 == 1) && (this.i != null) && (this.i.b() > 1)))
    {
      int i2;
      if (!this.R.a())
      {
        i3 = paramCanvas.save();
        i1 = getHeight() - getPaddingTop() - getPaddingBottom();
        i4 = getWidth();
        paramCanvas.rotate(270.0F);
        paramCanvas.translate(-i1 + getPaddingTop(), this.t * i4);
        this.R.a(i1, i4);
        i2 = this.R.a(paramCanvas) | false;
        paramCanvas.restoreToCount(i3);
      }
      i3 = i2;
      if (!this.S.a())
      {
        i4 = paramCanvas.save();
        i3 = getWidth();
        int i5 = getHeight();
        int i6 = getPaddingTop();
        int i7 = getPaddingBottom();
        paramCanvas.rotate(90.0F);
        paramCanvas.translate(-getPaddingTop(), -(this.u + 1.0F) * i3);
        this.S.a(i5 - i6 - i7, i3);
        bool = i2 | this.S.a(paramCanvas);
        paramCanvas.restoreToCount(i4);
      }
    }
    for (;;)
    {
      if (bool) {
        ViewCompat.d(this);
      }
      return;
      this.R.b();
      this.S.b();
    }
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    Drawable localDrawable = this.q;
    if ((localDrawable != null) && (localDrawable.isStateful())) {
      localDrawable.setState(getDrawableState());
    }
  }
  
  public final void e()
  {
    if (!this.a) {
      throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
    }
    Object localObject = this.L;
    ((VelocityTracker)localObject).computeCurrentVelocity(1000, this.N);
    int i1 = (int)bf.a((VelocityTracker)localObject, this.K);
    this.z = true;
    int i2 = getClientWidth();
    int i3 = getScrollX();
    localObject = k();
    a(a(((cl)localObject).b, (i3 / i2 - ((cl)localObject).e) / ((cl)localObject).d, i1, (int)(this.G - this.I)), true, true, i1);
    l();
    this.a = false;
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new cm();
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new cm(getContext(), paramAttributeSet);
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return generateDefaultLayoutParams();
  }
  
  public bd getAdapter()
  {
    return this.i;
  }
  
  protected int getChildDrawingOrder(int paramInt1, int paramInt2)
  {
    int i1 = paramInt2;
    if (this.ag == 2) {
      i1 = paramInt1 - 1 - paramInt2;
    }
    return ((cm)((View)this.ah.get(i1)).getLayoutParams()).f;
  }
  
  public int getCurrentItem()
  {
    return this.j;
  }
  
  public int getOffscreenPageLimit()
  {
    return this.A;
  }
  
  public int getPageMargin()
  {
    return this.p;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    this.T = true;
  }
  
  protected void onDetachedFromWindow()
  {
    removeCallbacks(this.aj);
    super.onDetachedFromWindow();
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if ((this.p > 0) && (this.q != null) && (this.f.size() > 0) && (this.i != null))
    {
      int i3 = getScrollX();
      int i4 = getWidth();
      float f3 = this.p / i4;
      Object localObject = (cl)this.f.get(0);
      float f1 = ((cl)localObject).e;
      int i5 = this.f.size();
      int i1 = ((cl)localObject).b;
      int i6 = ((cl)this.f.get(i5 - 1)).b;
      int i2 = 0;
      if (i1 < i6)
      {
        while ((i1 > ((cl)localObject).b) && (i2 < i5))
        {
          localObject = this.f;
          i2 += 1;
          localObject = (cl)((ArrayList)localObject).get(i2);
        }
        float f2;
        if (i1 == ((cl)localObject).b) {
          f2 = (((cl)localObject).e + ((cl)localObject).d) * i4;
        }
        for (f1 = ((cl)localObject).e + ((cl)localObject).d + f3;; f1 += 1.0F + f3)
        {
          if (this.p + f2 > i3)
          {
            this.q.setBounds((int)f2, this.r, (int)(this.p + f2 + 0.5F), this.s);
            this.q.draw(paramCanvas);
          }
          if (f2 > i3 + i4) {
            return;
          }
          i1 += 1;
          break;
          f2 = (1.0F + f1) * i4;
        }
      }
    }
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i1 = paramMotionEvent.getAction() & 0xFF;
    if ((i1 == 3) || (i1 == 1)) {
      i();
    }
    do
    {
      return false;
      if (i1 == 0) {
        break;
      }
      if (this.B) {
        return true;
      }
    } while (this.C);
    switch (i1)
    {
    }
    for (;;)
    {
      if (this.L == null) {
        this.L = VelocityTracker.obtain();
      }
      this.L.addMovement(paramMotionEvent);
      return this.B;
      i1 = this.K;
      if (i1 != -1)
      {
        i1 = at.a(paramMotionEvent, i1);
        float f2 = at.c(paramMotionEvent, i1);
        float f1 = f2 - this.G;
        float f4 = Math.abs(f1);
        float f3 = at.d(paramMotionEvent, i1);
        float f5 = Math.abs(f3 - this.J);
        if (f1 != 0.0F)
        {
          float f6 = this.G;
          if (((f6 < this.E) && (f1 > 0.0F)) || ((f6 > getWidth() - this.E) && (f1 < 0.0F))) {}
          for (i1 = 1; (i1 == 0) && (a(this, false, (int)f1, (int)f2, (int)f3)); i1 = 0)
          {
            this.G = f2;
            this.H = f3;
            this.C = true;
            return false;
          }
        }
        if ((f4 > this.F) && (0.5F * f4 > f5))
        {
          this.B = true;
          j();
          setScrollState(1);
          if (f1 > 0.0F)
          {
            f1 = this.I + this.F;
            label328:
            this.G = f1;
            this.H = f3;
            setScrollingCacheEnabled(true);
          }
        }
        while ((this.B) && (b(f2)))
        {
          ViewCompat.d(this);
          break;
          f1 = this.I - this.F;
          break label328;
          if (f5 > this.F) {
            this.C = true;
          }
        }
        f1 = paramMotionEvent.getX();
        this.I = f1;
        this.G = f1;
        f1 = paramMotionEvent.getY();
        this.J = f1;
        this.H = f1;
        this.K = at.b(paramMotionEvent, 0);
        this.C = false;
        this.n.computeScrollOffset();
        if ((this.ak == 2) && (Math.abs(this.n.getFinalX() - this.n.getCurrX()) > this.P))
        {
          this.n.abortAnimation();
          this.z = false;
          c();
          this.B = true;
          j();
          setScrollState(1);
        }
        else
        {
          a(false);
          this.B = false;
          continue;
          a(paramMotionEvent);
        }
      }
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i6 = getChildCount();
    int i8 = paramInt3 - paramInt1;
    int i7 = paramInt4 - paramInt2;
    paramInt2 = getPaddingLeft();
    paramInt1 = getPaddingTop();
    int i1 = getPaddingRight();
    paramInt3 = getPaddingBottom();
    int i9 = getScrollX();
    int i2 = 0;
    int i4 = 0;
    View localView;
    cm localcm;
    int i10;
    int i3;
    label154:
    int i5;
    if (i4 < i6)
    {
      localView = getChildAt(i4);
      if (localView.getVisibility() == 8) {
        break label671;
      }
      localcm = (cm)localView.getLayoutParams();
      if (!localcm.a) {
        break label671;
      }
      paramInt4 = localcm.b;
      i10 = localcm.b;
      switch (paramInt4 & 0x7)
      {
      case 2: 
      case 4: 
      default: 
        paramInt4 = paramInt2;
        i3 = paramInt2;
        switch (i10 & 0x70)
        {
        default: 
          i5 = paramInt1;
          paramInt2 = paramInt1;
          paramInt1 = paramInt3;
          paramInt3 = i5;
          label204:
          paramInt4 += i9;
          localView.layout(paramInt4, paramInt3, localView.getMeasuredWidth() + paramInt4, localView.getMeasuredHeight() + paramInt3);
          i2 += 1;
          paramInt4 = i1;
          paramInt3 = i3;
          i1 = paramInt1;
          paramInt1 = i2;
        }
        break;
      }
    }
    for (;;)
    {
      i4 += 1;
      i3 = paramInt3;
      i2 = paramInt1;
      paramInt1 = paramInt2;
      paramInt3 = i1;
      i1 = paramInt4;
      paramInt2 = i3;
      break;
      i3 = localView.getMeasuredWidth();
      paramInt4 = paramInt2;
      i3 += paramInt2;
      break label154;
      paramInt4 = Math.max((i8 - localView.getMeasuredWidth()) / 2, paramInt2);
      i3 = paramInt2;
      break label154;
      i3 = localView.getMeasuredWidth();
      paramInt4 = i1 + localView.getMeasuredWidth();
      i5 = i8 - i1 - i3;
      i1 = paramInt4;
      i3 = paramInt2;
      paramInt4 = i5;
      break label154;
      i5 = localView.getMeasuredHeight();
      paramInt2 = paramInt3;
      i5 += paramInt1;
      paramInt3 = paramInt1;
      paramInt1 = paramInt2;
      paramInt2 = i5;
      break label204;
      i5 = Math.max((i7 - localView.getMeasuredHeight()) / 2, paramInt1);
      paramInt2 = paramInt1;
      paramInt1 = paramInt3;
      paramInt3 = i5;
      break label204;
      i5 = i7 - paramInt3 - localView.getMeasuredHeight();
      i10 = localView.getMeasuredHeight();
      paramInt2 = paramInt1;
      paramInt1 = paramInt3 + i10;
      paramInt3 = i5;
      break label204;
      i1 = i8 - paramInt2 - i1;
      paramInt4 = 0;
      while (paramInt4 < i6)
      {
        localView = getChildAt(paramInt4);
        if (localView.getVisibility() != 8)
        {
          localcm = (cm)localView.getLayoutParams();
          if (!localcm.a)
          {
            cl localcl = a(localView);
            if (localcl != null)
            {
              float f1 = i1;
              i3 = (int)(localcl.e * f1) + paramInt2;
              if (localcm.d)
              {
                localcm.d = false;
                f1 = i1;
                localView.measure(View.MeasureSpec.makeMeasureSpec((int)(localcm.c * f1), 1073741824), View.MeasureSpec.makeMeasureSpec(i7 - paramInt1 - paramInt3, 1073741824));
              }
              localView.layout(i3, paramInt1, localView.getMeasuredWidth() + i3, localView.getMeasuredHeight() + paramInt1);
            }
          }
        }
        paramInt4 += 1;
      }
      this.r = paramInt1;
      this.s = (i7 - paramInt3);
      this.W = i2;
      if (this.T) {
        a(this.j, false, 0, false);
      }
      this.T = false;
      return;
      label671:
      paramInt4 = i2;
      i2 = paramInt1;
      i3 = paramInt2;
      paramInt1 = paramInt4;
      paramInt4 = i1;
      i1 = paramInt3;
      paramInt2 = i2;
      paramInt3 = i3;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    setMeasuredDimension(getDefaultSize(0, paramInt1), getDefaultSize(0, paramInt2));
    paramInt1 = getMeasuredWidth();
    this.E = Math.min(paramInt1 / 10, this.D);
    paramInt1 = paramInt1 - getPaddingLeft() - getPaddingRight();
    paramInt2 = getMeasuredHeight() - getPaddingTop() - getPaddingBottom();
    int i9 = getChildCount();
    int i3 = 0;
    View localView;
    int i1;
    int i2;
    cm localcm;
    int i4;
    int i6;
    label183:
    int i5;
    if (i3 < i9)
    {
      localView = getChildAt(i3);
      i1 = paramInt1;
      i2 = paramInt2;
      if (localView.getVisibility() != 8)
      {
        localcm = (cm)localView.getLayoutParams();
        i1 = paramInt1;
        i2 = paramInt2;
        if (localcm != null)
        {
          i1 = paramInt1;
          i2 = paramInt2;
          if (localcm.a)
          {
            i1 = localcm.b & 0x7;
            i4 = localcm.b & 0x70;
            i6 = Integer.MIN_VALUE;
            i2 = Integer.MIN_VALUE;
            if ((i4 != 48) && (i4 != 80)) {
              break label333;
            }
            i4 = 1;
            if ((i1 != 3) && (i1 != 5)) {
              break label339;
            }
            i5 = 1;
            label198:
            if (i4 == 0) {
              break label345;
            }
            i1 = 1073741824;
            label208:
            if (localcm.width == -2) {
              break label528;
            }
            i6 = 1073741824;
            if (localcm.width == -1) {
              break label522;
            }
            i1 = localcm.width;
          }
        }
      }
    }
    for (;;)
    {
      int i8;
      if (localcm.height != -2)
      {
        i7 = 1073741824;
        i2 = i7;
        if (localcm.height != -1)
        {
          i8 = localcm.height;
          i2 = i7;
        }
      }
      for (int i7 = i8;; i7 = paramInt2)
      {
        localView.measure(View.MeasureSpec.makeMeasureSpec(i1, i6), View.MeasureSpec.makeMeasureSpec(i7, i2));
        if (i4 != 0)
        {
          i2 = paramInt2 - localView.getMeasuredHeight();
          i1 = paramInt1;
        }
        for (;;)
        {
          i3 += 1;
          paramInt1 = i1;
          paramInt2 = i2;
          break;
          label333:
          i4 = 0;
          break label183;
          label339:
          i5 = 0;
          break label198;
          label345:
          i1 = i6;
          if (i5 == 0) {
            break label208;
          }
          i2 = 1073741824;
          i1 = i6;
          break label208;
          i1 = paramInt1;
          i2 = paramInt2;
          if (i5 != 0)
          {
            i1 = paramInt1 - localView.getMeasuredWidth();
            i2 = paramInt2;
          }
        }
        this.v = View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824);
        this.w = View.MeasureSpec.makeMeasureSpec(paramInt2, 1073741824);
        this.x = true;
        c();
        this.x = false;
        i1 = getChildCount();
        paramInt2 = 0;
        while (paramInt2 < i1)
        {
          localView = getChildAt(paramInt2);
          if (localView.getVisibility() != 8)
          {
            localcm = (cm)localView.getLayoutParams();
            if ((localcm == null) || (!localcm.a))
            {
              float f1 = paramInt1;
              localView.measure(View.MeasureSpec.makeMeasureSpec((int)(localcm.c * f1), 1073741824), this.w);
            }
          }
          paramInt2 += 1;
        }
        return;
      }
      label522:
      i1 = paramInt1;
      continue;
      label528:
      i6 = i1;
      i1 = paramInt1;
    }
  }
  
  protected boolean onRequestFocusInDescendants(int paramInt, Rect paramRect)
  {
    int i3 = -1;
    int i2 = getChildCount();
    int i1;
    if ((paramInt & 0x2) != 0)
    {
      i3 = 1;
      i1 = 0;
    }
    while (i1 != i2)
    {
      View localView = getChildAt(i1);
      if (localView.getVisibility() == 0)
      {
        cl localcl = a(localView);
        if ((localcl != null) && (localcl.b == this.j) && (localView.requestFocus(paramInt, paramRect)))
        {
          return true;
          i1 = i2 - 1;
          i2 = -1;
          continue;
        }
      }
      i1 += i3;
    }
    return false;
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof cs))
    {
      super.onRestoreInstanceState(paramParcelable);
      return;
    }
    paramParcelable = (cs)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    if (this.i != null)
    {
      Object localObject = paramParcelable.b;
      localObject = paramParcelable.c;
      a(paramParcelable.a, false, true);
      return;
    }
    this.k = paramParcelable.a;
    this.l = paramParcelable.b;
    this.m = paramParcelable.c;
  }
  
  public Parcelable onSaveInstanceState()
  {
    cs localcs = new cs(super.onSaveInstanceState());
    localcs.a = this.j;
    if (this.i != null) {
      localcs.b = this.i.a();
    }
    return localcs;
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (paramInt1 != paramInt3) {
      a(paramInt1, paramInt3, this.p, this.p);
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool2 = false;
    if (this.a) {
      return true;
    }
    if ((paramMotionEvent.getAction() == 0) && (paramMotionEvent.getEdgeFlags() != 0)) {
      return false;
    }
    if ((this.i == null) || (this.i.b() == 0)) {
      return false;
    }
    if (this.L == null) {
      this.L = VelocityTracker.obtain();
    }
    this.L.addMovement(paramMotionEvent);
    boolean bool1 = bool2;
    switch (paramMotionEvent.getAction() & 0xFF)
    {
    default: 
      bool1 = bool2;
    }
    for (;;)
    {
      if (bool1) {
        ViewCompat.d(this);
      }
      return true;
      this.n.abortAnimation();
      this.z = false;
      c();
      float f1 = paramMotionEvent.getX();
      this.I = f1;
      this.G = f1;
      f1 = paramMotionEvent.getY();
      this.J = f1;
      this.H = f1;
      this.K = at.b(paramMotionEvent, 0);
      bool1 = bool2;
      continue;
      int i1;
      float f2;
      if (!this.B)
      {
        i1 = at.a(paramMotionEvent, this.K);
        if (i1 == -1)
        {
          bool1 = i();
          continue;
        }
        f1 = at.c(paramMotionEvent, i1);
        float f3 = Math.abs(f1 - this.G);
        f2 = at.d(paramMotionEvent, i1);
        float f4 = Math.abs(f2 - this.H);
        if ((f3 > this.F) && (f3 > f4))
        {
          this.B = true;
          j();
          if (f1 - this.I <= 0.0F) {
            break label392;
          }
        }
      }
      Object localObject;
      label392:
      for (f1 = this.I + this.F;; f1 = this.I - this.F)
      {
        this.G = f1;
        this.H = f2;
        setScrollState(1);
        setScrollingCacheEnabled(true);
        localObject = getParent();
        if (localObject != null) {
          ((ViewParent)localObject).requestDisallowInterceptTouchEvent(true);
        }
        bool1 = bool2;
        if (!this.B) {
          break;
        }
        bool1 = b(at.c(paramMotionEvent, at.a(paramMotionEvent, this.K))) | false;
        break;
      }
      bool1 = bool2;
      if (this.B)
      {
        localObject = this.L;
        ((VelocityTracker)localObject).computeCurrentVelocity(1000, this.N);
        i1 = (int)bf.a((VelocityTracker)localObject, this.K);
        this.z = true;
        int i2 = getClientWidth();
        int i3 = getScrollX();
        localObject = k();
        a(a(((cl)localObject).b, (i3 / i2 - ((cl)localObject).e) / ((cl)localObject).d, i1, (int)(at.c(paramMotionEvent, at.a(paramMotionEvent, this.K)) - this.I)), true, true, i1);
        bool1 = i();
        continue;
        bool1 = bool2;
        if (this.B)
        {
          a(this.j, true, 0, false);
          bool1 = i();
          continue;
          i1 = at.b(paramMotionEvent);
          this.G = at.c(paramMotionEvent, i1);
          this.K = at.b(paramMotionEvent, i1);
          bool1 = bool2;
          continue;
          a(paramMotionEvent);
          this.G = at.c(paramMotionEvent, at.a(paramMotionEvent, this.K));
          bool1 = bool2;
        }
      }
    }
  }
  
  public void removeView(View paramView)
  {
    if (this.x)
    {
      removeViewInLayout(paramView);
      return;
    }
    super.removeView(paramView);
  }
  
  public void setAdapter(bd parambd)
  {
    Object localObject;
    if (this.i != null)
    {
      localObject = this.i;
      cr localcr = this.o;
      ((bd)localObject).a.unregisterObserver(localcr);
      int i1 = 0;
      while (i1 < this.f.size())
      {
        localObject = (cl)this.f.get(i1);
        this.i.a(this, ((cl)localObject).b, ((cl)localObject).a);
        i1 += 1;
      }
      this.i.a(this);
      this.f.clear();
      int i2;
      for (i1 = 0; i1 < getChildCount(); i1 = i2 + 1)
      {
        i2 = i1;
        if (!((cm)getChildAt(i1).getLayoutParams()).a)
        {
          removeViewAt(i1);
          i2 = i1 - 1;
        }
      }
      this.j = 0;
      scrollTo(0, 0);
    }
    this.i = parambd;
    this.c = 0;
    boolean bool;
    if (this.i != null)
    {
      if (this.o == null) {
        this.o = new cr(this, (byte)0);
      }
      parambd = this.i;
      localObject = this.o;
      parambd.a.registerObserver(localObject);
      this.z = false;
      bool = this.T;
      this.T = true;
      this.c = this.i.b();
      if (this.k >= 0)
      {
        a(this.k, false, true);
        this.k = -1;
        this.l = null;
        this.m = null;
      }
    }
    else
    {
      return;
    }
    if (!bool)
    {
      c();
      return;
    }
    requestLayout();
  }
  
  void setChildrenDrawingOrderEnabledCompat(boolean paramBoolean)
  {
    if ((Build.VERSION.SDK_INT < 7) || (this.af == null)) {}
    try
    {
      this.af = ViewGroup.class.getDeclaredMethod("setChildrenDrawingOrderEnabled", new Class[] { Boolean.TYPE });
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      for (;;)
      {
        try
        {
          this.af.invoke(this, new Object[] { Boolean.valueOf(paramBoolean) });
          return;
        }
        catch (Exception localException)
        {
          Log.e("ViewPager", "Error changing children drawing order", localException);
        }
        localNoSuchMethodException = localNoSuchMethodException;
        Log.e("ViewPager", "Can't find setChildrenDrawingOrderEnabled", localNoSuchMethodException);
      }
    }
  }
  
  public void setCurrentItem(int paramInt)
  {
    this.z = false;
    if (!this.T) {}
    for (boolean bool = true;; bool = false)
    {
      a(paramInt, bool, false);
      return;
    }
  }
  
  public void setOffscreenPageLimit(int paramInt)
  {
    int i1 = paramInt;
    if (paramInt <= 0)
    {
      Log.w("ViewPager", "Requested offscreen page limit " + paramInt + " too small; defaulting to 1");
      i1 = 1;
    }
    if (i1 != this.A)
    {
      this.A = i1;
      c();
    }
  }
  
  void setOnAdapterChangeListener(co paramco)
  {
    this.ad = paramco;
  }
  
  @Deprecated
  public void setOnPageChangeListener(cp paramcp)
  {
    this.ab = paramcp;
  }
  
  public void setPageMargin(int paramInt)
  {
    int i1 = this.p;
    this.p = paramInt;
    int i2 = getWidth();
    a(i2, i2, paramInt, i1);
    requestLayout();
  }
  
  public void setPageMarginDrawable(@DrawableRes int paramInt)
  {
    setPageMarginDrawable(getContext().getResources().getDrawable(paramInt));
  }
  
  public void setPageMarginDrawable(Drawable paramDrawable)
  {
    this.q = paramDrawable;
    if (paramDrawable != null) {
      refreshDrawableState();
    }
    if (paramDrawable == null) {}
    for (boolean bool = true;; bool = false)
    {
      setWillNotDraw(bool);
      invalidate();
      return;
    }
  }
  
  protected boolean verifyDrawable(Drawable paramDrawable)
  {
    return (super.verifyDrawable(paramDrawable)) || (paramDrawable == this.q);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\view\ViewPager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */