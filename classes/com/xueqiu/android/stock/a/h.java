package com.xueqiu.android.stock.a;

import android.content.Context;
import android.text.Html;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.xueqiu.android.common.a.d;
import com.xueqiu.android.stock.model.InvestmentCalendarEvent;
import java.util.Date;
import java.util.TimeZone;

public final class h
  extends d<InvestmentCalendarEvent>
{
  private Context e;
  
  public h(Context paramContext)
  {
    super(paramContext, 2130903469);
    this.e = paramContext;
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = super.getView(paramInt, paramView, paramViewGroup);
    InvestmentCalendarEvent localInvestmentCalendarEvent;
    if (localView.getTag() == null)
    {
      paramView = new i(this);
      paramView.a = ((TextView)localView.findViewById(2131625532));
      paramView.b = ((TextView)localView.findViewById(2131625533));
      localView.setTag(paramView);
      localInvestmentCalendarEvent = (InvestmentCalendarEvent)getItem(paramInt);
      paramViewGroup = com.xueqiu.android.base.util.h.a(com.xueqiu.android.base.util.h.a(new Date(localInvestmentCalendarEvent.mStart_date), "yyyy-MM-dd HH:mm"), TimeZone.getDefault(), "yyyy-MM-dd HH:mm", "HH:mm");
      if (localInvestmentCalendarEvent.mAll_day) {
        paramViewGroup = this.e.getString(2131165229);
      }
      paramView.a.setText(paramViewGroup);
      if (TextUtils.isEmpty(localInvestmentCalendarEvent.mStock)) {
        break label193;
      }
    }
    label193:
    for (paramViewGroup = localInvestmentCalendarEvent.mStock + ":" + localInvestmentCalendarEvent.mTitle;; paramViewGroup = localInvestmentCalendarEvent.mTitle)
    {
      paramView.b.setText(Html.fromHtml(paramViewGroup));
      return localView;
      paramView = (i)localView.getTag();
      break;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\a\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */