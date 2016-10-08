package com.xueqiu.android.trade.c;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.volley.y;
import com.d.a.b.e;
import com.d.a.b.f;
import com.google.gson.Gson;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.storage.prefs.UserPrefs;
import com.xueqiu.android.base.util.ag;
import com.xueqiu.android.base.util.ar;
import com.xueqiu.android.base.util.au;
import com.xueqiu.android.base.util.m;
import com.xueqiu.android.base.util.n;
import com.xueqiu.android.base.util.o;
import com.xueqiu.android.base.v;
import com.xueqiu.android.common.MainActivity;
import com.xueqiu.android.common.b;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.common.widget.SnowBallTabHost;
import com.xueqiu.android.trade.g;
import com.xueqiu.android.trade.model.AccountFundIncomeInfo;
import com.xueqiu.android.trade.model.TradeAccount;
import com.xueqiu.android.trade.model.TradeBroker;
import java.util.concurrent.TimeUnit;

public final class l
  extends com.xueqiu.android.common.c
  implements View.OnClickListener, com.xueqiu.android.common.widget.l
{
  boolean a;
  private com.xueqiu.android.base.a.a ak;
  private boolean al = true;
  TradeAccount b;
  rx.j c;
  private boolean d = false;
  private View e;
  private AccountFundIncomeInfo f;
  private ImageView g;
  private com.xueqiu.android.trade.c h;
  
  private void G()
  {
    if (this.f == null) {
      return;
    }
    Object localObject = (TextView)c(2131625226);
    TextView localTextView = (TextView)c(2131625228);
    if (this.b.isIB())
    {
      ((TextView)localObject).setText(au.b(this.f.getAssetBalance()));
      if (com.xueqiu.android.base.util.j.b(this.f.getUnrealizedPnl()) > 0.0D) {}
      for (localObject = "+";; localObject = "")
      {
        localTextView.setText(String.format("%s", new Object[] { String.format("%s%s", new Object[] { localObject, au.b(this.f.getUnrealizedPnl()) }) }));
        a(this.f.getUnrealizedPnlRate(), localTextView);
        return;
      }
    }
    ((TextView)localObject).setText(au.b(this.f.getAssetBalance()));
    if (com.xueqiu.android.base.util.j.b(this.f.getDayIncomeBalance()) > 0.0D) {}
    for (localObject = "+";; localObject = "")
    {
      localTextView.setText(String.format("%s", new Object[] { String.format("%s%s", new Object[] { localObject, au.b(this.f.getDayIncomeBalance()) }) }));
      a(this.f.getDayIncomeRate(), localTextView);
      return;
    }
  }
  
  public static l a(TradeAccount paramTradeAccount, boolean paramBoolean)
  {
    l locall = new l();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("args_trade_account", paramTradeAccount);
    localBundle.putBoolean("args_is_visible", paramBoolean);
    locall.e(localBundle);
    return locall;
  }
  
  private static void a(String paramString, TextView paramTextView)
  {
    double d1 = com.xueqiu.android.base.util.j.b(paramString);
    paramTextView.setTextColor(ar.a().a(d1));
  }
  
  private void a(String paramString, TradeAccount paramTradeAccount)
  {
    this.h = com.xueqiu.android.trade.c.a(paramString, paramTradeAccount, (b)g(), new com.xueqiu.android.trade.d()new c
    {
      public final void a()
      {
        l.a(l.this);
        l.e(l.this);
      }
      
      public final void b() {}
    }, new c()
    {
      public final void a(TradeAccount paramAnonymousTradeAccount) {}
    });
    this.h.a();
  }
  
  private String b(String paramString)
  {
    return String.format("%s%s", new Object[] { paramString, this.b.getAid() });
  }
  
  final void C()
  {
    TextView localTextView1 = (TextView)this.e.findViewById(2131624860);
    TextView localTextView2 = (TextView)this.e.findViewById(2131625227);
    if (this.b.isIB())
    {
      localTextView1.setText(a(2131165757, new Object[] { this.b.getTradeBroker().getTraderName(), "" }));
      localTextView2.setText(2131166556);
      return;
    }
    if (this.b.isFirstTrade())
    {
      localTextView1.setText(a(2131166354, new Object[] { this.b.getTradeBroker().getTraderName(), "" }));
      localTextView2.setText(2131166314);
      return;
    }
    localTextView1.setText(a(2131166348, new Object[] { this.b.getTradeBroker().getTraderName(), "" }));
    localTextView2.setText(2131166314);
  }
  
  public final void C_()
  {
    this.a = true;
    F();
  }
  
  final void D()
  {
    ImageView localImageView = (ImageView)this.e.findViewById(2131624861);
    com.d.a.b.d locald = n.a().b();
    o localo = new o();
    f.a().a(this.b.getTradeBroker().getTraderLogo(), localImageView, locald, localo);
  }
  
  public final TradeAccount E()
  {
    if (this.b != null) {
      return this.b;
    }
    return null;
  }
  
  final void F()
  {
    if ((this.b.isCreateByMyself()) || (!this.b.isSuccessBondStatus()))
    {
      ((TextView)c(2131625226)).setText("0.00");
      ((TextView)c(2131625228)).setText("0.00(0.00%)");
    }
    do
    {
      do
      {
        return;
      } while (this.d);
      String str = UserPrefs.getString(f(), b("cache_key_fund_income"), "");
      if (!TextUtils.isEmpty(str)) {
        this.f = ((AccountFundIncomeInfo)m.a().fromJson(str, AccountFundIncomeInfo.class));
      }
      G();
    } while ((!this.a) || (this.b == null) || (this.b.getTid() == null) || (this.b.getAid() == null));
    if (this.c != null)
    {
      this.c.b();
      this.c = null;
    }
    this.c = ag.c.a(new rx.c.a()
    {
      public final void a()
      {
        l.d(l.this);
      }
    }, 0L, 5L, TimeUnit.SECONDS);
  }
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.e = paramLayoutInflater.inflate(2130903368, paramViewGroup, false);
    return this.e;
  }
  
  public final void a(@Nullable Bundle paramBundle)
  {
    super.a(paramBundle);
    paramBundle = this.r;
    this.a = paramBundle.getBoolean("args_is_visible");
    this.b = ((TradeAccount)paramBundle.getParcelable("args_trade_account"));
  }
  
  public final void c_(boolean paramBoolean)
  {
    if (!paramBoolean) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      this.al = paramBoolean;
      return;
    }
  }
  
  public final void o()
  {
    super.o();
    if (this.al)
    {
      if (this.b != null)
      {
        u();
        C();
        D();
      }
      F();
    }
  }
  
  public final void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    }
    do
    {
      do
      {
        do
        {
          do
          {
            return;
            com.xueqiu.android.common.q.a(v.b("/broker/bind-list"), f());
            return;
            if (this.b.isUSType())
            {
              com.xueqiu.android.common.q.a(v.b("/broker/open/DYZQ"), f());
              com.xueqiu.android.base.i.a().a(new SNBEvent(1200, 12));
              return;
            }
            com.xueqiu.android.common.q.a(v.b("/broker/open/PINGAN"), f());
            com.xueqiu.android.base.i.a().a(new SNBEvent(1200, 11));
            return;
          } while (!(g() instanceof MainActivity));
          UserPrefs.setCurrentJumpAccountTid(this.b.getTid());
          paramView = (MainActivity)g();
        } while ((!TextUtils.equals("trade_tag", "trade_tag")) && (!TextUtils.equals("trade_tag", "trends_tag")) && (!TextUtils.equals("trade_tag", "public_timeline_tag")) && (!TextUtils.equals("trade_tag", "quotes_center_tag")) && (!TextUtils.equals("trade_tag", "portfolio_tag")));
        paramView.k.setCurrentTabByTag("trade_tag");
        return;
      } while (this.ak == null);
      paramView = g.a(this.ak.data);
      a(this.ak.errorCode, paramView);
      return;
    } while ((this.g.getVisibility() != 0) || (this.ak == null));
    paramView = g.a(this.ak.data);
    a(this.ak.errorCode, paramView);
  }
  
  public final void p()
  {
    if (this.c != null)
    {
      this.c.b();
      this.c = null;
    }
    super.p();
  }
  
  final void u()
  {
    Button localButton1 = (Button)this.e.findViewById(2131625230);
    Button localButton2 = (Button)this.e.findViewById(2131625229);
    Button localButton3 = (Button)this.e.findViewById(2131625231);
    if (this.b.isCreateByMyself())
    {
      localButton1.setVisibility(0);
      localButton1.setOnClickListener(this);
      localButton2.setVisibility(0);
      localButton2.setOnClickListener(this);
      localButton3.setVisibility(8);
      this.e.findViewById(2131625227).setVisibility(8);
      this.e.findViewById(2131625228).setVisibility(8);
    }
    for (;;)
    {
      this.g = ((ImageView)this.e.findViewById(2131625232));
      this.g.setOnClickListener(this);
      this.e.findViewById(2131625223).setOnClickListener(this);
      if (!this.d) {
        break;
      }
      this.g.setVisibility(0);
      this.e.findViewById(2131625227).setVisibility(8);
      this.e.findViewById(2131625228).setVisibility(8);
      return;
      localButton1.setVisibility(8);
      localButton2.setVisibility(8);
      if (this.b.isSuccessBondStatus())
      {
        localButton3.setVisibility(8);
        this.e.findViewById(2131625227).setVisibility(0);
        this.e.findViewById(2131625228).setVisibility(0);
      }
      else
      {
        localButton3.setVisibility(0);
        localButton3.setOnClickListener(this);
        this.e.findViewById(2131625227).setVisibility(8);
        this.e.findViewById(2131625228).setVisibility(8);
      }
    }
    this.g.setVisibility(8);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\c\l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */