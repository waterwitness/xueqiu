package com.nhaarman.listviewanimations.itemmanipulation.b.a;

import android.support.annotation.NonNull;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.c.a.r;
import com.nhaarman.listviewanimations.itemmanipulation.b.f;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class b
  extends com.nhaarman.listviewanimations.itemmanipulation.b.b
{
  @NonNull
  public final Collection<Integer> i;
  @NonNull
  private final c j;
  @NonNull
  private final Map<Integer, View> k;
  @NonNull
  private final List<Integer> l;
  @NonNull
  private final Collection<View> m;
  
  protected final void a()
  {
    b();
  }
  
  protected final void a(@NonNull View paramView)
  {
    super.a(paramView);
    ViewGroup.LayoutParams localLayoutParams = paramView.getLayoutParams();
    localLayoutParams.height = 0;
    paramView.setLayoutParams(localLayoutParams);
  }
  
  protected final void a(@NonNull View paramView, int paramInt)
  {
    if (this.i.contains(Integer.valueOf(paramInt)))
    {
      this.i.remove(Integer.valueOf(paramInt));
      this.k.remove(Integer.valueOf(paramInt));
      b(paramView, paramInt);
      this.j.a().setVisibility(0);
      this.j.b().setVisibility(8);
      return;
    }
    this.i.add(Integer.valueOf(paramInt));
    this.k.put(Integer.valueOf(paramInt), paramView);
    this.j.a().setVisibility(8);
    View localView = this.j.b();
    localView.setVisibility(0);
    r.a(localView, "alpha", new float[] { 0.0F, 1.0F }).a();
    a(paramView);
  }
  
  protected final void b()
  {
    if ((this.a == 0) && (this.h == 0))
    {
      a(this.m);
      a(this.l);
      Object localObject1 = this.i;
      Object localObject2 = this.l;
      localObject1 = new ArrayList((Collection)localObject1);
      Collections.sort((List)localObject2, Collections.reverseOrder());
      ArrayList localArrayList = new ArrayList();
      localObject2 = ((List)localObject2).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        int n = ((Integer)((Iterator)localObject2).next()).intValue();
        Iterator localIterator = ((Collection)localObject1).iterator();
        while (localIterator.hasNext())
        {
          int i1 = ((Integer)localIterator.next()).intValue();
          if (i1 > n)
          {
            localIterator.remove();
            localArrayList.add(Integer.valueOf(i1 - 1));
          }
          else if (i1 == n)
          {
            localIterator.remove();
          }
          else
          {
            localArrayList.add(Integer.valueOf(i1));
          }
        }
        ((Collection)localObject1).clear();
        ((Collection)localObject1).addAll(localArrayList);
        localArrayList.clear();
      }
      this.i.clear();
      this.i.addAll((Collection)localObject1);
      this.m.clear();
      this.l.clear();
    }
  }
  
  protected final void b(int paramInt)
  {
    this.l.add(Integer.valueOf(paramInt));
    b();
  }
  
  protected final void b(@NonNull View paramView, int paramInt)
  {
    super.b(paramView, paramInt);
    this.m.add(paramView);
    this.l.add(Integer.valueOf(paramInt));
  }
  
  public final void c()
  {
    Iterator localIterator = this.i.iterator();
    while (localIterator.hasNext())
    {
      int n = ((Integer)localIterator.next()).intValue();
      b((View)this.k.get(Integer.valueOf(n)), n);
    }
  }
  
  protected final boolean c(int paramInt)
  {
    return this.i.contains(Integer.valueOf(paramInt));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\nhaarman\listviewanimations\itemmanipulation\b\a\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */