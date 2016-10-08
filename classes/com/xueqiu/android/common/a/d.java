package com.xueqiu.android.common.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;

public abstract class d<T>
  extends BaseAdapter
{
  protected int a;
  public ArrayList<T> b = null;
  public Context c;
  protected boolean d = false;
  
  public d(Context paramContext)
  {
    this.c = paramContext;
  }
  
  public d(Context paramContext, int paramInt)
  {
    this(paramContext);
    this.a = paramInt;
  }
  
  public final ArrayList<T> a()
  {
    if (this.b == null) {
      this.b = new ArrayList();
    }
    return this.b;
  }
  
  public final void a(ArrayList<T> paramArrayList)
  {
    this.b = paramArrayList;
    notifyDataSetInvalidated();
  }
  
  public int getCount()
  {
    if (this.b == null) {
      return 0;
    }
    return this.b.size();
  }
  
  public Object getItem(int paramInt)
  {
    try
    {
      Object localObject = this.b.get(paramInt);
      return localObject;
    }
    catch (ArrayIndexOutOfBoundsException localArrayIndexOutOfBoundsException) {}
    return null;
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView;
    if (paramView != null)
    {
      localView = paramView;
      if (paramView.getTag() != null) {}
    }
    else
    {
      localView = LayoutInflater.from(this.c).inflate(this.a, paramViewGroup, false);
    }
    return localView;
  }
  
  public boolean hasStableIds()
  {
    return true;
  }
  
  public boolean isEmpty()
  {
    if (this.b == null) {
      return true;
    }
    return this.b.isEmpty();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\a\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */