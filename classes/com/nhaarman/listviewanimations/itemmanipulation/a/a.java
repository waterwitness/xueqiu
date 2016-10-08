package com.nhaarman.listviewanimations.itemmanipulation.a;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Pair;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.ListView;
import com.c.a.r;
import com.c.a.x;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;

public final class a<T>
  extends com.nhaarman.listviewanimations.b
{
  private long c = 300L;
  private long d = 300L;
  @NonNull
  private final com.nhaarman.listviewanimations.a.c<T> e;
  @NonNull
  private final d<T> f;
  private boolean g = true;
  
  public a(@NonNull BaseAdapter paramBaseAdapter)
  {
    super(paramBaseAdapter);
    for (paramBaseAdapter = this.a; (paramBaseAdapter instanceof com.nhaarman.listviewanimations.b); paramBaseAdapter = ((com.nhaarman.listviewanimations.b)paramBaseAdapter).a) {}
    if (!(paramBaseAdapter instanceof com.nhaarman.listviewanimations.a.c)) {
      throw new IllegalArgumentException("BaseAdapter should implement Insertable!");
    }
    this.e = ((com.nhaarman.listviewanimations.a.c)paramBaseAdapter);
    this.f = new d(this.e);
  }
  
  private boolean a()
  {
    boolean bool = false;
    if (this.b == null) {
      throw new IllegalStateException("Call setListView on this AnimateAdditionAdapter first!");
    }
    int i = 0;
    int k;
    for (int j = 0; i < this.b.f(); j = k)
    {
      View localView = this.b.a(i);
      k = j;
      if (localView != null) {
        k = j + localView.getHeight();
      }
      i += 1;
    }
    if (this.b.j().getHeight() <= j) {
      bool = true;
    }
    return bool;
  }
  
  public final void a(@NonNull Iterable<Pair<Integer, T>> paramIterable)
  {
    int m = 0;
    if (this.b == null) {
      throw new IllegalStateException("Call setListView on this AnimateAdditionAdapter!");
    }
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    ArrayList localArrayList3 = new ArrayList();
    paramIterable = paramIterable.iterator();
    int k = 0;
    int j = 0;
    Object localObject;
    int i;
    Iterator localIterator;
    if (paramIterable.hasNext())
    {
      localObject = (Pair)paramIterable.next();
      if (this.b.d() > ((Integer)((Pair)localObject).first).intValue())
      {
        i = ((Integer)((Pair)localObject).first).intValue();
        localIterator = localArrayList2.iterator();
        label122:
        if (localIterator.hasNext())
        {
          if (i < ((Integer)localIterator.next()).intValue()) {
            break label639;
          }
          i += 1;
        }
      }
    }
    label323:
    label408:
    label626:
    label629:
    label639:
    for (;;)
    {
      break label122;
      this.e.a(i, ((Pair)localObject).second);
      localArrayList2.add(Integer.valueOf(i));
      if (this.g)
      {
        localObject = getView(((Integer)((Pair)localObject).first).intValue(), null, this.b.j());
        ((View)localObject).measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
      }
      for (i = j - ((View)localObject).getMeasuredHeight();; i = j)
      {
        k += 1;
        j = i;
        break;
        if ((this.b.e() >= ((Integer)((Pair)localObject).first).intValue()) || (this.b.e() == -1) || (!a()))
        {
          i = ((Integer)((Pair)localObject).first).intValue();
          localIterator = localArrayList2.iterator();
          if (localIterator.hasNext())
          {
            if (i < ((Integer)localIterator.next()).intValue()) {
              break label629;
            }
            i += 1;
          }
        }
        for (;;)
        {
          break label323;
          localArrayList1.add(new Pair(Integer.valueOf(i), ((Pair)localObject).second));
          break;
          i = ((Integer)((Pair)localObject).first).intValue();
          localIterator = localArrayList2.iterator();
          if (localIterator.hasNext())
          {
            if (i < ((Integer)localIterator.next()).intValue()) {
              break label626;
            }
            i += 1;
          }
          for (;;)
          {
            break label408;
            localIterator = localArrayList3.iterator();
            while (localIterator.hasNext()) {
              if (i >= ((Integer)localIterator.next()).intValue()) {
                i += 1;
              }
            }
            localArrayList3.add(Integer.valueOf(i));
            this.e.a(i, ((Pair)localObject).second);
            break;
            if (this.g) {
              ((AbsListView)this.b.j()).smoothScrollBy(j, (int)(this.c * k));
            }
            this.f.a(localArrayList1);
            j = this.b.d();
            paramIterable = this.b.a(0);
            if (paramIterable == null) {}
            for (i = m;; i = paramIterable.getTop())
            {
              ((ListView)this.b.j()).setSelectionFromTop(j + k, i);
              return;
            }
          }
        }
      }
    }
  }
  
  @NonNull
  public final View getView(int paramInt, @Nullable View paramView, @NonNull ViewGroup paramViewGroup)
  {
    paramView = super.getView(paramInt, paramView, paramViewGroup);
    Object localObject = this.f;
    paramViewGroup = new HashSet();
    localObject = ((d)localObject).b.iterator();
    while (((Iterator)localObject).hasNext()) {
      paramViewGroup.add(Integer.valueOf(((AtomicInteger)((Iterator)localObject).next()).get()));
    }
    if (paramViewGroup.contains(Integer.valueOf(paramInt)))
    {
      paramView.measure(View.MeasureSpec.makeMeasureSpec(-1, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(-2, 0));
      paramViewGroup = x.b(new int[] { 1, paramView.getMeasuredHeight() });
      paramViewGroup.a(new c(paramView));
      localObject = new com.c.a.a[1];
      localObject[0] = paramViewGroup;
      System.arraycopy(new com.c.a.a[0], 0, localObject, 1, 0);
      paramViewGroup = new com.c.a.d();
      paramViewGroup.a((com.c.a.a[])localObject);
      com.c.c.a.a(paramView, 0.0F);
      localObject = r.a(paramView, "alpha", new float[] { 0.0F, 1.0F });
      com.c.a.d locald = new com.c.a.d();
      locald.b(new com.c.a.a[] { paramViewGroup, localObject });
      locald.b(this.d);
      locald.a(new b(this, paramInt));
      locald.a();
    }
    return paramView;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\nhaarman\listviewanimations\itemmanipulation\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */