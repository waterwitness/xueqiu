package android.support.v7.internal.widget;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v7.b.k;
import android.util.SparseArray;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.SpinnerAdapter;

final class ag
  extends b
  implements DialogInterface.OnClickListener
{
  int F;
  private ak G;
  private ai H;
  private int I;
  private Rect J = new Rect();
  
  ag(Context paramContext, int paramInt)
  {
    this(paramContext, paramInt, (byte)0);
  }
  
  private ag(Context paramContext, int paramInt, byte paramByte)
  {
    super(paramContext, paramInt);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(null, k.Spinner, paramInt, 0);
    switch (localTypedArray.getInt(7, 0))
    {
    }
    for (;;)
    {
      this.I = localTypedArray.getInt(0, 17);
      this.G.a(localTypedArray.getString(6));
      localTypedArray.recycle();
      if (this.H != null)
      {
        this.G.a(this.H);
        this.H = null;
      }
      return;
      this.G = new ah(this, (byte)0);
      continue;
      paramContext = new aj(this, paramContext, paramInt);
      this.F = localTypedArray.getLayoutDimension(3, -2);
      paramContext.a(localTypedArray.getDrawable(2));
      paramInt = localTypedArray.getDimensionPixelOffset(5, 0);
      if (paramInt != 0) {
        paramContext.a(paramInt);
      }
      paramInt = localTypedArray.getDimensionPixelOffset(4, 0);
      if (paramInt != 0) {
        paramContext.d = paramInt;
      }
      this.G = paramContext;
    }
  }
  
  private void a(View paramView)
  {
    ViewGroup.LayoutParams localLayoutParams2 = paramView.getLayoutParams();
    ViewGroup.LayoutParams localLayoutParams1 = localLayoutParams2;
    if (localLayoutParams2 == null) {
      localLayoutParams1 = generateDefaultLayoutParams();
    }
    addViewInLayout(paramView, 0, localLayoutParams1);
    paramView.setSelected(hasFocus());
    int i = ViewGroup.getChildMeasureSpec(this.b, this.i.top + this.i.bottom, localLayoutParams1.height);
    paramView.measure(ViewGroup.getChildMeasureSpec(this.c, this.i.left + this.i.right, localLayoutParams1.width), i);
    i = this.i.top + (getMeasuredHeight() - this.i.bottom - this.i.top - paramView.getMeasuredHeight()) / 2;
    int j = paramView.getMeasuredHeight();
    paramView.layout(0, i, paramView.getMeasuredWidth() + 0, j + i);
  }
  
  private View d(int paramInt)
  {
    if (!this.v)
    {
      localView = this.j.a(paramInt);
      if (localView != null)
      {
        a(localView);
        return localView;
      }
    }
    View localView = this.a.getView(paramInt, null, this);
    a(localView);
    return localView;
  }
  
  final int a(SpinnerAdapter paramSpinnerAdapter, Drawable paramDrawable)
  {
    if (paramSpinnerAdapter == null) {
      return 0;
    }
    int n = View.MeasureSpec.makeMeasureSpec(0, 0);
    int i1 = View.MeasureSpec.makeMeasureSpec(0, 0);
    int i = Math.max(0, this.w);
    int i2 = Math.min(paramSpinnerAdapter.getCount(), i + 15);
    int j = Math.max(0, i - (15 - (i2 - i)));
    View localView = null;
    int k = 0;
    i = 0;
    if (j < i2)
    {
      int m = paramSpinnerAdapter.getItemViewType(j);
      if (m == i) {
        break label197;
      }
      localView = null;
      i = m;
    }
    label197:
    for (;;)
    {
      localView = paramSpinnerAdapter.getView(j, localView, this);
      if (localView.getLayoutParams() == null) {
        localView.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
      }
      localView.measure(n, i1);
      k = Math.max(k, localView.getMeasuredWidth());
      j += 1;
      break;
      if (paramDrawable != null)
      {
        paramDrawable.getPadding(this.J);
        return this.J.left + this.J.right + k;
      }
      return k;
    }
  }
  
  public final void a(q paramq)
  {
    throw new RuntimeException("setOnItemClickListener cannot be used with a spinner.");
  }
  
  public final void a(SpinnerAdapter paramSpinnerAdapter)
  {
    super.a(paramSpinnerAdapter);
    if (this.G != null)
    {
      this.G.a(new ai(paramSpinnerAdapter));
      return;
    }
    this.H = new ai(paramSpinnerAdapter);
  }
  
  final void b(q paramq)
  {
    super.a(paramq);
  }
  
  public final int getBaseline()
  {
    int j = -1;
    Object localObject2 = null;
    Object localObject1;
    if (getChildCount() > 0) {
      localObject1 = getChildAt(0);
    }
    for (;;)
    {
      int i = j;
      if (localObject1 != null)
      {
        int k = ((View)localObject1).getBaseline();
        i = j;
        if (k >= 0) {
          i = ((View)localObject1).getTop() + k;
        }
      }
      return i;
      localObject1 = localObject2;
      if (this.a != null)
      {
        localObject1 = localObject2;
        if (this.a.getCount() > 0)
        {
          localObject1 = d(0);
          this.j.a(0, (View)localObject1);
          removeAllViewsInLayout();
        }
      }
    }
  }
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a(paramInt);
    paramDialogInterface.dismiss();
  }
  
  protected final void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if ((this.G != null) && (this.G.f())) {
      this.G.c();
    }
  }
  
  protected final void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    this.s = true;
    paramInt2 = this.i.left;
    paramInt3 = getRight() - getLeft() - this.i.left - this.i.right;
    if (this.v) {
      e();
    }
    if (this.A == 0) {
      a();
    }
    for (;;)
    {
      this.s = false;
      return;
      if (this.w >= 0) {
        b(this.w);
      }
      paramInt4 = getChildCount();
      Object localObject = this.j;
      int i = this.k;
      paramInt1 = 0;
      while (paramInt1 < paramInt4)
      {
        ((c)localObject).a(i + paramInt1, getChildAt(paramInt1));
        paramInt1 += 1;
      }
      removeAllViewsInLayout();
      this.k = this.y;
      localObject = d(this.y);
      paramInt1 = ((View)localObject).getMeasuredWidth();
      switch (this.I & 0x7)
      {
      default: 
        paramInt1 = paramInt2;
      }
      SparseArray localSparseArray;
      for (;;)
      {
        ((View)localObject).offsetLeftAndRight(paramInt1);
        localObject = this.j;
        localSparseArray = ((c)localObject).a;
        paramInt2 = localSparseArray.size();
        paramInt1 = 0;
        while (paramInt1 < paramInt2)
        {
          View localView = (View)localSparseArray.valueAt(paramInt1);
          if (localView != null) {
            b.a(((c)localObject).b, localView);
          }
          paramInt1 += 1;
        }
        paramInt1 = paramInt2 + paramInt3 / 2 - paramInt1 / 2;
        continue;
        paramInt1 = paramInt2 + paramInt3 - paramInt1;
      }
      localSparseArray.clear();
      invalidate();
      f();
      this.v = false;
      this.p = false;
      c(this.y);
    }
  }
  
  protected final void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if ((this.G != null) && (View.MeasureSpec.getMode(paramInt1) == Integer.MIN_VALUE)) {
      setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), a(this.a, getBackground())), View.MeasureSpec.getSize(paramInt1)), getMeasuredHeight());
    }
  }
  
  public final boolean performClick()
  {
    boolean bool2 = super.performClick();
    boolean bool1 = bool2;
    if (!bool2)
    {
      bool2 = true;
      bool1 = bool2;
      if (!this.G.f())
      {
        this.G.b();
        bool1 = bool2;
      }
    }
    return bool1;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\widget\ag.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */