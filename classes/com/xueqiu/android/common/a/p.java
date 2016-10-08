package com.xueqiu.android.common.a;

import android.content.Context;
import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class p
  extends d<Object>
{
  public final List<Adapter> e = new ArrayList();
  public final Adapter f;
  
  public p(Context paramContext, Adapter paramAdapter)
  {
    super(paramContext);
    this.f = paramAdapter;
  }
  
  public final int getCount()
  {
    Iterator localIterator = this.e.iterator();
    for (int i = 0; localIterator.hasNext(); i = ((Adapter)localIterator.next()).getCount() + 1 + i) {}
    return i;
  }
  
  public final Object getItem(int paramInt)
  {
    Iterator localIterator = this.e.iterator();
    while (localIterator.hasNext())
    {
      Adapter localAdapter = (Adapter)localIterator.next();
      int i = localAdapter.getCount() + 1;
      if (paramInt == 0) {
        return localAdapter;
      }
      if (paramInt < i) {
        return localAdapter.getItem(paramInt - 1);
      }
      paramInt -= i;
    }
    return null;
  }
  
  public final long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public final int getItemViewType(int paramInt)
  {
    Iterator localIterator = this.e.iterator();
    int j = 1;
    int i = paramInt;
    Adapter localAdapter;
    for (paramInt = j; localIterator.hasNext(); paramInt = localAdapter.getViewTypeCount() + paramInt)
    {
      localAdapter = (Adapter)localIterator.next();
      j = localAdapter.getCount() + 1;
      if (i == 0) {
        return 0;
      }
      if (i < j) {
        return localAdapter.getItemViewType(i - 1) + paramInt;
      }
      i -= j;
    }
    return -1;
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Iterator localIterator = this.e.iterator();
    int j = 0;
    int i = paramInt;
    paramInt = j;
    while (localIterator.hasNext())
    {
      Adapter localAdapter = (Adapter)localIterator.next();
      j = localAdapter.getCount() + 1;
      if (i == 0) {
        return this.f.getView(paramInt, null, paramViewGroup);
      }
      if (i < j) {
        return localAdapter.getView(i - 1, paramView, paramViewGroup);
      }
      i -= j;
      paramInt += 1;
    }
    return null;
  }
  
  public final int getViewTypeCount()
  {
    Iterator localIterator = this.e.iterator();
    for (int i = 1; localIterator.hasNext(); i = ((Adapter)localIterator.next()).getViewTypeCount() + i) {}
    return i;
  }
  
  public final boolean isEnabled(int paramInt)
  {
    return getItemViewType(paramInt) != 0;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\a\p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */