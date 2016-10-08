package com.nhaarman.listviewanimations.itemmanipulation.b;

import android.os.Handler;
import android.support.annotation.NonNull;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import com.c.a.x;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class b
  extends f
{
  public int a;
  private final long i;
  @NonNull
  private final Collection<View> j;
  @NonNull
  private final List<Integer> k;
  @NonNull
  private final Handler l;
  
  public static void a(@NonNull List<Integer> paramList)
  {
    if (!paramList.isEmpty())
    {
      Collections.sort(paramList, Collections.reverseOrder());
      int[] arrayOfInt = new int[paramList.size()];
      paramList = paramList.iterator();
      int m = 0;
      while (paramList.hasNext())
      {
        arrayOfInt[m] = ((Integer)paramList.next()).intValue();
        m += 1;
      }
    }
  }
  
  public void a()
  {
    b();
  }
  
  public final void a(int paramInt)
  {
    int m = this.b.d();
    int n = this.b.e();
    if ((m <= paramInt) && (paramInt <= n)) {
      super.a(paramInt);
    }
    View localView;
    do
    {
      return;
      if (paramInt > n)
      {
        b(paramInt);
        return;
      }
      localView = com.nhaarman.listviewanimations.a.b.a(this.b, this.b.d());
    } while (localView == null);
    localView.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
    m = localView.getMeasuredHeight();
    this.b.b(m, (int)this.i);
    this.l.postDelayed(new e(this, m, paramInt), this.i);
  }
  
  public void a(@NonNull View paramView)
  {
    super.a(paramView);
    ViewGroup.LayoutParams localLayoutParams = paramView.getLayoutParams();
    localLayoutParams.height = 0;
    paramView.setLayoutParams(localLayoutParams);
  }
  
  public void a(@NonNull View paramView, int paramInt)
  {
    b(paramView, paramInt);
  }
  
  public final void a(@NonNull Iterable<View> paramIterable)
  {
    paramIterable = paramIterable.iterator();
    while (paramIterable.hasNext()) {
      a((View)paramIterable.next());
    }
  }
  
  public void b()
  {
    if ((this.a == 0) && (this.h == 0))
    {
      a(this.j);
      a(this.k);
      this.j.clear();
      this.k.clear();
    }
  }
  
  public void b(int paramInt)
  {
    this.k.add(Integer.valueOf(paramInt));
    b();
  }
  
  public void b(@NonNull View paramView, int paramInt)
  {
    this.j.add(paramView);
    this.k.add(Integer.valueOf(paramInt));
    x localx = x.b(new int[] { paramView.getHeight(), 1 }).b(this.i);
    localx.a(new d(paramView));
    localx.a(new c(this, (byte)0));
    localx.a();
    this.a += 1;
  }
  
  public boolean c(int paramInt)
  {
    return true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\nhaarman\listviewanimations\itemmanipulation\b\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */