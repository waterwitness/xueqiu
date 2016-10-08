package android.support.v7.widget;

import android.os.Bundle;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.a;
import android.support.v4.view.a.f;
import android.support.v4.view.a.q;
import android.support.v4.view.a.r;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;

public final class ap
  extends a
{
  final RecyclerView b;
  final a c = new a()
  {
    public final void a(View paramAnonymousView, f paramAnonymousf)
    {
      int j = 0;
      super.a(paramAnonymousView, paramAnonymousf);
      aa localaa;
      if (ap.this.b.getLayoutManager() != null)
      {
        localaa = ap.this.b.getLayoutManager();
        Object localObject = RecyclerView.b(paramAnonymousView);
        if ((localObject != null) && (!((ao)localObject).m()))
        {
          localObject = localaa.i.a;
          localObject = localaa.i.n;
          if (!localaa.d()) {
            break label108;
          }
        }
      }
      label108:
      for (int i = aa.a(paramAnonymousView);; i = 0)
      {
        if (localaa.c()) {
          j = aa.a(paramAnonymousView);
        }
        paramAnonymousf.b(r.a(i, j));
        return;
      }
    }
    
    public final boolean a(View paramAnonymousView, int paramAnonymousInt, Bundle paramAnonymousBundle)
    {
      boolean bool = false;
      if (super.a(paramAnonymousView, paramAnonymousInt, paramAnonymousBundle)) {
        bool = true;
      }
      while (ap.this.b.getLayoutManager() == null) {
        return bool;
      }
      paramAnonymousView = ap.this.b.getLayoutManager();
      paramAnonymousBundle = paramAnonymousView.i.a;
      paramAnonymousView = paramAnonymousView.i.n;
      return false;
    }
  };
  
  public ap(RecyclerView paramRecyclerView)
  {
    this.b = paramRecyclerView;
  }
  
  public final void a(View paramView, f paramf)
  {
    int k = 1;
    super.a(paramView, paramf);
    paramf.b(RecyclerView.class.getName());
    int i;
    int j;
    if (this.b.getLayoutManager() != null)
    {
      paramView = this.b.getLayoutManager();
      Object localObject = paramView.i.a;
      localObject = paramView.i.n;
      paramf.b(RecyclerView.class.getName());
      if ((ViewCompat.b(paramView.i, -1)) || (ViewCompat.a(paramView.i, -1)))
      {
        paramf.a(8192);
        paramf.i(true);
      }
      if ((ViewCompat.b(paramView.i, 1)) || (ViewCompat.a(paramView.i, 1)))
      {
        paramf.a(4096);
        paramf.i(true);
      }
      if ((paramView.i != null) && (RecyclerView.g(paramView.i) != null)) {
        break label186;
      }
      i = 1;
      j = k;
      if (paramView.i != null)
      {
        if (RecyclerView.g(paramView.i) != null) {
          break label214;
        }
        j = k;
      }
    }
    for (;;)
    {
      paramf.a(q.a(i, j));
      return;
      label186:
      if (paramView.d())
      {
        i = RecyclerView.g(paramView.i).a();
        break;
      }
      i = 1;
      break;
      label214:
      j = k;
      if (paramView.c()) {
        j = RecyclerView.g(paramView.i).a();
      }
    }
  }
  
  public final boolean a(View paramView, int paramInt, Bundle paramBundle)
  {
    boolean bool2 = false;
    boolean bool1;
    if (super.a(paramView, paramInt, paramBundle)) {
      bool1 = true;
    }
    int i;
    do
    {
      do
      {
        do
        {
          return bool1;
          bool1 = bool2;
        } while (this.b.getLayoutManager() == null);
        paramView = this.b.getLayoutManager();
        paramBundle = paramView.i.a;
        paramBundle = paramView.i.n;
        bool1 = bool2;
      } while (paramView.i == null);
      switch (paramInt)
      {
      default: 
        paramInt = 0;
        i = 0;
        if (i != 0) {
          break label114;
        }
        bool1 = bool2;
      }
    } while (paramInt == 0);
    label114:
    paramView.i.scrollBy(paramInt, i);
    return true;
    if (ViewCompat.b(paramView.i, -1)) {}
    for (paramInt = -(paramView.i() - paramView.k() - paramView.m());; paramInt = 0)
    {
      i = paramInt;
      int j;
      if (ViewCompat.a(paramView.i, -1))
      {
        j = -(paramView.h() - paramView.j() - paramView.l());
        i = paramInt;
        paramInt = j;
        break;
        if (!ViewCompat.b(paramView.i, 1)) {
          break label271;
        }
      }
      label271:
      for (paramInt = paramView.i() - paramView.k() - paramView.m();; paramInt = 0)
      {
        i = paramInt;
        if (ViewCompat.a(paramView.i, 1))
        {
          j = paramView.h();
          int k = paramView.j();
          int m = paramView.l();
          i = paramInt;
          paramInt = j - k - m;
          break;
        }
        paramInt = 0;
        break;
      }
    }
  }
  
  public final void d(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    super.d(paramView, paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(RecyclerView.class.getName());
    if ((paramView instanceof RecyclerView))
    {
      paramView = (RecyclerView)paramView;
      if (paramView.getLayoutManager() != null) {
        paramView.getLayoutManager().a(paramAccessibilityEvent);
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\widget\ap.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */