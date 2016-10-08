package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.support.annotation.ColorInt;
import android.support.v4.b.a.a;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.at;
import android.support.v4.view.cd;
import android.support.v4.view.r;
import android.support.v4.view.v;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import java.util.ArrayList;

public class DrawerLayout
  extends ViewGroup
  implements q
{
  static final h g;
  private static final int[] h;
  private static final boolean i;
  private static final boolean j;
  private Drawable A;
  private Drawable B;
  private Drawable C;
  private Object D;
  private boolean E;
  private Drawable F = null;
  private Drawable G = null;
  private Drawable H = null;
  private Drawable I = null;
  private final ArrayList<View> J;
  final ar a;
  final ar b;
  int c;
  boolean d;
  CharSequence e;
  CharSequence f;
  private final g k = new g(this);
  private float l;
  private int m;
  private int n = -1728053248;
  private float o;
  private Paint p = new Paint();
  private final n q;
  private final n r;
  private boolean s;
  private boolean t = true;
  private int u;
  private int v;
  private boolean w;
  private k x;
  private float y;
  private float z;
  
  static
  {
    boolean bool2 = true;
    h = new int[] { 16842931 };
    if (Build.VERSION.SDK_INT >= 19)
    {
      bool1 = true;
      i = bool1;
      if (Build.VERSION.SDK_INT < 21) {
        break label65;
      }
    }
    label65:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      j = bool1;
      if (Build.VERSION.SDK_INT < 21) {
        break label70;
      }
      g = new i();
      return;
      bool1 = false;
      break;
    }
    label70:
    g = new j();
  }
  
  public DrawerLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setDescendantFocusability(262144);
    float f1 = getResources().getDisplayMetrics().density;
    this.m = ((int)(64.0F * f1 + 0.5F));
    float f2 = 400.0F * f1;
    this.q = new n(this, 3);
    this.r = new n(this, 5);
    this.a = ar.a(this, 1.0F, this.q);
    this.a.j = 1;
    this.a.h = f2;
    this.q.b = this.a;
    this.b = ar.a(this, 1.0F, this.r);
    this.b.j = 2;
    this.b.h = f2;
    this.r.b = this.b;
    setFocusableInTouchMode(true);
    ViewCompat.c(this, 1);
    ViewCompat.a(this, new f(this));
    cd.a(this);
    if (ViewCompat.q(this))
    {
      g.a(this);
      this.A = g.a(paramContext);
    }
    this.l = (f1 * 10.0F);
    this.J = new ArrayList();
  }
  
  private void a(int paramInt1, int paramInt2)
  {
    paramInt2 = r.a(paramInt2, ViewCompat.h(this));
    Object localObject;
    if (paramInt2 == 3)
    {
      this.u = paramInt1;
      if (paramInt1 != 0)
      {
        if (paramInt2 != 3) {
          break label74;
        }
        localObject = this.a;
        label33:
        ((ar)localObject).a();
      }
      switch (paramInt1)
      {
      }
    }
    label74:
    do
    {
      do
      {
        return;
        if (paramInt2 != 5) {
          break;
        }
        this.v = paramInt1;
        break;
        localObject = this.b;
        break label33;
        localObject = a(paramInt2);
      } while (localObject == null);
      h((View)localObject);
      return;
      localObject = a(paramInt2);
    } while (localObject == null);
    e((View)localObject);
  }
  
  static void a(View paramView, float paramFloat)
  {
    paramView = (l)paramView.getLayoutParams();
    if (paramFloat == paramView.b) {
      return;
    }
    paramView.b = paramFloat;
  }
  
  private void a(boolean paramBoolean)
  {
    int i4 = getChildCount();
    int i2 = 0;
    int i1 = 0;
    if (i2 < i4)
    {
      View localView = getChildAt(i2);
      l locall = (l)localView.getLayoutParams();
      boolean bool = i1;
      int i3;
      if (d(localView)) {
        if (paramBoolean)
        {
          bool = i1;
          if (!locall.c) {}
        }
        else
        {
          i3 = localView.getWidth();
          if (!a(localView, 3)) {
            break label117;
          }
          i1 |= this.a.a(localView, -i3, localView.getTop());
        }
      }
      for (;;)
      {
        locall.c = false;
        i3 = i1;
        i2 += 1;
        i1 = i3;
        break;
        label117:
        i1 |= this.b.a(localView, getWidth(), localView.getTop());
      }
    }
    this.q.a();
    this.r.a();
    if (i1 != 0) {
      invalidate();
    }
  }
  
  private static boolean a(Drawable paramDrawable, int paramInt)
  {
    if ((paramDrawable == null) || (!a.a(paramDrawable))) {
      return false;
    }
    a.a(paramDrawable, paramInt);
    return true;
  }
  
  static float b(View paramView)
  {
    return ((l)paramView.getLayoutParams()).b;
  }
  
  private View c()
  {
    int i2 = getChildCount();
    int i1 = 0;
    while (i1 < i2)
    {
      View localView = getChildAt(i1);
      if (((l)localView.getLayoutParams()).d) {
        return localView;
      }
      i1 += 1;
    }
    return null;
  }
  
  private View d()
  {
    int i3 = getChildCount();
    int i1 = 0;
    while (i1 < i3)
    {
      View localView = getChildAt(i1);
      if (d(localView))
      {
        if (!d(localView)) {
          throw new IllegalArgumentException("View " + localView + " is not a drawer");
        }
        if (((l)localView.getLayoutParams()).b > 0.0F) {}
        for (int i2 = 1; i2 != 0; i2 = 0) {
          return localView;
        }
      }
      i1 += 1;
    }
    return null;
  }
  
  static boolean d(View paramView)
  {
    return (r.a(((l)paramView.getLayoutParams()).a, ViewCompat.h(paramView)) & 0x7) != 0;
  }
  
  private static boolean g(View paramView)
  {
    return ((l)paramView.getLayoutParams()).a == 0;
  }
  
  private void h(View paramView)
  {
    if (!d(paramView)) {
      throw new IllegalArgumentException("View " + paramView + " is not a sliding drawer");
    }
    if (this.t)
    {
      l locall = (l)paramView.getLayoutParams();
      locall.b = 1.0F;
      locall.d = true;
      a(paramView, true);
    }
    for (;;)
    {
      invalidate();
      return;
      if (a(paramView, 3)) {
        this.a.a(paramView, 0, paramView.getTop());
      } else {
        this.b.a(paramView, getWidth() - paramView.getWidth(), paramView.getTop());
      }
    }
  }
  
  public final int a(View paramView)
  {
    int i1 = c(paramView);
    if (i1 == 3) {
      return this.u;
    }
    if (i1 == 5) {
      return this.v;
    }
    return 0;
  }
  
  final View a(int paramInt)
  {
    int i1 = r.a(paramInt, ViewCompat.h(this));
    int i2 = getChildCount();
    paramInt = 0;
    while (paramInt < i2)
    {
      View localView = getChildAt(paramInt);
      if ((c(localView) & 0x7) == (i1 & 0x7)) {
        return localView;
      }
      paramInt += 1;
    }
    return null;
  }
  
  final void a(View paramView, boolean paramBoolean)
  {
    int i2 = getChildCount();
    int i1 = 0;
    if (i1 < i2)
    {
      View localView = getChildAt(i1);
      if (((!paramBoolean) && (!d(localView))) || ((paramBoolean) && (localView == paramView))) {
        ViewCompat.c(localView, 1);
      }
      for (;;)
      {
        i1 += 1;
        break;
        ViewCompat.c(localView, 4);
      }
    }
  }
  
  public final void a(Object paramObject, boolean paramBoolean)
  {
    this.D = paramObject;
    this.E = paramBoolean;
    if ((!paramBoolean) && (getBackground() == null)) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      setWillNotDraw(paramBoolean);
      requestLayout();
      return;
    }
  }
  
  final boolean a(View paramView, int paramInt)
  {
    return (c(paramView) & paramInt) == paramInt;
  }
  
  public void addFocusables(ArrayList<View> paramArrayList, int paramInt1, int paramInt2)
  {
    if (getDescendantFocusability() == 393216) {
      return;
    }
    int i3 = getChildCount();
    int i2 = 0;
    int i1 = 0;
    View localView;
    if (i2 < i3)
    {
      localView = getChildAt(i2);
      if (d(localView))
      {
        if (!d(localView)) {
          throw new IllegalArgumentException("View " + localView + " is not a drawer");
        }
        if (!((l)localView.getLayoutParams()).d) {
          break label130;
        }
        i1 = 1;
        localView.addFocusables(paramArrayList, paramInt1, paramInt2);
      }
      label130:
      for (;;)
      {
        i2 += 1;
        break;
        this.J.add(localView);
      }
    }
    if (i1 == 0)
    {
      i2 = this.J.size();
      i1 = 0;
      while (i1 < i2)
      {
        localView = (View)this.J.get(i1);
        if (localView.getVisibility() == 0) {
          localView.addFocusables(paramArrayList, paramInt1, paramInt2);
        }
        i1 += 1;
      }
    }
    this.J.clear();
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.addView(paramView, paramInt, paramLayoutParams);
    if ((c() != null) || (d(paramView))) {
      ViewCompat.c(paramView, 4);
    }
    for (;;)
    {
      if (!i) {
        ViewCompat.a(paramView, this.k);
      }
      return;
      ViewCompat.c(paramView, 1);
    }
  }
  
  final int c(View paramView)
  {
    return r.a(((l)paramView.getLayoutParams()).a, ViewCompat.h(this));
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof l)) && (super.checkLayoutParams(paramLayoutParams));
  }
  
  public void computeScroll()
  {
    int i2 = getChildCount();
    float f1 = 0.0F;
    int i1 = 0;
    while (i1 < i2)
    {
      f1 = Math.max(f1, ((l)getChildAt(i1).getLayoutParams()).b);
      i1 += 1;
    }
    this.o = f1;
    if ((this.a.c() | this.b.c())) {
      ViewCompat.d(this);
    }
  }
  
  protected boolean drawChild(Canvas paramCanvas, View paramView, long paramLong)
  {
    int i7 = getHeight();
    boolean bool1 = g(paramView);
    int i2 = 0;
    int i5 = 0;
    int i1 = getWidth();
    int i8 = paramCanvas.save();
    int i3 = i1;
    int i4;
    View localView;
    if (bool1)
    {
      int i9 = getChildCount();
      i4 = 0;
      i2 = i5;
      if (i4 < i9)
      {
        localView = getChildAt(i4);
        if ((localView != paramView) && (localView.getVisibility() == 0))
        {
          Drawable localDrawable = localView.getBackground();
          if (localDrawable != null) {
            if (localDrawable.getOpacity() == -1)
            {
              i3 = 1;
              label105:
              if ((i3 == 0) || (!d(localView)) || (localView.getHeight() < i7)) {
                break label215;
              }
              if (!a(localView, 3)) {
                break label193;
              }
              i3 = localView.getRight();
              if (i3 <= i2) {
                break label558;
              }
              i2 = i3;
            }
          }
        }
      }
    }
    label193:
    label215:
    label558:
    for (;;)
    {
      i5 = i2;
      i3 = i1;
      for (;;)
      {
        i4 += 1;
        i1 = i3;
        i2 = i5;
        break;
        i3 = 0;
        break label105;
        i3 = 0;
        break label105;
        int i6 = localView.getLeft();
        i3 = i6;
        i5 = i2;
        if (i6 >= i1)
        {
          i3 = i1;
          i5 = i2;
        }
      }
      paramCanvas.clipRect(i2, 0, i1, getHeight());
      i3 = i1;
      boolean bool2 = super.drawChild(paramCanvas, paramView, paramLong);
      paramCanvas.restoreToCount(i8);
      if ((this.o > 0.0F) && (bool1))
      {
        i1 = (int)(((this.n & 0xFF000000) >>> 24) * this.o);
        i4 = this.n;
        this.p.setColor(i1 << 24 | i4 & 0xFFFFFF);
        paramCanvas.drawRect(i2, 0.0F, i3, getHeight(), this.p);
      }
      do
      {
        return bool2;
        if ((this.B != null) && (a(paramView, 3)))
        {
          i1 = this.B.getIntrinsicWidth();
          i2 = paramView.getRight();
          i3 = this.a.i;
          f1 = Math.max(0.0F, Math.min(i2 / i3, 1.0F));
          this.B.setBounds(i2, paramView.getTop(), i1 + i2, paramView.getBottom());
          this.B.setAlpha((int)(255.0F * f1));
          this.B.draw(paramCanvas);
          return bool2;
        }
      } while ((this.C == null) || (!a(paramView, 5)));
      i1 = this.C.getIntrinsicWidth();
      i2 = paramView.getLeft();
      i3 = getWidth();
      i4 = this.b.i;
      float f1 = Math.max(0.0F, Math.min((i3 - i2) / i4, 1.0F));
      this.C.setBounds(i2 - i1, paramView.getTop(), i2, paramView.getBottom());
      this.C.setAlpha((int)(255.0F * f1));
      this.C.draw(paramCanvas);
      return bool2;
    }
  }
  
  public final void e(View paramView)
  {
    if (!d(paramView)) {
      throw new IllegalArgumentException("View " + paramView + " is not a sliding drawer");
    }
    if (this.t)
    {
      paramView = (l)paramView.getLayoutParams();
      paramView.b = 0.0F;
      paramView.d = false;
    }
    for (;;)
    {
      invalidate();
      return;
      if (a(paramView, 3)) {
        this.a.a(paramView, -paramView.getWidth(), paramView.getTop());
      } else {
        this.b.a(paramView, getWidth(), paramView.getTop());
      }
    }
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new l();
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new l(getContext(), paramAttributeSet);
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof l)) {
      return new l((l)paramLayoutParams);
    }
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      return new l((ViewGroup.MarginLayoutParams)paramLayoutParams);
    }
    return new l(paramLayoutParams);
  }
  
  public float getDrawerElevation()
  {
    if (j) {
      return this.l;
    }
    return 0.0F;
  }
  
  public Drawable getStatusBarBackgroundDrawable()
  {
    return this.A;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    this.t = true;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    this.t = true;
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if ((this.E) && (this.A != null))
    {
      int i1 = g.a(this.D);
      if (i1 > 0)
      {
        this.A.setBounds(0, 0, getWidth(), i1);
        this.A.draw(paramCanvas);
      }
    }
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool1 = false;
    int i1 = at.a(paramMotionEvent);
    boolean bool2 = this.a.a(paramMotionEvent);
    boolean bool3 = this.b.a(paramMotionEvent);
    label63:
    int i2;
    label85:
    label113:
    float f1;
    float f2;
    switch (i1)
    {
    default: 
      i1 = 0;
      if ((!(bool3 | bool2)) && (i1 == 0))
      {
        i2 = getChildCount();
        i1 = 0;
        if (i1 >= i2) {
          break label390;
        }
        if (!((l)getChildAt(i1).getLayoutParams()).c) {
          break;
        }
        i1 = 1;
        if ((i1 == 0) && (!this.d)) {}
      }
      else
      {
        bool1 = true;
      }
      return bool1;
    case 0: 
      f1 = paramMotionEvent.getX();
      f2 = paramMotionEvent.getY();
      this.y = f1;
      this.z = f2;
      if (this.o > 0.0F)
      {
        paramMotionEvent = this.a.b((int)f1, (int)f2);
        if ((paramMotionEvent == null) || (!g(paramMotionEvent))) {}
      }
      break;
    }
    for (i1 = 1;; i1 = 0)
    {
      this.w = false;
      this.d = false;
      break label63;
      paramMotionEvent = this.a;
      int i3 = paramMotionEvent.c.length;
      i2 = 0;
      label214:
      if (i2 < i3) {
        if ((paramMotionEvent.g & 1 << i2) != 0)
        {
          i1 = 1;
          label236:
          if (i1 == 0) {
            break label342;
          }
          f1 = paramMotionEvent.e[i2] - paramMotionEvent.c[i2];
          f2 = paramMotionEvent.f[i2] - paramMotionEvent.d[i2];
          if (f1 * f1 + f2 * f2 <= paramMotionEvent.b * paramMotionEvent.b) {
            break label336;
          }
          i1 = 1;
          label297:
          if (i1 == 0) {
            break label348;
          }
        }
      }
      for (i1 = 1; i1 != 0; i1 = 0)
      {
        this.q.a();
        this.r.a();
        i1 = 0;
        break label63;
        i1 = 0;
        break label236;
        label336:
        i1 = 0;
        break label297;
        label342:
        i1 = 0;
        break label297;
        label348:
        i2 += 1;
        break label214;
      }
      a(true);
      this.w = false;
      this.d = false;
      break;
      i1 += 1;
      break label85;
      label390:
      i1 = 0;
      break label113;
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      if (d() != null) {}
      for (int i1 = 1; i1 != 0; i1 = 0)
      {
        v.c(paramKeyEvent);
        return true;
      }
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool = false;
    if (paramInt == 4)
    {
      paramKeyEvent = d();
      if ((paramKeyEvent != null) && (a(paramKeyEvent) == 0)) {
        a(false);
      }
      if (paramKeyEvent != null) {
        bool = true;
      }
      return bool;
    }
    return super.onKeyUp(paramInt, paramKeyEvent);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.s = true;
    int i4 = paramInt3 - paramInt1;
    int i5 = getChildCount();
    paramInt3 = 0;
    while (paramInt3 < i5)
    {
      View localView = getChildAt(paramInt3);
      l locall;
      if (localView.getVisibility() != 8)
      {
        locall = (l)localView.getLayoutParams();
        if (g(localView)) {
          localView.layout(locall.leftMargin, locall.topMargin, locall.leftMargin + localView.getMeasuredWidth(), locall.topMargin + localView.getMeasuredHeight());
        }
      }
      else
      {
        paramInt3 += 1;
        continue;
      }
      int i6 = localView.getMeasuredWidth();
      int i7 = localView.getMeasuredHeight();
      int i1;
      float f1;
      label163:
      int i2;
      if (a(localView, 3))
      {
        paramInt1 = -i6;
        i1 = (int)(i6 * locall.b) + paramInt1;
        f1 = (i6 + i1) / i6;
        if (f1 == locall.b) {
          break label309;
        }
        i2 = 1;
        label177:
        switch (locall.a & 0x70)
        {
        default: 
          localView.layout(i1, locall.topMargin, i6 + i1, i7 + locall.topMargin);
          label237:
          if (i2 != 0) {
            a(localView, f1);
          }
          if (locall.b <= 0.0F) {
            break;
          }
        }
      }
      for (paramInt1 = 0; localView.getVisibility() != paramInt1; paramInt1 = 4)
      {
        localView.setVisibility(paramInt1);
        break;
        i1 = i4 - (int)(i6 * locall.b);
        f1 = (i4 - i1) / i6;
        break label163;
        label309:
        i2 = 0;
        break label177;
        paramInt1 = paramInt4 - paramInt2;
        localView.layout(i1, paramInt1 - locall.bottomMargin - localView.getMeasuredHeight(), i6 + i1, paramInt1 - locall.bottomMargin);
        break label237;
        int i8 = paramInt4 - paramInt2;
        int i3 = (i8 - i7) / 2;
        if (i3 < locall.topMargin) {
          paramInt1 = locall.topMargin;
        }
        for (;;)
        {
          localView.layout(i1, paramInt1, i6 + i1, i7 + paramInt1);
          break;
          paramInt1 = i3;
          if (i3 + i7 > i8 - locall.bottomMargin) {
            paramInt1 = i8 - locall.bottomMargin - i7;
          }
        }
      }
    }
    this.s = false;
    this.t = false;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i5 = 300;
    int i4 = 0;
    int i8 = View.MeasureSpec.getMode(paramInt1);
    int i7 = View.MeasureSpec.getMode(paramInt2);
    int i3 = View.MeasureSpec.getSize(paramInt1);
    int i6 = View.MeasureSpec.getSize(paramInt2);
    int i2;
    if (i8 == 1073741824)
    {
      i2 = i3;
      if (i7 == 1073741824) {}
    }
    else if (isInEditMode())
    {
      i1 = i3;
      if (i8 != Integer.MIN_VALUE)
      {
        i1 = i3;
        if (i8 == 0) {
          i1 = 300;
        }
      }
      i2 = i1;
      if (i7 == Integer.MIN_VALUE) {
        break label534;
      }
      i2 = i1;
      if (i7 != 0) {
        break label534;
      }
      i2 = i1;
    }
    label151:
    label222:
    label299:
    label318:
    label491:
    label533:
    label534:
    for (int i1 = i5;; i1 = i6)
    {
      setMeasuredDimension(i2, i1);
      Object localObject1;
      Object localObject2;
      if ((this.D != null) && (ViewCompat.q(this)))
      {
        i3 = 1;
        i5 = ViewCompat.h(this);
        i6 = getChildCount();
        if (i4 >= i6) {
          break label533;
        }
        localObject1 = getChildAt(i4);
        if (((View)localObject1).getVisibility() != 8)
        {
          localObject2 = (l)((View)localObject1).getLayoutParams();
          if (i3 != 0)
          {
            i7 = r.a(((l)localObject2).a, i5);
            if (!ViewCompat.q((View)localObject1)) {
              break label299;
            }
            g.a((View)localObject1, this.D, i7);
          }
          if (!g((View)localObject1)) {
            break label318;
          }
          ((View)localObject1).measure(View.MeasureSpec.makeMeasureSpec(i2 - ((l)localObject2).leftMargin - ((l)localObject2).rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec(i1 - ((l)localObject2).topMargin - ((l)localObject2).bottomMargin, 1073741824));
        }
      }
      for (;;)
      {
        i4 += 1;
        break label151;
        throw new IllegalArgumentException("DrawerLayout must be measured with MeasureSpec.EXACTLY.");
        i3 = 0;
        break;
        g.a((ViewGroup.MarginLayoutParams)localObject2, this.D, i7);
        break label222;
        if (!d((View)localObject1)) {
          break label491;
        }
        if ((j) && (ViewCompat.p((View)localObject1) != this.l)) {
          ViewCompat.d((View)localObject1, this.l);
        }
        i7 = c((View)localObject1) & 0x7;
        if ((i7 & 0x0) != 0)
        {
          localObject2 = new StringBuilder("Child drawer has absolute gravity ");
          if ((i7 & 0x3) == 3) {
            localObject1 = "LEFT";
          }
          for (;;)
          {
            throw new IllegalStateException((String)localObject1 + " but this DrawerLayout already has a drawer view along that edge");
            if ((i7 & 0x5) == 5) {
              localObject1 = "RIGHT";
            } else {
              localObject1 = Integer.toHexString(i7);
            }
          }
        }
        ((View)localObject1).measure(getChildMeasureSpec(paramInt1, this.m + ((l)localObject2).leftMargin + ((l)localObject2).rightMargin, ((l)localObject2).width), getChildMeasureSpec(paramInt2, ((l)localObject2).topMargin + ((l)localObject2).bottomMargin, ((l)localObject2).height));
      }
      throw new IllegalStateException("Child " + localObject1 + " at index " + i4 + " does not have a valid layout_gravity - must be Gravity.LEFT, Gravity.RIGHT or Gravity.NO_GRAVITY");
      return;
    }
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (m)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    if (paramParcelable.a != 0)
    {
      View localView = a(paramParcelable.a);
      if (localView != null) {
        h(localView);
      }
    }
    a(paramParcelable.b, 3);
    a(paramParcelable.c, 5);
  }
  
  public void onRtlPropertiesChanged(int paramInt)
  {
    Drawable localDrawable;
    if (!j)
    {
      paramInt = ViewCompat.h(this);
      if (paramInt != 0) {
        break label77;
      }
      if (this.F == null) {
        break label101;
      }
      a(this.F, paramInt);
      localDrawable = this.F;
      this.B = localDrawable;
      paramInt = ViewCompat.h(this);
      if (paramInt != 0) {
        break label109;
      }
      if (this.G == null) {
        break label133;
      }
      a(this.G, paramInt);
      localDrawable = this.G;
    }
    for (;;)
    {
      this.C = localDrawable;
      return;
      label77:
      if (this.G != null)
      {
        a(this.G, paramInt);
        localDrawable = this.G;
        break;
      }
      label101:
      localDrawable = this.H;
      break;
      label109:
      if (this.F != null)
      {
        a(this.F, paramInt);
        localDrawable = this.F;
      }
      else
      {
        label133:
        localDrawable = this.I;
      }
    }
  }
  
  protected Parcelable onSaveInstanceState()
  {
    m localm = new m(super.onSaveInstanceState());
    View localView = c();
    if (localView != null) {
      localm.a = ((l)localView.getLayoutParams()).a;
    }
    localm.b = this.u;
    localm.c = this.v;
    return localm;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    this.a.b(paramMotionEvent);
    this.b.b(paramMotionEvent);
    float f1;
    float f2;
    boolean bool;
    switch (paramMotionEvent.getAction() & 0xFF)
    {
    case 2: 
    default: 
      return true;
    case 0: 
      f1 = paramMotionEvent.getX();
      f2 = paramMotionEvent.getY();
      this.y = f1;
      this.z = f2;
      this.w = false;
      this.d = false;
      return true;
    case 1: 
      f2 = paramMotionEvent.getX();
      f1 = paramMotionEvent.getY();
      paramMotionEvent = this.a.b((int)f2, (int)f1);
      if ((paramMotionEvent != null) && (g(paramMotionEvent)))
      {
        f2 -= this.y;
        f1 -= this.z;
        int i1 = this.a.b;
        if (f2 * f2 + f1 * f1 < i1 * i1)
        {
          paramMotionEvent = c();
          if (paramMotionEvent != null) {
            if (a(paramMotionEvent) == 2) {
              bool = true;
            }
          }
        }
      }
      break;
    }
    for (;;)
    {
      a(bool);
      this.w = false;
      return true;
      bool = false;
      continue;
      a(true);
      this.w = false;
      this.d = false;
      return true;
      bool = true;
    }
  }
  
  public void requestDisallowInterceptTouchEvent(boolean paramBoolean)
  {
    super.requestDisallowInterceptTouchEvent(paramBoolean);
    this.w = paramBoolean;
    if (paramBoolean) {
      a(true);
    }
  }
  
  public void requestLayout()
  {
    if (!this.s) {
      super.requestLayout();
    }
  }
  
  public void setDrawerElevation(float paramFloat)
  {
    this.l = paramFloat;
    int i1 = 0;
    while (i1 < getChildCount())
    {
      View localView = getChildAt(i1);
      if (d(localView)) {
        ViewCompat.d(localView, this.l);
      }
      i1 += 1;
    }
  }
  
  public void setDrawerListener(k paramk)
  {
    this.x = paramk;
  }
  
  public void setDrawerLockMode(int paramInt)
  {
    a(paramInt, 3);
    a(paramInt, 5);
  }
  
  public void setScrimColor(@ColorInt int paramInt)
  {
    this.n = paramInt;
    invalidate();
  }
  
  public void setStatusBarBackground(int paramInt)
  {
    if (paramInt != 0) {}
    for (Drawable localDrawable = android.support.v4.content.g.a(getContext(), paramInt);; localDrawable = null)
    {
      this.A = localDrawable;
      invalidate();
      return;
    }
  }
  
  public void setStatusBarBackground(Drawable paramDrawable)
  {
    this.A = paramDrawable;
    invalidate();
  }
  
  public void setStatusBarBackgroundColor(@ColorInt int paramInt)
  {
    this.A = new ColorDrawable(paramInt);
    invalidate();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\widget\DrawerLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */