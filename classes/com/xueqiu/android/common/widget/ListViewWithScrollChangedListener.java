package com.xueqiu.android.common.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ListView;

public class ListViewWithScrollChangedListener
  extends ListView
{
  private ai a = null;
  
  public ListViewWithScrollChangedListener(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  protected void onScrollChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onScrollChanged(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public void setScrollChangedListener(ai paramai)
  {
    this.a = paramai;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\ListViewWithScrollChangedListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */