package com.xueqiu.android.trade.a;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.d.a.b.f;
import com.xueqiu.android.base.storage.prefs.UserPrefs;
import com.xueqiu.android.common.a.d;
import com.xueqiu.android.trade.model.TradeAccount;
import com.xueqiu.android.trade.model.TradeBroker;

public final class a
  extends d<TradeAccount>
{
  private TradeAccount e;
  
  public a(Context paramContext, TradeAccount paramTradeAccount)
  {
    super(paramContext, 2130903522);
    this.e = paramTradeAccount;
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    int i = 0;
    paramViewGroup = super.getView(paramInt, paramView, paramViewGroup);
    TradeAccount localTradeAccount1;
    boolean bool;
    if (paramViewGroup.getTag() == null)
    {
      paramView = new b();
      paramView.b = ((TextView)paramViewGroup.findViewById(2131625658));
      paramView.c = ((TextView)paramViewGroup.findViewById(2131625659));
      paramView.a = ((ImageView)paramViewGroup.findViewById(2131625657));
      paramView.d = ((ImageView)paramViewGroup.findViewById(2131625660));
      paramViewGroup.setTag(paramView);
      localTradeAccount1 = (TradeAccount)getItem(paramInt);
      if (localTradeAccount1.getTradeBroker().getTraderLogo() != null) {
        f.a().a(localTradeAccount1.getTradeBroker().getTraderLogo(), paramView.a);
      }
      if (localTradeAccount1.getTradeBroker().getTraderName() != null) {
        paramView.b.setText(localTradeAccount1.getTradeBroker().getTraderName());
      }
      if (localTradeAccount1.getRealAccountId() != null) {
        paramView.c.setText(localTradeAccount1.getRealAccountId());
      }
      if (this.e == null) {
        break label223;
      }
      bool = TextUtils.equals(localTradeAccount1.getTid(), this.e.getTid());
    }
    for (;;)
    {
      label192:
      paramView = paramView.d;
      if (bool) {}
      for (paramInt = i;; paramInt = 8)
      {
        paramView.setVisibility(paramInt);
        return paramViewGroup;
        paramView = (b)paramViewGroup.getTag();
        break;
        label223:
        TradeAccount localTradeAccount2 = UserPrefs.getTradeAccount(UserPrefs.getCurrentTradeAccountTid());
        if (localTradeAccount2 == null) {
          break label260;
        }
        bool = TextUtils.equals(localTradeAccount1.getTid(), localTradeAccount2.getTid());
        break label192;
      }
      label260:
      bool = false;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */