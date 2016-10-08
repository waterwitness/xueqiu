package com.xueqiu.android.community;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.xueqiu.android.community.model.IndustryOfUser;

final class e
  extends com.xueqiu.android.common.a.d<IndustryOfUser>
{
  public int e = 0;
  
  public e(d paramd, Context paramContext)
  {
    super(paramContext, 2130903161);
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup = super.getView(paramInt, paramView, paramViewGroup);
    if (paramViewGroup.getTag() == null)
    {
      paramView = (TextView)paramViewGroup.findViewById(2131624467);
      paramViewGroup.setTag(paramView);
    }
    for (;;)
    {
      paramView.setText(((IndustryOfUser)getItem(paramInt)).getName());
      if (this.e != paramInt) {
        break;
      }
      paramView.setSelected(true);
      paramView.setTextColor(this.f.h().getColor(2131558686));
      return paramViewGroup;
      paramView = (TextView)paramViewGroup.getTag();
    }
    paramView.setSelected(false);
    paramView.setTextColor(this.f.h().getColor(2131558551));
    return paramViewGroup;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */