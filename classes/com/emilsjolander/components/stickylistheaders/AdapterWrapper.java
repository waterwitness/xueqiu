package com.emilsjolander.components.stickylistheaders;

import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Checkable;
import java.util.LinkedList;
import java.util.List;

class AdapterWrapper
  extends BaseAdapter
  implements StickyListHeadersAdapter
{
  private final Context mContext;
  private DataSetObserver mDataSetObserver = new DataSetObserver()
  {
    public void onChanged()
    {
      AdapterWrapper.this.notifyDataSetChanged();
    }
    
    public void onInvalidated()
    {
      AdapterWrapper.this.mHeaderCache.clear();
      AdapterWrapper.this.notifyDataSetInvalidated();
    }
  };
  final StickyListHeadersAdapter mDelegate;
  private Drawable mDivider;
  private int mDividerHeight;
  private final List<View> mHeaderCache = new LinkedList();
  private AdapterWrapper.OnHeaderClickListener mOnHeaderClickListener;
  
  AdapterWrapper(Context paramContext, StickyListHeadersAdapter paramStickyListHeadersAdapter)
  {
    this.mContext = paramContext;
    this.mDelegate = paramStickyListHeadersAdapter;
    paramStickyListHeadersAdapter.registerDataSetObserver(this.mDataSetObserver);
  }
  
  private View configureHeader(WrapperView paramWrapperView, final int paramInt)
  {
    if (paramWrapperView.mHeader == null) {}
    for (View localView = popHeader();; localView = paramWrapperView.mHeader)
    {
      paramWrapperView = this.mDelegate.getHeaderView(paramInt, localView, paramWrapperView);
      if (paramWrapperView != null) {
        break;
      }
      throw new NullPointerException("Header view must not be null.");
    }
    paramWrapperView.setClickable(true);
    paramWrapperView.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (AdapterWrapper.this.mOnHeaderClickListener != null)
        {
          long l = AdapterWrapper.this.mDelegate.getHeaderId(paramInt);
          AdapterWrapper.this.mOnHeaderClickListener.onHeaderClick(paramAnonymousView, paramInt, l);
        }
      }
    });
    return paramWrapperView;
  }
  
  private View popHeader()
  {
    if (this.mHeaderCache.size() > 0) {
      return (View)this.mHeaderCache.remove(0);
    }
    return null;
  }
  
  private boolean previousPositionHasSameHeader(int paramInt)
  {
    return (paramInt != 0) && (this.mDelegate.getHeaderId(paramInt) == this.mDelegate.getHeaderId(paramInt - 1));
  }
  
  private void recycleHeaderIfExists(WrapperView paramWrapperView)
  {
    paramWrapperView = paramWrapperView.mHeader;
    if (paramWrapperView != null)
    {
      paramWrapperView.setVisibility(0);
      this.mHeaderCache.add(paramWrapperView);
    }
  }
  
  public boolean areAllItemsEnabled()
  {
    return this.mDelegate.areAllItemsEnabled();
  }
  
  public boolean equals(Object paramObject)
  {
    return this.mDelegate.equals(paramObject);
  }
  
  public int getCount()
  {
    return this.mDelegate.getCount();
  }
  
  public View getDropDownView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    return ((BaseAdapter)this.mDelegate).getDropDownView(paramInt, paramView, paramViewGroup);
  }
  
  public long getHeaderId(int paramInt)
  {
    return this.mDelegate.getHeaderId(paramInt);
  }
  
  public View getHeaderView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    return this.mDelegate.getHeaderView(paramInt, paramView, paramViewGroup);
  }
  
  public Object getItem(int paramInt)
  {
    return this.mDelegate.getItem(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    return this.mDelegate.getItemId(paramInt);
  }
  
  public int getItemViewType(int paramInt)
  {
    return this.mDelegate.getItemViewType(paramInt);
  }
  
  public WrapperView getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView2;
    View localView1;
    if (paramView == null)
    {
      paramView = new WrapperView(this.mContext);
      localView2 = this.mDelegate.getView(paramInt, paramView.mItem, paramView);
      localView1 = null;
      if (!previousPositionHasSameHeader(paramInt)) {
        break label102;
      }
      recycleHeaderIfExists(paramView);
      label49:
      if ((!(localView2 instanceof Checkable)) || ((paramView instanceof CheckableWrapperView))) {
        break label113;
      }
      paramViewGroup = new CheckableWrapperView(this.mContext);
    }
    for (;;)
    {
      paramViewGroup.update(localView2, localView1, this.mDivider, this.mDividerHeight);
      return paramViewGroup;
      paramView = (WrapperView)paramView;
      break;
      label102:
      localView1 = configureHeader(paramView, paramInt);
      break label49;
      label113:
      paramViewGroup = paramView;
      if (!(localView2 instanceof Checkable))
      {
        paramViewGroup = paramView;
        if ((paramView instanceof CheckableWrapperView)) {
          paramViewGroup = new WrapperView(this.mContext);
        }
      }
    }
  }
  
  public int getViewTypeCount()
  {
    return this.mDelegate.getViewTypeCount();
  }
  
  public boolean hasStableIds()
  {
    return this.mDelegate.hasStableIds();
  }
  
  public int hashCode()
  {
    return this.mDelegate.hashCode();
  }
  
  public boolean isEmpty()
  {
    return this.mDelegate.isEmpty();
  }
  
  public boolean isEnabled(int paramInt)
  {
    return this.mDelegate.isEnabled(paramInt);
  }
  
  public void notifyDataSetChanged()
  {
    ((BaseAdapter)this.mDelegate).notifyDataSetChanged();
  }
  
  public void notifyDataSetInvalidated()
  {
    ((BaseAdapter)this.mDelegate).notifyDataSetInvalidated();
  }
  
  void setDivider(Drawable paramDrawable, int paramInt)
  {
    this.mDivider = paramDrawable;
    this.mDividerHeight = paramInt;
    notifyDataSetChanged();
  }
  
  public void setOnHeaderClickListener(AdapterWrapper.OnHeaderClickListener paramOnHeaderClickListener)
  {
    this.mOnHeaderClickListener = paramOnHeaderClickListener;
  }
  
  public String toString()
  {
    return this.mDelegate.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\emilsjolander\components\stickylistheaders\AdapterWrapper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */