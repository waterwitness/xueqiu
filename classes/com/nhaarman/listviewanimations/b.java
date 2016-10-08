package com.nhaarman.listviewanimations;

import android.database.DataSetObserver;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.SectionIndexer;
import com.nhaarman.listviewanimations.a.c;
import com.nhaarman.listviewanimations.a.d;
import com.nhaarman.listviewanimations.a.e;
import com.nhaarman.listviewanimations.a.f;

public abstract class b
  extends BaseAdapter
  implements SectionIndexer, c, e, f
{
  @NonNull
  public final BaseAdapter a;
  @Nullable
  public d b;
  
  public b(@NonNull BaseAdapter paramBaseAdapter)
  {
    this.a = paramBaseAdapter;
  }
  
  public final void a(int paramInt1, int paramInt2)
  {
    if ((this.a instanceof f))
    {
      ((f)this.a).a(paramInt1, paramInt2);
      return;
    }
    Log.w("ListViewAnimations", "Warning: swapItems called on an adapter that does not implement Swappable!");
  }
  
  public final void a(int paramInt, @NonNull Object paramObject)
  {
    if ((this.a instanceof c))
    {
      ((c)this.a).a(paramInt, paramObject);
      return;
    }
    Log.w("ListViewAnimations", "Warning: add called on an adapter that does not implement Insertable!");
  }
  
  public final void a(@NonNull d paramd)
  {
    this.b = paramd;
    if ((this.a instanceof e)) {
      ((e)this.a).a(paramd);
    }
  }
  
  public boolean areAllItemsEnabled()
  {
    return this.a.areAllItemsEnabled();
  }
  
  public int getCount()
  {
    return this.a.getCount();
  }
  
  @NonNull
  public View getDropDownView(int paramInt, @Nullable View paramView, @NonNull ViewGroup paramViewGroup)
  {
    return this.a.getDropDownView(paramInt, paramView, paramViewGroup);
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
  
  public int getPositionForSection(int paramInt)
  {
    int i = 0;
    if ((this.a instanceof SectionIndexer)) {
      i = ((SectionIndexer)this.a).getPositionForSection(paramInt);
    }
    return i;
  }
  
  public int getSectionForPosition(int paramInt)
  {
    int i = 0;
    if ((this.a instanceof SectionIndexer)) {
      i = ((SectionIndexer)this.a).getSectionForPosition(paramInt);
    }
    return i;
  }
  
  @NonNull
  public Object[] getSections()
  {
    Object[] arrayOfObject = new Object[0];
    if ((this.a instanceof SectionIndexer)) {
      arrayOfObject = ((SectionIndexer)this.a).getSections();
    }
    return arrayOfObject;
  }
  
  @NonNull
  public View getView(int paramInt, @Nullable View paramView, @NonNull ViewGroup paramViewGroup)
  {
    return this.a.getView(paramInt, paramView, paramViewGroup);
  }
  
  public int getViewTypeCount()
  {
    return this.a.getViewTypeCount();
  }
  
  public boolean hasStableIds()
  {
    return this.a.hasStableIds();
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
    if (!(this.a instanceof a)) {
      this.a.notifyDataSetChanged();
    }
  }
  
  public void notifyDataSetInvalidated()
  {
    this.a.notifyDataSetInvalidated();
  }
  
  public void registerDataSetObserver(@NonNull DataSetObserver paramDataSetObserver)
  {
    this.a.registerDataSetObserver(paramDataSetObserver);
  }
  
  public void unregisterDataSetObserver(@NonNull DataSetObserver paramDataSetObserver)
  {
    this.a.unregisterDataSetObserver(paramDataSetObserver);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\nhaarman\listviewanimations\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */