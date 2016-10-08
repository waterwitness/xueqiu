package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.a.a;
import android.support.v4.view.a.ac;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.accessibility.AccessibilityEvent;
import java.util.ArrayList;
import java.util.List;

public abstract class aa
{
  private boolean a = false;
  d h;
  RecyclerView i;
  @Nullable
  aj j;
  
  public static int a(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    int m = 1073741824;
    int k = Math.max(0, paramInt1 - paramInt2);
    if (paramBoolean) {
      if (paramInt3 >= 0)
      {
        paramInt1 = paramInt3;
        paramInt2 = m;
      }
    }
    for (;;)
    {
      return View.MeasureSpec.makeMeasureSpec(paramInt1, paramInt2);
      paramInt2 = 0;
      paramInt1 = 0;
      continue;
      paramInt2 = m;
      paramInt1 = paramInt3;
      if (paramInt3 < 0) {
        if (paramInt3 == -1)
        {
          paramInt1 = k;
          paramInt2 = m;
        }
        else if (paramInt3 == -2)
        {
          paramInt2 = Integer.MIN_VALUE;
          paramInt1 = k;
        }
        else
        {
          paramInt2 = 0;
          paramInt1 = 0;
        }
      }
    }
  }
  
  public static int a(View paramView)
  {
    return ((ab)paramView.getLayoutParams()).a.c();
  }
  
  public static ab a(Context paramContext, AttributeSet paramAttributeSet)
  {
    return new ab(paramContext, paramAttributeSet);
  }
  
  public static ab a(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof ab)) {
      return new ab((ab)paramLayoutParams);
    }
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      return new ab((ViewGroup.MarginLayoutParams)paramLayoutParams);
    }
    return new ab(paramLayoutParams);
  }
  
  public static boolean a(ab paramab)
  {
    return paramab != null;
  }
  
  public static int b(View paramView)
  {
    Rect localRect = ((ab)paramView.getLayoutParams()).b;
    int k = paramView.getMeasuredWidth();
    int m = localRect.left;
    return localRect.right + (k + m);
  }
  
  public static int c(View paramView)
  {
    Rect localRect = ((ab)paramView.getLayoutParams()).b;
    int k = paramView.getMeasuredHeight();
    int m = localRect.top;
    return localRect.bottom + (k + m);
  }
  
  public static int d(View paramView)
  {
    return ((ab)paramView.getLayoutParams()).b.top;
  }
  
  public static int e(View paramView)
  {
    return ((ab)paramView.getLayoutParams()).b.bottom;
  }
  
  public static int f(View paramView)
  {
    return ((ab)paramView.getLayoutParams()).b.left;
  }
  
  public static int g(View paramView)
  {
    return ((ab)paramView.getLayoutParams()).b.right;
  }
  
  public int a(int paramInt, af paramaf, al paramal)
  {
    return 0;
  }
  
  public int a(al paramal)
  {
    return 0;
  }
  
  public abstract ab a();
  
  public View a(int paramInt)
  {
    int m = g();
    int k = 0;
    while (k < m)
    {
      View localView = d(k);
      ao localao = RecyclerView.b(localView);
      if ((localao != null) && (localao.c() == paramInt) && (!localao.b()) && ((this.i.n.i) || (!localao.m()))) {
        return localView;
      }
      k += 1;
    }
    return null;
  }
  
  public final void a(int paramInt, af paramaf)
  {
    View localView = d(paramInt);
    b(paramInt);
    paramaf.a(localView);
  }
  
  public void a(Parcelable paramParcelable) {}
  
  final void a(RecyclerView paramRecyclerView)
  {
    if (paramRecyclerView == null)
    {
      this.i = null;
      this.h = null;
      return;
    }
    this.i = paramRecyclerView;
    this.h = paramRecyclerView.c;
  }
  
  public void a(RecyclerView paramRecyclerView, af paramaf) {}
  
  final void a(af paramaf)
  {
    int m = paramaf.a.size();
    int k = 0;
    while (k < m)
    {
      View localView = ((ao)paramaf.a.get(k)).a;
      ao localao = RecyclerView.b(localView);
      if (!localao.b())
      {
        if (localao.n()) {
          this.i.removeDetachedView(localView, false);
        }
        paramaf.b(localView);
      }
      k += 1;
    }
    paramaf.a.clear();
    if (m > 0) {
      this.i.invalidate();
    }
  }
  
  public void a(af paramaf, al paramal)
  {
    Log.e("RecyclerView", "You must override onLayoutChildren(Recycler recycler, State state) ");
  }
  
  final void a(View paramView, int paramInt, boolean paramBoolean)
  {
    ao localao1 = RecyclerView.b(paramView);
    ab localab1;
    if ((paramBoolean) || (localao1.m()))
    {
      RecyclerView.c(this.i, paramView);
      localab1 = (ab)paramView.getLayoutParams();
      if ((!localao1.f()) && (!localao1.d())) {
        break label120;
      }
      if (!localao1.d()) {
        break label112;
      }
      localao1.e();
      label64:
      this.h.a(paramView, paramInt, paramView.getLayoutParams(), false);
    }
    for (;;)
    {
      if (localab1.d)
      {
        localao1.a.invalidate();
        localab1.d = false;
      }
      return;
      RecyclerView.d(this.i, paramView);
      break;
      label112:
      localao1.g();
      break label64;
      label120:
      Object localObject;
      if (paramView.getParent() == this.i)
      {
        localObject = this.h;
        int k = ((d)localObject).a.a(paramView);
        if (k == -1) {
          k = -1;
        }
        int m;
        for (;;)
        {
          m = paramInt;
          if (paramInt == -1) {
            m = this.h.a();
          }
          if (k != -1) {
            break;
          }
          throw new IllegalStateException("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:" + this.i.indexOfChild(paramView));
          if (((d)localObject).b.b(k)) {
            k = -1;
          } else {
            k -= ((d)localObject).b.d(k);
          }
        }
        if (k != m)
        {
          paramView = RecyclerView.e(this.i);
          localObject = paramView.d(k);
          if (localObject == null) {
            throw new IllegalArgumentException("Cannot move a child from non-existing index:" + k);
          }
          paramView.c(k);
          ab localab2 = (ab)((View)localObject).getLayoutParams();
          ao localao2 = RecyclerView.b((View)localObject);
          if (localao2.m()) {
            RecyclerView.c(paramView.i, (View)localObject);
          }
          for (;;)
          {
            paramView.h.a((View)localObject, m, localab2, localao2.m());
            break;
            RecyclerView.d(paramView.i, (View)localObject);
          }
        }
      }
      else
      {
        this.h.a(paramView, paramInt, false);
        localab1.c = true;
        if ((this.j != null) && (this.j.c))
        {
          localObject = this.j;
          if (RecyclerView.c(paramView) == ((aj)localObject).a) {
            ((aj)localObject).d = paramView;
          }
        }
      }
    }
  }
  
  public void a(AccessibilityEvent paramAccessibilityEvent)
  {
    boolean bool2 = true;
    Object localObject = this.i.a;
    localObject = this.i.n;
    paramAccessibilityEvent = a.a(paramAccessibilityEvent);
    if (this.i == null) {
      return;
    }
    boolean bool1 = bool2;
    if (!ViewCompat.b(this.i, 1))
    {
      bool1 = bool2;
      if (!ViewCompat.b(this.i, -1))
      {
        bool1 = bool2;
        if (!ViewCompat.a(this.i, -1)) {
          if (!ViewCompat.a(this.i, 1)) {
            break label118;
          }
        }
      }
    }
    label118:
    for (bool1 = bool2;; bool1 = false)
    {
      paramAccessibilityEvent.a(bool1);
      if (RecyclerView.g(this.i) == null) {
        break;
      }
      paramAccessibilityEvent.a(RecyclerView.g(this.i).a());
      return;
    }
  }
  
  public void a(String paramString)
  {
    if (this.i != null) {
      this.i.a(paramString);
    }
  }
  
  public int b(int paramInt, af paramaf, al paramal)
  {
    return 0;
  }
  
  public int b(al paramal)
  {
    return 0;
  }
  
  public Parcelable b()
  {
    return null;
  }
  
  public final void b(int paramInt)
  {
    if (d(paramInt) != null)
    {
      d locald = this.h;
      paramInt = locald.a(paramInt);
      View localView = locald.a.b(paramInt);
      if (localView != null)
      {
        locald.a.a(paramInt);
        if (locald.b.c(paramInt)) {
          locald.c.remove(localView);
        }
      }
    }
  }
  
  public final void b(af paramaf)
  {
    int k = g() - 1;
    while (k >= 0)
    {
      if (!RecyclerView.b(d(k)).b()) {
        a(k, paramaf);
      }
      k -= 1;
    }
  }
  
  public int c(al paramal)
  {
    return 0;
  }
  
  public View c(int paramInt, af paramaf, al paramal)
  {
    return null;
  }
  
  public final void c(int paramInt)
  {
    d(paramInt);
    d locald = this.h;
    paramInt = locald.a(paramInt);
    locald.a.c(paramInt);
    locald.b.c(paramInt);
  }
  
  public boolean c()
  {
    return false;
  }
  
  public int d(al paramal)
  {
    return 0;
  }
  
  public final View d(int paramInt)
  {
    if (this.h != null) {
      return this.h.b(paramInt);
    }
    return null;
  }
  
  public boolean d()
  {
    return false;
  }
  
  public int e(al paramal)
  {
    return 0;
  }
  
  public boolean e()
  {
    return false;
  }
  
  public int f(al paramal)
  {
    return 0;
  }
  
  public final void f()
  {
    if (this.i != null) {
      this.i.requestLayout();
    }
  }
  
  public final int g()
  {
    if (this.h != null) {
      return this.h.a();
    }
    return 0;
  }
  
  public final int h()
  {
    if (this.i != null) {
      return this.i.getWidth();
    }
    return 0;
  }
  
  public final int i()
  {
    if (this.i != null) {
      return this.i.getHeight();
    }
    return 0;
  }
  
  public final int j()
  {
    if (this.i != null) {
      return this.i.getPaddingLeft();
    }
    return 0;
  }
  
  public final int k()
  {
    if (this.i != null) {
      return this.i.getPaddingTop();
    }
    return 0;
  }
  
  public final int l()
  {
    if (this.i != null) {
      return this.i.getPaddingRight();
    }
    return 0;
  }
  
  public final int m()
  {
    if (this.i != null) {
      return this.i.getPaddingBottom();
    }
    return 0;
  }
  
  final void n()
  {
    if (this.j != null) {
      this.j.a();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\widget\aa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */