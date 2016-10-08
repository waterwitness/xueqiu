package android.support.v7.internal.widget;

import android.content.Context;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.SparseArray;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewDebug.ExportedProperty;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.accessibility.AccessibilityEvent;
import android.widget.Adapter;

abstract class o<T extends Adapter>
  extends ViewGroup
{
  @ViewDebug.ExportedProperty(category="list")
  int A;
  int B;
  int C = -1;
  long D = Long.MIN_VALUE;
  boolean E = false;
  private View a;
  private boolean b;
  private boolean c;
  private o<T>.t d;
  @ViewDebug.ExportedProperty(category="scrolling")
  int k = 0;
  int l;
  int m;
  long n = Long.MIN_VALUE;
  long o;
  boolean p = false;
  int q;
  int r;
  boolean s = false;
  s t;
  q u;
  boolean v;
  @ViewDebug.ExportedProperty(category="list")
  int w = -1;
  long x = Long.MIN_VALUE;
  @ViewDebug.ExportedProperty(category="list")
  int y = -1;
  long z = Long.MIN_VALUE;
  
  o(Context paramContext, int paramInt)
  {
    super(paramContext, null, paramInt);
  }
  
  private long a(int paramInt)
  {
    Adapter localAdapter = c();
    if ((localAdapter == null) || (paramInt < 0)) {
      return Long.MIN_VALUE;
    }
    return localAdapter.getItemId(paramInt);
  }
  
  private void a()
  {
    if (this.t == null) {}
    int i;
    do
    {
      return;
      i = this.w;
    } while (i < 0);
    b();
    c().getItemId(i);
  }
  
  public void a(q paramq)
  {
    this.u = paramq;
  }
  
  public final boolean a(View paramView, int paramInt)
  {
    if (this.u != null)
    {
      playSoundEffect(0);
      if (paramView != null) {
        paramView.sendAccessibilityEvent(1);
      }
      this.u.a(paramView, paramInt);
      return true;
    }
    return false;
  }
  
  public void addView(View paramView)
  {
    throw new UnsupportedOperationException("addView(View) is not supported in AdapterView");
  }
  
  public void addView(View paramView, int paramInt)
  {
    throw new UnsupportedOperationException("addView(View, int) is not supported in AdapterView");
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    throw new UnsupportedOperationException("addView(View, int, LayoutParams) is not supported in AdapterView");
  }
  
  public void addView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    throw new UnsupportedOperationException("addView(View, LayoutParams) is not supported in AdapterView");
  }
  
  public abstract View b();
  
  final void b(int paramInt)
  {
    this.y = paramInt;
    this.z = a(paramInt);
  }
  
  public abstract T c();
  
  final void c(int paramInt)
  {
    this.w = paramInt;
    this.x = a(paramInt);
    if ((this.p) && (this.q == 0) && (paramInt >= 0))
    {
      this.m = paramInt;
      this.n = this.x;
    }
  }
  
  protected boolean canAnimate()
  {
    return (super.canAnimate()) && (this.A > 0);
  }
  
  final void d()
  {
    int j = 1;
    Adapter localAdapter = c();
    int i;
    label28:
    boolean bool;
    if ((localAdapter == null) || (localAdapter.getCount() == 0))
    {
      i = 1;
      if (i != 0) {
        break label151;
      }
      i = 1;
      if ((i == 0) || (!this.c)) {
        break label156;
      }
      bool = true;
      label42:
      super.setFocusableInTouchMode(bool);
      if ((i == 0) || (!this.b)) {
        break label162;
      }
      bool = true;
      label62:
      super.setFocusable(bool);
      if (this.a != null)
      {
        i = j;
        if (localAdapter != null)
        {
          if (!localAdapter.isEmpty()) {
            break label168;
          }
          i = j;
        }
        label92:
        if (i == 0) {
          break label181;
        }
        if (this.a == null) {
          break label173;
        }
        this.a.setVisibility(0);
        setVisibility(8);
      }
    }
    for (;;)
    {
      if (this.v) {
        onLayout(false, getLeft(), getTop(), getRight(), getBottom());
      }
      return;
      i = 0;
      break;
      label151:
      i = 0;
      break label28;
      label156:
      bool = false;
      break label42;
      label162:
      bool = false;
      break label62;
      label168:
      i = 0;
      break label92;
      label173:
      setVisibility(0);
    }
    label181:
    if (this.a != null) {
      this.a.setVisibility(8);
    }
    setVisibility(0);
  }
  
  public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    View localView = b();
    return (localView != null) && (localView.getVisibility() == 0) && (localView.dispatchPopulateAccessibilityEvent(paramAccessibilityEvent));
  }
  
  protected void dispatchRestoreInstanceState(SparseArray<Parcelable> paramSparseArray)
  {
    dispatchThawSelfOnly(paramSparseArray);
  }
  
  protected void dispatchSaveInstanceState(SparseArray<Parcelable> paramSparseArray)
  {
    dispatchFreezeSelfOnly(paramSparseArray);
  }
  
  final void e()
  {
    int i5 = this.A;
    int i6;
    int i;
    int i3;
    int i1;
    int i2;
    if (i5 > 0) {
      if (this.p)
      {
        this.p = false;
        i6 = this.A;
        if (i6 != 0)
        {
          long l1 = this.n;
          i = this.m;
          if (l1 != Long.MIN_VALUE)
          {
            j = Math.min(i6 - 1, Math.max(0, i));
            long l2 = SystemClock.uptimeMillis();
            i3 = 0;
            Adapter localAdapter = c();
            if (localAdapter != null)
            {
              i1 = j;
              i = j;
              i2 = j;
              j = i3;
              if (SystemClock.uptimeMillis() <= 100L + l2) {
                if (localAdapter.getItemId(i) == l1)
                {
                  label121:
                  if (i < 0) {
                    break label334;
                  }
                  c(i);
                  i = 1;
                  label132:
                  j = i;
                  if (i == 0)
                  {
                    i1 = this.w;
                    j = i1;
                    if (i1 >= i5) {
                      j = i5 - 1;
                    }
                    i1 = j;
                    if (j < 0) {
                      i1 = 0;
                    }
                    if (i1 < 0) {}
                    j = i;
                    if (i1 >= 0)
                    {
                      c(i1);
                      f();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
    for (int j = 1;; j = 0)
    {
      if (j == 0)
      {
        this.y = -1;
        this.z = Long.MIN_VALUE;
        this.w = -1;
        this.x = Long.MIN_VALUE;
        this.p = false;
        f();
      }
      return;
      label243:
      int i4;
      if (i2 == i6 - 1)
      {
        i3 = 1;
        if (i1 != 0) {
          break label295;
        }
        i4 = 1;
      }
      for (;;)
      {
        if ((i3 == 0) || (i4 == 0))
        {
          if ((i4 != 0) || ((j != 0) && (i3 == 0)))
          {
            i2 += 1;
            j = 0;
            i = i2;
            break;
            i3 = 0;
            break label243;
            label295:
            i4 = 0;
            continue;
          }
          if ((i3 == 0) && ((j != 0) || (i4 != 0))) {
            break;
          }
          i1 -= 1;
          j = 1;
          i = i1;
          break;
        }
      }
      i = -1;
      break label121;
      label334:
      i = 0;
      break label132;
    }
  }
  
  final void f()
  {
    if ((this.y != this.C) || (this.z != this.D)) {
      if (this.t != null)
      {
        if ((!this.s) && (!this.E)) {
          break label117;
        }
        if (this.d == null) {
          this.d = new t(this, (byte)0);
        }
        post(this.d);
      }
    }
    for (;;)
    {
      if ((this.y != -1) && (isShown()) && (!isInTouchMode())) {
        sendAccessibilityEvent(4);
      }
      this.C = this.y;
      this.D = this.z;
      return;
      label117:
      a();
    }
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    removeCallbacks(this.d);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.r = getHeight();
  }
  
  public void removeAllViews()
  {
    throw new UnsupportedOperationException("removeAllViews() is not supported in AdapterView");
  }
  
  public void removeView(View paramView)
  {
    throw new UnsupportedOperationException("removeView(View) is not supported in AdapterView");
  }
  
  public void removeViewAt(int paramInt)
  {
    throw new UnsupportedOperationException("removeViewAt(int) is not supported in AdapterView");
  }
  
  public void setFocusable(boolean paramBoolean)
  {
    boolean bool = true;
    Adapter localAdapter = c();
    int i;
    if ((localAdapter == null) || (localAdapter.getCount() == 0))
    {
      i = 1;
      this.b = paramBoolean;
      if (!paramBoolean) {
        this.c = false;
      }
      if ((!paramBoolean) || (i != 0)) {
        break label59;
      }
    }
    label59:
    for (paramBoolean = bool;; paramBoolean = false)
    {
      super.setFocusable(paramBoolean);
      return;
      i = 0;
      break;
    }
  }
  
  public void setFocusableInTouchMode(boolean paramBoolean)
  {
    boolean bool = true;
    Adapter localAdapter = c();
    int i;
    if ((localAdapter == null) || (localAdapter.getCount() == 0))
    {
      i = 1;
      this.c = paramBoolean;
      if (paramBoolean) {
        this.b = true;
      }
      if ((!paramBoolean) || (i != 0)) {
        break label59;
      }
    }
    label59:
    for (paramBoolean = bool;; paramBoolean = false)
    {
      super.setFocusableInTouchMode(paramBoolean);
      return;
      i = 0;
      break;
    }
  }
  
  public void setOnClickListener(View.OnClickListener paramOnClickListener)
  {
    throw new RuntimeException("Don't call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead");
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\widget\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */