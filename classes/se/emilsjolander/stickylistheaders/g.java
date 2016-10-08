package se.emilsjolander.stickylistheaders;

import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;

final class g
  extends BaseAdapter
  implements l
{
  f<View, Long> a = new f();
  d<Integer, View> b = new d();
  List<Long> c = new ArrayList();
  private final l d;
  
  g(l paraml)
  {
    this.d = paraml;
  }
  
  public final long a(int paramInt)
  {
    return this.d.a(paramInt);
  }
  
  public final View a(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    return this.d.a(paramInt, paramView, paramViewGroup);
  }
  
  public final boolean areAllItemsEnabled()
  {
    return this.d.areAllItemsEnabled();
  }
  
  public final int getCount()
  {
    return this.d.getCount();
  }
  
  public final Object getItem(int paramInt)
  {
    return this.d.getItem(paramInt);
  }
  
  public final long getItemId(int paramInt)
  {
    return this.d.getItemId(paramInt);
  }
  
  public final int getItemViewType(int paramInt)
  {
    return this.d.getItemViewType(paramInt);
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramView = this.d.getView(paramInt, paramView, paramViewGroup);
    paramViewGroup = this.a;
    Object localObject1 = Long.valueOf(getItemId(paramInt));
    if (paramViewGroup.b(paramView) != null) {
      paramViewGroup.b.remove(paramViewGroup.b(paramView));
    }
    paramViewGroup.a.remove(paramView);
    if (paramViewGroup.a(localObject1) != null) {
      paramViewGroup.a.remove(paramViewGroup.a(localObject1));
    }
    paramViewGroup.b.remove(localObject1);
    paramViewGroup.a.put(paramView, localObject1);
    paramViewGroup.b.put(localObject1, paramView);
    paramViewGroup = this.b;
    localObject1 = Integer.valueOf((int)a(paramInt));
    Object localObject2 = paramViewGroup.a.a(localObject1);
    if (paramViewGroup.b.get(localObject2) == null) {
      paramViewGroup.b.put(localObject2, new ArrayList());
    }
    localObject2 = paramViewGroup.c.get(paramViewGroup.a.b(paramView));
    if (localObject2 != null) {
      ((List)paramViewGroup.b.get(paramViewGroup.a.a(localObject2))).remove(paramView);
    }
    paramViewGroup.c.put(paramViewGroup.a.b(paramView), localObject1);
    if (!paramViewGroup.a((List)paramViewGroup.b.get(paramViewGroup.a.a(localObject1)), paramView)) {
      ((List)paramViewGroup.b.get(paramViewGroup.a.a(localObject1))).add(paramView);
    }
    if (this.c.contains(Long.valueOf(a(paramInt))))
    {
      paramView.setVisibility(8);
      return paramView;
    }
    paramView.setVisibility(0);
    return paramView;
  }
  
  public final int getViewTypeCount()
  {
    return this.d.getViewTypeCount();
  }
  
  public final boolean hasStableIds()
  {
    return this.d.hasStableIds();
  }
  
  public final boolean isEmpty()
  {
    return this.d.isEmpty();
  }
  
  public final boolean isEnabled(int paramInt)
  {
    return this.d.isEnabled(paramInt);
  }
  
  public final void registerDataSetObserver(DataSetObserver paramDataSetObserver)
  {
    this.d.registerDataSetObserver(paramDataSetObserver);
  }
  
  public final void unregisterDataSetObserver(DataSetObserver paramDataSetObserver)
  {
    this.d.unregisterDataSetObserver(paramDataSetObserver);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\se\emilsjolander\stickylistheaders\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */