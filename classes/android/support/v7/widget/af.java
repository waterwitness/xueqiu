package android.support.v7.widget;

import android.support.v4.view.ViewCompat;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.accessibility.AccessibilityManager;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class af
{
  final ArrayList<ao> a = new ArrayList();
  ArrayList<ao> b = null;
  final ArrayList<ao> c = new ArrayList();
  final List<ao> d = Collections.unmodifiableList(this.a);
  int e = 2;
  ae f;
  am g;
  
  public af(RecyclerView paramRecyclerView) {}
  
  private void a(ViewGroup paramViewGroup, boolean paramBoolean)
  {
    int i = paramViewGroup.getChildCount() - 1;
    while (i >= 0)
    {
      View localView = paramViewGroup.getChildAt(i);
      if ((localView instanceof ViewGroup)) {
        a((ViewGroup)localView, true);
      }
      i -= 1;
    }
    if (!paramBoolean) {
      return;
    }
    if (paramViewGroup.getVisibility() == 4)
    {
      paramViewGroup.setVisibility(0);
      paramViewGroup.setVisibility(4);
      return;
    }
    i = paramViewGroup.getVisibility();
    paramViewGroup.setVisibility(4);
    paramViewGroup.setVisibility(i);
  }
  
  private ao c()
  {
    int i = this.a.size() - 1;
    ao localao;
    while (i >= 0)
    {
      localao = (ao)this.a.get(i);
      if ((localao.d == -1L) && (!localao.f()))
      {
        if (localao.e == 0)
        {
          localao.a(32);
          if ((localao.m()) && (!this.h.n.i)) {
            localao.a(2, 14);
          }
          return localao;
        }
        this.a.remove(i);
        this.h.removeDetachedView(localao.a, false);
        b(localao.a);
      }
      i -= 1;
    }
    i = this.c.size() - 1;
    while (i >= 0)
    {
      localao = (ao)this.c.get(i);
      if (localao.d == -1L)
      {
        if (localao.e == 0)
        {
          this.c.remove(i);
          return localao;
        }
        b(i);
      }
      i -= 1;
    }
    return null;
  }
  
  private ao c(int paramInt)
  {
    int j = 0;
    int k;
    if (this.b != null)
    {
      k = this.b.size();
      if (k != 0) {}
    }
    else
    {
      return null;
    }
    int i = 0;
    ao localao;
    while (i < k)
    {
      localao = (ao)this.b.get(i);
      if ((!localao.f()) && (localao.c() == paramInt))
      {
        localao.a(32);
        return localao;
      }
      i += 1;
    }
    if (RecyclerView.g(this.h).b)
    {
      paramInt = this.h.b.a(paramInt, 0);
      if ((paramInt > 0) && (paramInt < RecyclerView.g(this.h).a()))
      {
        RecyclerView.g(this.h);
        paramInt = j;
        while (paramInt < k)
        {
          localao = (ao)this.b.get(paramInt);
          if ((!localao.f()) && (localao.d == -1L))
          {
            localao.a(32);
            return localao;
          }
          paramInt += 1;
        }
      }
    }
    return null;
  }
  
  private void c(ao paramao)
  {
    if (RecyclerView.p(this.h) != null) {
      RecyclerView.p(this.h);
    }
    if (RecyclerView.g(this.h) != null) {
      RecyclerView.g(this.h);
    }
    if (this.h.n != null) {
      this.h.n.a(paramao);
    }
  }
  
  private ao d(int paramInt)
  {
    int j = 0;
    int k = this.a.size();
    int i = 0;
    Object localObject;
    while (i < k)
    {
      localObject = (ao)this.a.get(i);
      if ((!((ao)localObject).f()) && (((ao)localObject).c() == paramInt) && (!((ao)localObject).i()) && ((this.h.n.i) || (!((ao)localObject).m())))
      {
        ((ao)localObject).a(32);
        return (ao)localObject;
      }
      i += 1;
    }
    d locald = this.h.c;
    k = locald.c.size();
    i = 0;
    if (i < k)
    {
      localObject = (View)locald.c.get(i);
      ao localao = locald.a.b((View)localObject);
      if ((localao.c() == paramInt) && (!localao.i()))
      {
        label167:
        if (localObject != null) {
          this.h.l.c(this.h.a((View)localObject));
        }
        k = this.c.size();
        i = j;
      }
    }
    for (;;)
    {
      if (i >= k) {
        break label272;
      }
      localObject = (ao)this.c.get(i);
      if ((!((ao)localObject).i()) && (((ao)localObject).c() == paramInt))
      {
        this.c.remove(i);
        return (ao)localObject;
        i += 1;
        break;
        localObject = null;
        break label167;
      }
      i += 1;
    }
    label272:
    return null;
  }
  
  final View a(int paramInt)
  {
    boolean bool = true;
    if ((paramInt < 0) || (paramInt >= this.h.n.a())) {
      throw new IndexOutOfBoundsException("Invalid item position " + paramInt + "(" + paramInt + "). Item count:" + this.h.n.a());
    }
    Object localObject2;
    int i;
    if (this.h.n.i)
    {
      localObject2 = c(paramInt);
      if (localObject2 != null) {
        i = 1;
      }
    }
    for (int j = i;; j = 0)
    {
      Object localObject1 = localObject2;
      i = j;
      if (localObject2 == null)
      {
        localObject2 = d(paramInt);
        localObject1 = localObject2;
        i = j;
        if (localObject2 != null)
        {
          if (((ao)localObject2).m()) {
            break label395;
          }
          if ((((ao)localObject2).b < 0) || (((ao)localObject2).b >= RecyclerView.g(this.h).a()))
          {
            throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + localObject2);
            i = 0;
            break;
          }
          if (this.h.n.i) {
            break label353;
          }
          RecyclerView.g(this.h);
          if (((ao)localObject2).e == 0) {
            break label353;
          }
          i = 0;
          if (i != 0) {
            break label415;
          }
          ((ao)localObject2).a(4);
          if (!((ao)localObject2).d()) {
            break label401;
          }
          this.h.removeDetachedView(((ao)localObject2).a, false);
          ((ao)localObject2).e();
          label253:
          a((ao)localObject2);
          localObject1 = null;
          i = j;
        }
      }
      for (;;)
      {
        if (localObject1 == null)
        {
          j = this.h.b.a(paramInt);
          if ((j < 0) || (j >= RecyclerView.g(this.h).a()))
          {
            throw new IndexOutOfBoundsException("Inconsistency detected. Invalid item position " + paramInt + "(offset:" + j + ").state:" + this.h.n.a());
            label353:
            if (RecyclerView.g(this.h).b)
            {
              long l = ((ao)localObject2).d;
              RecyclerView.g(this.h);
              if (l != -1L)
              {
                i = 0;
                break;
              }
            }
            label395:
            i = 1;
            break;
            label401:
            if (!((ao)localObject2).f()) {
              break label253;
            }
            ((ao)localObject2).g();
            break label253;
            label415:
            i = 1;
            localObject1 = localObject2;
            continue;
          }
          RecyclerView.g(this.h);
          if (RecyclerView.g(this.h).b)
          {
            RecyclerView.g(this.h);
            localObject2 = c();
            localObject1 = localObject2;
            if (localObject2 != null)
            {
              ((ao)localObject2).b = j;
              i = 1;
              localObject1 = localObject2;
              if (localObject2 == null)
              {
                localObject1 = localObject2;
                if (this.g != null)
                {
                  View localView = this.g.a();
                  localObject1 = localObject2;
                  if (localView != null)
                  {
                    localObject2 = this.h.a(localView);
                    if (localObject2 == null) {
                      throw new IllegalArgumentException("getViewForPositionAndType returned a view which does not have a ViewHolder");
                    }
                    localObject1 = localObject2;
                    if (((ao)localObject2).b()) {
                      throw new IllegalArgumentException("getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view.");
                    }
                  }
                }
              }
              localObject2 = localObject1;
              if (localObject1 == null)
              {
                localObject1 = b();
                RecyclerView.g(this.h);
                localObject2 = (ArrayList)((ae)localObject1).a.get(0);
                if ((localObject2 != null) && (!((ArrayList)localObject2).isEmpty()))
                {
                  j = ((ArrayList)localObject2).size() - 1;
                  localObject1 = (ao)((ArrayList)localObject2).get(j);
                  ((ArrayList)localObject2).remove(j);
                  if (localObject1 != null)
                  {
                    ((ao)localObject1).o();
                    if ((RecyclerView.i()) && ((((ao)localObject1).a instanceof ViewGroup))) {
                      a((ViewGroup)((ao)localObject1).a, false);
                    }
                  }
                  localObject2 = localObject1;
                }
              }
              else
              {
                localObject1 = localObject2;
                if (localObject2 == null)
                {
                  localObject1 = RecyclerView.g(this.h);
                  localObject2 = this.h;
                  RecyclerView.g(this.h);
                  localObject1 = ((s)localObject1).a((ViewGroup)localObject2);
                  ((ao)localObject1).e = 0;
                }
              }
            }
          }
        }
      }
      for (localObject2 = localObject1;; localObject2 = localObject1)
      {
        if ((this.h.n.i) && (((ao)localObject2).l()))
        {
          ((ao)localObject2).f = paramInt;
          paramInt = 0;
        }
        for (;;)
        {
          label718:
          localObject1 = ((ao)localObject2).a.getLayoutParams();
          if (localObject1 == null)
          {
            localObject1 = (ab)this.h.generateDefaultLayoutParams();
            ((ao)localObject2).a.setLayoutParams((ViewGroup.LayoutParams)localObject1);
            label749:
            ((ab)localObject1).a = ((ao)localObject2);
            if ((i == 0) || (paramInt == 0)) {
              break label952;
            }
          }
          for (;;)
          {
            ((ab)localObject1).d = bool;
            return ((ao)localObject2).a;
            localObject1 = null;
            break;
            if ((((ao)localObject2).l()) && (!((ao)localObject2).j()) && (!((ao)localObject2).i())) {
              break label958;
            }
            j = this.h.b.a(paramInt);
            RecyclerView.g(this.h).b((ao)localObject2, j);
            localObject1 = ((ao)localObject2).a;
            if ((RecyclerView.n(this.h) != null) && (RecyclerView.n(this.h).isEnabled()))
            {
              if (ViewCompat.e((View)localObject1) == 0) {
                ViewCompat.c((View)localObject1, 1);
              }
              if (!ViewCompat.b((View)localObject1)) {
                ViewCompat.a((View)localObject1, RecyclerView.o(this.h).c);
              }
            }
            if (this.h.n.i) {
              ((ao)localObject2).f = paramInt;
            }
            paramInt = 1;
            break label718;
            if (!this.h.checkLayoutParams((ViewGroup.LayoutParams)localObject1))
            {
              localObject1 = (ab)this.h.generateLayoutParams((ViewGroup.LayoutParams)localObject1);
              ((ao)localObject2).a.setLayoutParams((ViewGroup.LayoutParams)localObject1);
              break label749;
            }
            localObject1 = (ab)localObject1;
            break label749;
            label952:
            bool = false;
          }
          label958:
          paramInt = 0;
        }
        localObject2 = localObject1;
        break;
      }
      localObject2 = null;
    }
  }
  
  public final void a()
  {
    this.a.clear();
    int i = this.c.size() - 1;
    while (i >= 0)
    {
      b(i);
      i -= 1;
    }
    this.c.clear();
  }
  
  final void a(ao paramao)
  {
    boolean bool = true;
    int j = 0;
    if ((paramao.d()) || (paramao.a.getParent() != null))
    {
      StringBuilder localStringBuilder = new StringBuilder("Scrapped or attached views may not be recycled. isScrap:").append(paramao.d()).append(" isAttached:");
      if (paramao.a.getParent() != null) {}
      for (;;)
      {
        throw new IllegalArgumentException(bool);
        bool = false;
      }
    }
    if (paramao.n()) {
      throw new IllegalArgumentException("Tmp detached view should be removed from RecyclerView before it can be recycled: " + paramao);
    }
    if (paramao.b()) {
      throw new IllegalArgumentException("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle.");
    }
    if (paramao.p())
    {
      int i = j;
      if (!paramao.i()) {
        if (!this.h.n.i)
        {
          i = j;
          if (paramao.m()) {}
        }
        else
        {
          i = j;
          if (!paramao.k())
          {
            if ((this.c.size() == this.e) && (!this.c.isEmpty()))
            {
              i = 0;
              while ((i < this.c.size()) && (!b(i))) {
                i += 1;
              }
            }
            i = j;
            if (this.c.size() < this.e)
            {
              this.c.add(paramao);
              i = 1;
            }
          }
        }
      }
      if (i == 0)
      {
        b().a(paramao);
        c(paramao);
      }
    }
    this.h.n.a(paramao);
  }
  
  public final void a(View paramView)
  {
    ao localao = RecyclerView.b(paramView);
    if (localao.n()) {
      this.h.removeDetachedView(paramView, false);
    }
    if (localao.d()) {
      localao.e();
    }
    for (;;)
    {
      a(localao);
      return;
      if (localao.f()) {
        localao.g();
      }
    }
  }
  
  final ae b()
  {
    if (this.f == null) {
      this.f = new ae();
    }
    return this.f;
  }
  
  final void b(ao paramao)
  {
    if ((!paramao.k()) || (!RecyclerView.h(this.h)) || (this.b == null)) {
      this.a.remove(paramao);
    }
    for (;;)
    {
      paramao.j = null;
      paramao.g();
      return;
      this.b.remove(paramao);
    }
  }
  
  final void b(View paramView)
  {
    paramView = RecyclerView.b(paramView);
    paramView.j = null;
    paramView.g();
    a(paramView);
  }
  
  final boolean b(int paramInt)
  {
    ao localao = (ao)this.c.get(paramInt);
    if (localao.p())
    {
      b().a(localao);
      c(localao);
      this.c.remove(paramInt);
      return true;
    }
    return false;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\widget\af.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */