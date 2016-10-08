package com.xueqiu.android.common.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import com.xueqiu.android.trade.view.IndicatorTabView;

public class IndicatorTabLayout
  extends LinearLayout
  implements View.OnClickListener
{
  private o a;
  private View b;
  
  public IndicatorTabLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  private static boolean a(View paramView)
  {
    return (paramView.isClickable()) && (paramView.getVisibility() == 0);
  }
  
  public final void a(int paramInt)
  {
    int k = getChildCount();
    int j = 0;
    int i = 0;
    View localView;
    if (j < k)
    {
      localView = getChildAt(j);
      if (!a(localView)) {
        break label107;
      }
      if (i == paramInt)
      {
        localView.setSelected(true);
        if ((this.a != null) && ((localView instanceof IndicatorTabView)) && (paramInt != getCurrentItem())) {
          this.a.b_(((IndicatorTabView)localView).getText());
        }
        this.b = localView;
        label85:
        i += 1;
      }
    }
    label107:
    for (;;)
    {
      j += 1;
      break;
      localView.setSelected(false);
      break label85;
      return;
    }
  }
  
  public int getCurrentItem()
  {
    if ((this.b == null) || (this.b.getTag() == null)) {
      return 0;
    }
    return ((Integer)this.b.getTag()).intValue();
  }
  
  public void onClick(View paramView)
  {
    int j = getChildCount();
    int i = 0;
    while (i < j)
    {
      View localView = getChildAt(i);
      if (a(localView)) {
        localView.setSelected(false);
      }
      i += 1;
    }
    paramView.setSelected(true);
    this.b = paramView;
    if ((this.a != null) && ((paramView instanceof IndicatorTabView))) {
      this.a.b_(((IndicatorTabView)paramView).getText());
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = 0;
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    paramInt4 = getChildCount();
    paramInt1 = 0;
    for (paramInt2 = i; paramInt1 < paramInt4; paramInt2 = paramInt3)
    {
      View localView = getChildAt(paramInt1);
      paramInt3 = paramInt2;
      if (a(localView))
      {
        localView.setOnClickListener(this);
        localView.setTag(Integer.valueOf(paramInt2));
        paramInt3 = paramInt2 + 1;
      }
      paramInt1 += 1;
    }
  }
  
  public void setOnTabChangeListener(o paramo)
  {
    this.a = paramo;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\IndicatorTabLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */