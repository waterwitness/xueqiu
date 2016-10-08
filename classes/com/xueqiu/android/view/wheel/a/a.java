package com.xueqiu.android.view.wheel.a;

import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import java.util.LinkedList;
import java.util.List;

public abstract class a
  implements c
{
  private List<DataSetObserver> a;
  
  public View a(View paramView, ViewGroup paramViewGroup)
  {
    return null;
  }
  
  public final void a(DataSetObserver paramDataSetObserver)
  {
    if (this.a == null) {
      this.a = new LinkedList();
    }
    this.a.add(paramDataSetObserver);
  }
  
  public final void b(DataSetObserver paramDataSetObserver)
  {
    if (this.a != null) {
      this.a.remove(paramDataSetObserver);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\view\wheel\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */