package android.support.v7.internal.widget;

import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.os.Parcelable;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.widget.SpinnerAdapter;

abstract class b
  extends o<SpinnerAdapter>
{
  private DataSetObserver F;
  SpinnerAdapter a;
  int b;
  int c;
  boolean d;
  int e = 0;
  int f = 0;
  int g = 0;
  int h = 0;
  final Rect i = new Rect();
  final c j = new c(this);
  
  b(Context paramContext, int paramInt)
  {
    super(paramContext, paramInt);
    setFocusable(true);
    setWillNotDraw(false);
  }
  
  final void a()
  {
    this.v = false;
    this.p = false;
    removeAllViewsInLayout();
    this.C = -1;
    this.D = Long.MIN_VALUE;
    b(-1);
    c(-1);
    invalidate();
  }
  
  public final void a(int paramInt)
  {
    c(paramInt);
    requestLayout();
    invalidate();
  }
  
  public void a(SpinnerAdapter paramSpinnerAdapter)
  {
    int k = -1;
    if (this.a != null)
    {
      this.a.unregisterDataSetObserver(this.F);
      a();
    }
    this.a = paramSpinnerAdapter;
    this.C = -1;
    this.D = Long.MIN_VALUE;
    if (this.a != null)
    {
      this.B = this.A;
      this.A = this.a.getCount();
      d();
      this.F = new p(this);
      this.a.registerDataSetObserver(this.F);
      if (this.A > 0) {
        k = 0;
      }
      b(k);
      c(k);
      if (this.A == 0) {
        f();
      }
    }
    for (;;)
    {
      requestLayout();
      return;
      d();
      a();
      f();
    }
  }
  
  public final View b()
  {
    if ((this.A > 0) && (this.y >= 0)) {
      return getChildAt(this.y - this.k);
    }
    return null;
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new ViewGroup.LayoutParams(-1, -2);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i2 = View.MeasureSpec.getMode(paramInt1);
    int k = getPaddingLeft();
    int i1 = getPaddingTop();
    int n = getPaddingRight();
    int m = getPaddingBottom();
    Object localObject = this.i;
    if (k > this.e)
    {
      ((Rect)localObject).left = k;
      localObject = this.i;
      if (i1 <= this.f) {
        break label417;
      }
      k = i1;
      label68:
      ((Rect)localObject).top = k;
      localObject = this.i;
      if (n <= this.g) {
        break label426;
      }
      k = n;
      label92:
      ((Rect)localObject).right = k;
      localObject = this.i;
      if (m <= this.h) {
        break label435;
      }
      k = m;
      label116:
      ((Rect)localObject).bottom = k;
      if (this.v) {
        e();
      }
      k = this.w;
      if ((k < 0) || (this.a == null) || (k >= this.a.getCount())) {
        break label444;
      }
      View localView = this.j.a(k);
      localObject = localView;
      if (localView == null) {
        localObject = this.a.getView(k, null, this);
      }
      if (localObject != null) {
        this.j.a(k, (View)localObject);
      }
      if (localObject == null) {
        break label444;
      }
      if (((View)localObject).getLayoutParams() == null)
      {
        this.d = true;
        ((View)localObject).setLayoutParams(generateDefaultLayoutParams());
        this.d = false;
      }
      measureChild((View)localObject, paramInt1, paramInt2);
      m = ((View)localObject).getMeasuredHeight() + this.i.top + this.i.bottom;
      k = ((View)localObject).getMeasuredWidth() + this.i.left + this.i.right;
      n = 0;
    }
    for (;;)
    {
      i1 = k;
      if (n != 0)
      {
        n = this.i.top + this.i.bottom;
        i1 = k;
        m = n;
        if (i2 == 0)
        {
          i1 = this.i.left + this.i.right;
          m = n;
        }
      }
      k = Math.max(m, getSuggestedMinimumHeight());
      m = Math.max(i1, getSuggestedMinimumWidth());
      k = resolveSize(k, paramInt2);
      setMeasuredDimension(resolveSize(m, paramInt1), k);
      this.b = paramInt2;
      this.c = paramInt1;
      return;
      k = this.e;
      break;
      label417:
      k = this.f;
      break label68;
      label426:
      k = this.g;
      break label92;
      label435:
      k = this.h;
      break label116;
      label444:
      n = 1;
      k = 0;
      m = 0;
    }
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (d)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    if (paramParcelable.a >= 0L)
    {
      this.v = true;
      this.p = true;
      this.n = paramParcelable.a;
      this.m = paramParcelable.b;
      this.q = 0;
      requestLayout();
    }
  }
  
  public Parcelable onSaveInstanceState()
  {
    d locald = new d(super.onSaveInstanceState());
    locald.a = this.x;
    if (locald.a >= 0L)
    {
      locald.b = this.w;
      return locald;
    }
    locald.b = -1;
    return locald;
  }
  
  public void requestLayout()
  {
    if (!this.d) {
      super.requestLayout();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\widget\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */