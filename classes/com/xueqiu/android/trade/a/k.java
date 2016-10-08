package com.xueqiu.android.trade.a;

import android.content.Context;
import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.xueqiu.android.base.b.a.c;
import com.xueqiu.android.base.util.h;
import com.xueqiu.android.common.a.d;
import com.xueqiu.android.trade.model.TradeNotification;
import java.util.Collections;
import java.util.Comparator;

public final class k
  extends d<TradeNotification>
{
  public k(Context paramContext)
  {
    super(paramContext, 2130903538);
    registerDataSetObserver(new DataSetObserver()
    {
      public final void onChanged()
      {
        super.onChanged();
        Collections.sort(k.this.a(), new Comparator() {});
      }
    });
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup = super.getView(paramInt, paramView, paramViewGroup);
    if (paramViewGroup.getTag() == null)
    {
      paramView = new l();
      paramView.a = ((TextView)paramViewGroup.findViewById(2131624097));
      paramView.c = ((TextView)paramViewGroup.findViewById(2131624688));
      paramView.b = ((TextView)paramViewGroup.findViewById(2131625681));
      paramView.d = paramViewGroup.findViewById(2131625653);
      paramViewGroup.setTag(paramView);
      TradeNotification localTradeNotification = (TradeNotification)getItem(paramInt);
      paramView.a.setText(localTradeNotification.getTitle());
      paramView.c.setText(localTradeNotification.getBody());
      if (localTradeNotification.getOccurTime() != null) {
        paramView.b.setText(h.a(localTradeNotification.getOccurTime(), "yyyy-MM-dd HH:mm:ss"));
      }
      paramView = paramView.d;
      if (!c.a(localTradeNotification.getUrl())) {
        break label173;
      }
    }
    label173:
    for (paramInt = 8;; paramInt = 0)
    {
      paramView.setVisibility(paramInt);
      return paramViewGroup;
      paramView = (l)paramViewGroup.getTag();
      break;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\a\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */