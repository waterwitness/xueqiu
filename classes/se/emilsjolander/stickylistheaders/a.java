package se.emilsjolander.stickylistheaders;

import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.LinkedList;
import java.util.List;

class a
  extends BaseAdapter
  implements l
{
  l a;
  b b;
  private final List<View> c = new LinkedList();
  private final Context d;
  private Drawable e;
  private int f;
  private DataSetObserver g = new DataSetObserver()
  {
    public final void onChanged()
    {
      a.c(a.this);
    }
    
    public final void onInvalidated()
    {
      a.a(a.this).clear();
      a.b(a.this);
    }
  };
  
  a(Context paramContext, l paraml)
  {
    this.d = paramContext;
    this.a = paraml;
    paraml.registerDataSetObserver(this.g);
  }
  
  public final long a(int paramInt)
  {
    return this.a.a(paramInt);
  }
  
  public final View a(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    return this.a.a(paramInt, paramView, paramViewGroup);
  }
  
  final void a(Drawable paramDrawable, int paramInt)
  {
    this.e = paramDrawable;
    this.f = paramInt;
    notifyDataSetChanged();
  }
  
  public boolean areAllItemsEnabled()
  {
    return this.a.areAllItemsEnabled();
  }
  
  public boolean equals(Object paramObject)
  {
    return this.a.equals(paramObject);
  }
  
  public int getCount()
  {
    return this.a.getCount();
  }
  
  public View getDropDownView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    return ((BaseAdapter)this.a).getDropDownView(paramInt, paramView, paramViewGroup);
  }
  
  public Object getItem(int paramInt)
  {
    return this.a.getItem(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    return this.a.getItemId(paramInt);
  }
  
  public int getItemViewType(int paramInt)
  {
    return this.a.getItemViewType(paramInt);
  }
  
  public int getViewTypeCount()
  {
    return this.a.getViewTypeCount();
  }
  
  public boolean hasStableIds()
  {
    return this.a.hasStableIds();
  }
  
  public int hashCode()
  {
    return this.a.hashCode();
  }
  
  public boolean isEmpty()
  {
    return this.a.isEmpty();
  }
  
  public boolean isEnabled(int paramInt)
  {
    return this.a.isEnabled(paramInt);
  }
  
  public void notifyDataSetChanged()
  {
    ((BaseAdapter)this.a).notifyDataSetChanged();
  }
  
  public void notifyDataSetInvalidated()
  {
    ((BaseAdapter)this.a).notifyDataSetInvalidated();
  }
  
  public String toString()
  {
    return this.a.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\se\emilsjolander\stickylistheaders\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */