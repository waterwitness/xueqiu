package android.support.v7.internal.widget;

import android.support.v7.a.e;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;

final class af
  extends BaseAdapter
{
  private af(ScrollingTabContainerView paramScrollingTabContainerView) {}
  
  public final int getCount()
  {
    return ScrollingTabContainerView.a(this.a).getChildCount();
  }
  
  public final Object getItem(int paramInt)
  {
    return ((ScrollingTabContainerView.TabView)ScrollingTabContainerView.a(this.a).getChildAt(paramInt)).getTab();
  }
  
  public final long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null) {
      return ScrollingTabContainerView.a(this.a, (e)getItem(paramInt));
    }
    paramViewGroup = (ScrollingTabContainerView.TabView)paramView;
    paramViewGroup.a = ((e)getItem(paramInt));
    paramViewGroup.a();
    return paramView;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\widget\af.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */