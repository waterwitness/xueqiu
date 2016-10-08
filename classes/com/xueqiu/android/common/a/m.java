package com.xueqiu.android.common.a;

import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import java.util.Iterator;
import java.util.List;

public abstract class m<T, S>
  extends BaseAdapter
  implements Filterable
{
  private List<Pair<T, List<S>>> a;
  private List<Pair<T, List<S>>> b = null;
  private m<T, S>.o c = null;
  
  public m(List<Pair<T, List<S>>> paramList)
  {
    this.a = paramList;
  }
  
  private boolean a(int paramInt)
  {
    return b(paramInt).b == -1;
  }
  
  private n b(int paramInt)
  {
    n localn = new n();
    int k = a().size();
    int j = 0;
    int i = 0;
    int m;
    if (j < k)
    {
      localn.a = j;
      if (((Pair)a().get(j)).second == null) {
        break label119;
      }
      m = ((List)((Pair)a().get(j)).second).size();
      if (i + m >= paramInt) {
        localn.b = (paramInt - i - 1);
      }
    }
    else
    {
      return localn;
    }
    i = m + 1 + i;
    label119:
    for (;;)
    {
      j += 1;
      break;
    }
  }
  
  public abstract View a(int paramInt1, int paramInt2, View paramView);
  
  public abstract View a(int paramInt, View paramView);
  
  public final S a(int paramInt1, int paramInt2)
  {
    if ((paramInt1 < a().size()) && (paramInt2 < ((List)((Pair)a().get(paramInt1)).second).size())) {
      try
      {
        Object localObject = ((List)((Pair)a().get(paramInt1)).second).get(paramInt2);
        return (S)localObject;
      }
      catch (Exception localException)
      {
        return null;
      }
    }
    return null;
  }
  
  final List<Pair<T, List<S>>> a()
  {
    if ((this.b != null) && (this.b.size() > 0)) {
      return this.b;
    }
    return this.a;
  }
  
  public boolean areAllItemsEnabled()
  {
    return false;
  }
  
  public final int getCount()
  {
    int i = a().size();
    Iterator localIterator = a().iterator();
    if (localIterator.hasNext())
    {
      Pair localPair = (Pair)localIterator.next();
      if (localPair.second == null) {}
      for (int j = 0;; j = ((List)localPair.second).size())
      {
        i = j + i;
        break;
      }
    }
    return i;
  }
  
  public Filter getFilter()
  {
    if (this.c == null) {
      this.c = new o(this, (byte)0);
    }
    return this.c;
  }
  
  public final S getItem(int paramInt)
  {
    n localn = b(paramInt);
    if (localn.b == -1) {
      return null;
    }
    return (S)((List)((Pair)a().get(localn.a)).second).get(localn.b);
  }
  
  public final long getItemId(int paramInt)
  {
    return 0L;
  }
  
  public int getItemViewType(int paramInt)
  {
    if (a(paramInt)) {
      return 1;
    }
    return 0;
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup = b(paramInt);
    if (paramViewGroup.b == -1) {
      return a(paramViewGroup.a, paramView);
    }
    return a(paramViewGroup.a, paramViewGroup.b, paramView);
  }
  
  public int getViewTypeCount()
  {
    return 2;
  }
  
  public final boolean hasStableIds()
  {
    return false;
  }
  
  public boolean isEnabled(int paramInt)
  {
    return !a(paramInt);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\a\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */