package com.xueqiu.android.trade.c;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLayoutChangeListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import com.android.volley.y;
import com.d.a.b.e;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.am;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.r;
import com.xueqiu.android.base.storage.prefs.UserPrefs;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.ag;
import com.xueqiu.android.base.util.au;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.base.util.az;
import com.xueqiu.android.base.util.j;
import com.xueqiu.android.base.util.n;
import com.xueqiu.android.base.util.o;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.common.widget.AutoResizeTextView;
import com.xueqiu.android.common.widget.PinnedSectionPullToRefreshListView;
import com.xueqiu.android.common.widget.g;
import com.xueqiu.android.common.widget.l;
import com.xueqiu.android.stock.StockDetailActivity;
import com.xueqiu.android.stock.model.StockQuote;
import com.xueqiu.android.trade.OrderFullActivity;
import com.xueqiu.android.trade.c.3;
import com.xueqiu.android.trade.d;
import com.xueqiu.android.trade.kwlopen.KwlOpenActivity;
import com.xueqiu.android.trade.model.AccountFundInfo;
import com.xueqiu.android.trade.model.RepoPosition;
import com.xueqiu.android.trade.model.SectionItem;
import com.xueqiu.android.trade.model.SemiTradeAccount;
import com.xueqiu.android.trade.model.SemiTradeAccount.Status;
import com.xueqiu.android.trade.model.SnowxTraderConfig;
import com.xueqiu.android.trade.model.TradeAccount;
import com.xueqiu.android.trade.model.TradeBroker;
import com.xueqiu.android.trade.model.TradePosition;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.TimeUnit;

public final class s
  extends com.xueqiu.android.common.c
  implements l
{
  TradeAccount a = null;
  private View ak;
  private ImageView al;
  private t am = null;
  private volatile int an = 0;
  private AutoResizeTextView ao;
  private LinearLayout ap;
  private boolean aq;
  private boolean ar;
  private String as;
  private String at;
  private AdapterView.OnItemClickListener au = new AdapterView.OnItemClickListener()
  {
    public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
    {
      int i = ((ListView)s.j(s.this).getRefreshableView()).getHeaderViewsCount();
      if ((paramAnonymousInt - i >= s.m(s.this).getCount()) || (paramAnonymousInt - i < 0)) {}
      do
      {
        return;
        paramAnonymousAdapterView = s.m(s.this).getItem(paramAnonymousInt - i);
        if ((paramAnonymousAdapterView instanceof TradePosition))
        {
          paramAnonymousAdapterView = (TradePosition)s.m(s.this).getItem(paramAnonymousInt - i);
          if (!TextUtils.isEmpty(paramAnonymousAdapterView.getSymbol()))
          {
            paramAnonymousView = new Intent(s.this.f(), StockDetailActivity.class);
            paramAnonymousView.putExtra("extra_from_broker", s.a(s.this).getTid());
            paramAnonymousView.putExtra("extra_stock", new StockQuote(paramAnonymousAdapterView.getSname(), paramAnonymousAdapterView.getSymbol()));
            s.this.a(paramAnonymousView);
            return;
          }
          s.a(s.this, paramAnonymousAdapterView.getSymbol(), true);
          return;
        }
      } while (!(paramAnonymousAdapterView instanceof RepoPosition));
      paramAnonymousAdapterView = (RepoPosition)s.m(s.this).getItem(paramAnonymousInt - i);
      if (!TextUtils.isEmpty(paramAnonymousAdapterView.getSymbol()))
      {
        paramAnonymousView = new Intent(s.this.f(), StockDetailActivity.class);
        paramAnonymousView.putExtra("extra_from_broker", s.a(s.this).getTid());
        paramAnonymousView.putExtra("extra_stock", new StockQuote(paramAnonymousAdapterView.getSname(), paramAnonymousAdapterView.getSymbol()));
        s.this.a(paramAnonymousView);
        return;
      }
      s.a(s.this, paramAnonymousAdapterView.getSymbol(), true);
    }
  };
  private AdapterView.OnItemLongClickListener av = new AdapterView.OnItemLongClickListener()
  {
    public final boolean onItemLongClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
    {
      int i = ((ListView)s.j(s.this).getRefreshableView()).getHeaderViewsCount();
      if ((paramAnonymousInt - i >= s.m(s.this).getCount()) || (paramAnonymousInt - i < 0)) {}
      while (!(s.m(s.this).getItem(paramAnonymousInt - i) instanceof TradePosition)) {
        return true;
      }
      final Object localObject = ((TradePosition)s.m(s.this).getItem(paramAnonymousInt - i)).getSymbol();
      paramAnonymousAdapterView = s.this.a(2131166428);
      paramAnonymousView = s.this.a(2131166431);
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(s.this.f());
      localObject = new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
        {
          boolean bool = true;
          if (paramAnonymous2Int == 0) {
            bool = false;
          }
          s.a(s.this, localObject, bool);
        }
      };
      localBuilder.setItems(new String[] { paramAnonymousAdapterView, paramAnonymousView }, (DialogInterface.OnClickListener)localObject).show().setCanceledOnTouchOutside(true);
      return true;
    }
  };
  PinnedSectionPullToRefreshListView b = null;
  com.xueqiu.android.trade.a.m c = null;
  v d;
  AccountFundInfo e;
  boolean f = false;
  private View g;
  private View h;
  
  private void C()
  {
    E();
    F();
    if (this.f) {
      D();
    }
  }
  
  private void D()
  {
    if ((this.b != null) && (this.a.isSuccessBondStatus())) {
      this.b.k();
    }
  }
  
  private void E()
  {
    if (this.e == null) {
      return;
    }
    Object localObject4;
    View localView1;
    Object localObject2;
    Object localObject3;
    if ((this.e.hasTip()) && (this.e.getTipInfo() != null))
    {
      this.as = this.e.getTipInfo();
      localObject4 = (TextView)c(2131625226);
      localView1 = c(2131625745);
      localObject1 = localView1.findViewById(2131625595);
      localObject2 = localView1.findViewById(2131625596);
      localObject3 = localView1.findViewById(2131625597);
      localView1 = localView1.findViewById(2131625746);
      if (!this.a.isIB()) {
        break label492;
      }
      ((TextView)localObject4).setText(au.b(this.e.getNetLiquidation()));
      View localView4 = c(2131625747);
      localObject4 = localView4.findViewById(2131625748);
      View localView2 = localView4.findViewById(2131625749);
      View localView3 = localView4.findViewById(2131625750);
      localView4 = localView4.findViewById(2131625751);
      ((TextView)((View)localObject1).findViewById(2131625664)).setText(au.b(this.e.getNetLiquidation()));
      ((TextView)((View)localObject2).findViewById(2131625664)).setText(au.b(this.e.getMarketValue()));
      ((TextView)((View)localObject3).findViewById(2131625664)).setText(au.b(this.e.getAvailableFund()));
      ((TextView)localView1.findViewById(2131625664)).setText(au.b(this.e.getBuyPower()));
      ((TextView)((View)localObject4).findViewById(2131625664)).setText(au.b(this.e.getInitMargin()));
      ((TextView)localView2.findViewById(2131625664)).setText(au.b(this.e.getMaintMargin()));
      ((TextView)localView3.findViewById(2131625664)).setText(au.b(this.e.getSma()));
      ((TextView)localView4.findViewById(2131625664)).setText(au.b(this.e.getExcessLiquidity()));
      localObject2 = (TextView)c(2131625228);
      if (j.b(this.e.getUnrealizedPnlRate()) <= 0.0D) {
        break label478;
      }
      localObject1 = "+";
      label369:
      localObject3 = String.format("%s%.2f%%", new Object[] { localObject1, Double.valueOf(j.b(this.e.getUnrealizedPnlRate()) * 100.0D) });
      if (j.b(this.e.getUnrealizedPnl()) <= 0.0D) {
        break label485;
      }
    }
    label478:
    label485:
    for (Object localObject1 = "+";; localObject1 = "")
    {
      ((TextView)localObject2).setText(String.format("%s(%s)", new Object[] { String.format("%s%s", new Object[] { localObject1, au.b(this.e.getUnrealizedPnl()) }), localObject3 }));
      return;
      this.as = null;
      break;
      localObject1 = "";
      break label369;
    }
    label492:
    if (this.a.isFirstTrade())
    {
      ((TextView)localObject4).setText(au.b(this.e.getNetLiquidation()));
      ((TextView)((View)localObject1).findViewById(2131625664)).setText(au.b(this.e.getMarketValue()));
      ((TextView)((View)localObject2).findViewById(2131625664)).setText(au.b(this.e.getCashBalance()));
      ((TextView)((View)localObject3).findViewById(2131625664)).setText(au.b(this.e.getMarginBalance()));
      ((TextView)localView1.findViewById(2131625664)).setText(au.b(this.e.getMoneyLockedByPendingOrders()));
      localObject2 = c(2131625747);
      localObject1 = ((View)localObject2).findViewById(2131625748);
      localObject3 = ((View)localObject2).findViewById(2131625749);
      localView1 = ((View)localObject2).findViewById(2131625750);
      localObject2 = ((View)localObject2).findViewById(2131625751);
      ((TextView)((View)localObject1).findViewById(2131625664)).setText(au.b(this.e.getNonMarginBuyingPower()));
      ((TextView)((View)localObject3).findViewById(2131625664)).setText(au.b(this.e.getMarginBuyingPower()));
      ((TextView)localView1.findViewById(2131625664)).setText(au.b(this.e.getTotalIncomeBalance()));
      if (j.b(this.e.getTotalIncomeRate()) > 0.0D)
      {
        localObject1 = "+";
        localObject1 = String.format("%s%.2f%%", new Object[] { localObject1, Double.valueOf(j.b(this.e.getTotalIncomeRate()) * 100.0D) });
        ((TextView)((View)localObject2).findViewById(2131625664)).setText((CharSequence)localObject1);
        localObject2 = (TextView)c(2131625228);
        if (j.b(this.e.getDayIncomeRate()) <= 0.0D) {
          break label910;
        }
        localObject1 = "+";
        label802:
        localObject3 = String.format("%s%.2f%%", new Object[] { localObject1, Double.valueOf(j.b(this.e.getDayIncomeRate()) * 100.0D) });
        if (j.b(this.e.getDayIncomeBalance()) <= 0.0D) {
          break label917;
        }
      }
      label910:
      label917:
      for (localObject1 = "+";; localObject1 = "")
      {
        ((TextView)localObject2).setText(String.format("%s(%s)", new Object[] { String.format("%s%s", new Object[] { localObject1, au.b(this.e.getDayIncomeBalance()) }), localObject3 }));
        return;
        localObject1 = "";
        break;
        localObject1 = "";
        break label802;
      }
    }
    ((TextView)localObject4).setText(au.b(this.e.getAssetBalance()));
    ((TextView)((View)localObject1).findViewById(2131625664)).setText(au.b(this.e.getMarketValue()));
    ((TextView)((View)localObject3).findViewById(2131625664)).setText(au.b(this.e.getEnableBalance()));
    ((TextView)localView1.findViewById(2131625664)).setText(au.b(this.e.getFetchBalance()));
  }
  
  private void F()
  {
    if (this.d == null) {}
    TextView localTextView;
    do
    {
      return;
      localTextView = (TextView)c(2131625228);
    } while (this.a.isUSType());
    String str2;
    if (this.d.dayIncomeRate > 0.0D)
    {
      str1 = "+";
      str2 = String.format("%s%.2f%%", new Object[] { str1, Double.valueOf(this.d.dayIncomeRate * 100.0D) });
      if (this.d.dayIncomeBalance <= 0.0D) {
        break label172;
      }
    }
    label172:
    for (String str1 = "+";; str1 = "")
    {
      localTextView.setText(String.format("%s(%s)", new Object[] { String.format("%s%s", new Object[] { str1, au.b(this.d.dayIncomeBalance) }), str2 }));
      ((TextView)c(2131625596).findViewById(2131625664)).setText(au.b(this.d.totalIncomeBalance));
      return;
      str1 = "";
      break;
    }
  }
  
  private void G()
  {
    if (!j()) {}
    while ((this.h == null) || (this.b == null) || (this.T == null)) {
      return;
    }
    int j = this.T.getHeight();
    if (j == 0)
    {
      ag.d.a(new rx.c.a()
      {
        public final void a()
        {
          s.k(s.this);
        }
      }, 20L, TimeUnit.MILLISECONDS);
      return;
    }
    int k = this.c.f;
    int m = r.a().getDimensionPixelOffset(2131230993);
    int i;
    if (this.c.a() == null)
    {
      i = 0;
      int n = r.a().getDimensionPixelOffset(2131230992);
      int i1 = (int)ay.a(10.0F);
      int i2 = (k - 1) / 2;
      i = j - this.ak.getHeight() - ((i - k) * n + i2 * i1 + (k - i2) * m);
      j = r.a().getDimensionPixelOffset(2131230899);
      if (i >= j) {
        break label341;
      }
      i = j;
    }
    label341:
    for (;;)
    {
      this.h.getLayoutParams().height = i;
      this.c.notifyDataSetChanged();
      if (this.c.getCount() == 0)
      {
        ImageView localImageView = (ImageView)this.h.findViewById(2131624093);
        TextView localTextView = (TextView)this.h.findViewById(2131624334);
        localImageView.setVisibility(0);
        localTextView.setVisibility(0);
        localImageView.setImageDrawable(r.b(2130772089, g()));
        localTextView.setText(2131165502);
        ((ListView)this.b.getRefreshableView()).findViewById(2131625851).setBackgroundColor(r.a(2130772039, g()));
        return;
        i = this.c.a().size();
        break;
      }
      this.h.findViewById(2131624093).setVisibility(8);
      this.h.findViewById(2131624334).setVisibility(8);
      return;
    }
  }
  
  public static s a(TradeAccount paramTradeAccount, boolean paramBoolean)
  {
    s locals = new s();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("arg_broker", paramTradeAccount);
    localBundle.putBoolean("arg_visible", paramBoolean);
    locals.e(localBundle);
    return locals;
  }
  
  private void a(JsonObject paramJsonObject)
  {
    this.d = new v(this, (byte)0);
    if ((paramJsonObject.get("day_income_balance") != null) && (!paramJsonObject.get("day_income_balance").isJsonNull())) {
      this.d.dayIncomeBalance = paramJsonObject.get("day_income_balance").getAsDouble();
    }
    if ((paramJsonObject.get("day_income_rate") != null) && (!paramJsonObject.get("day_income_rate").isJsonNull())) {
      this.d.dayIncomeRate = paramJsonObject.get("day_income_rate").getAsDouble();
    }
    if ((paramJsonObject.get("total_income_balance") != null) && (!paramJsonObject.get("total_income_balance").isJsonNull())) {
      this.d.totalIncomeBalance = paramJsonObject.get("total_income_balance").getAsDouble();
    }
    F();
    UserPrefs.setString(f(), c("cache_key_income_data"), com.xueqiu.android.base.util.m.a().toJson(this.d));
  }
  
  private void a(com.xueqiu.android.base.a.a parama, int paramInt)
  {
    if (this.an == 0) {
      this.an = paramInt;
    }
    TradeAccount localTradeAccount;
    while (paramInt == this.an)
    {
      localTradeAccount = (TradeAccount)com.xueqiu.android.base.util.m.a().fromJson(parama.data, TradeAccount.class);
      localTradeAccount.setTradeBroker((TradeBroker)com.xueqiu.android.base.util.m.a().fromJson(parama.data, TradeBroker.class));
      if ((!this.f) || (com.xueqiu.android.base.u.a().g) || (!this.x)) {
        break;
      }
      a(parama, localTradeAccount);
      return;
    }
    return;
    this.am = new t(this, (byte)0);
    this.am.b = parama;
    this.am.a = localTradeAccount;
  }
  
  private void a(com.xueqiu.android.base.a.a parama, TradeAccount paramTradeAccount)
  {
    com.xueqiu.android.trade.c.a(parama.errorCode, paramTradeAccount, (com.xueqiu.android.common.b)g(), new d()
    {
      public final void a()
      {
        s.o(s.this);
        s.p(s.this);
      }
      
      public final void b()
      {
        s.p(s.this);
      }
    }).a(parama);
  }
  
  private void a(final SemiTradeAccount paramSemiTradeAccount)
  {
    final Object localObject;
    View localView1;
    TextView localTextView1;
    TextView localTextView2;
    View localView2;
    TextView localTextView3;
    TextView localTextView4;
    TextView localTextView5;
    final SemiTradeAccount.Status localStatus;
    if (((ListView)this.b.getRefreshableView()).findViewById(2131625640) == null)
    {
      localObject = LayoutInflater.from(f()).inflate(2130903519, (ViewGroup)this.b.getRefreshableView(), false);
      ((View)localObject).setVisibility(0);
      this.ak.addOnLayoutChangeListener(new View.OnLayoutChangeListener()
      {
        public final void onLayoutChange(View paramAnonymousView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3, int paramAnonymousInt4, int paramAnonymousInt5, int paramAnonymousInt6, int paramAnonymousInt7, int paramAnonymousInt8)
        {
          paramAnonymousInt1 = s.this.T.getHeight() - s.n(s.this).getHeight();
          paramAnonymousInt2 = r.a().getDimensionPixelOffset(2131230899) + localObject.getMeasuredHeight();
          if (paramAnonymousInt1 < paramAnonymousInt2) {
            paramAnonymousInt1 = paramAnonymousInt2;
          }
          for (;;)
          {
            localObject.getLayoutParams().height = paramAnonymousInt1;
            s.n(s.this).removeOnLayoutChangeListener(this);
            return;
          }
        }
      });
      ((ListView)this.b.getRefreshableView()).addHeaderView((View)localObject);
      this.ak.findViewById(2131625752).setVisibility(8);
      this.b.setPullToRefreshEnabled(false);
      ((View)localObject).findViewById(2131625648).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          com.xueqiu.android.common.q.a(com.xueqiu.android.base.v.b("/broker/tradeHome"), s.this.f());
        }
      });
      localView1 = ((View)localObject).findViewById(2131625642);
      localTextView1 = (TextView)localView1.findViewById(2131625643);
      localTextView2 = (TextView)localView1.findViewById(2131625644);
      localView2 = ((View)localObject).findViewById(2131625645);
      localTextView3 = (TextView)localView2.findViewById(2131625646);
      localTextView4 = (TextView)localView2.findViewById(2131625647);
      localTextView5 = (TextView)((View)localObject).findViewById(2131625641);
      localStatus = paramSemiTradeAccount.getStatus();
      if ((!"PINGAN".equals(this.a.getTid())) && (!"PAMID".equals(this.a.getTid()))) {
        break label439;
      }
      localTextView5.setText(paramSemiTradeAccount.getStatusTitle());
      localTextView1.setText(paramSemiTradeAccount.getStatusName());
      if (!com.xueqiu.android.base.b.a.c.a(paramSemiTradeAccount.getStatusMsg())) {
        break label409;
      }
      localTextView2.setVisibility(8);
      label272:
      if (localStatus != SemiTradeAccount.Status.PASSED) {
        break label421;
      }
      localView1.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          try
          {
            com.xueqiu.android.common.q.a(com.xueqiu.android.base.v.b("/broker/proxy?url=" + az.b(paramSemiTradeAccount.getOpeningUrl())), s.this.f());
            paramAnonymousView = new SNBEvent(1501, 3);
            paramAnonymousView.addProperty("status", String.valueOf(localStatus));
            paramAnonymousView.addProperty("tid", s.a(s.this).getTid());
            com.xueqiu.android.base.i.a().a(paramAnonymousView);
            return;
          }
          catch (UnsupportedEncodingException paramAnonymousView)
          {
            for (;;)
            {
              aa.a(paramAnonymousView);
            }
          }
        }
      });
      label295:
      if (localStatus == SemiTradeAccount.Status.PENDING) {
        localView1.setEnabled(true);
      }
      localView2.setVisibility(8);
      if (localStatus != SemiTradeAccount.Status.PASSED)
      {
        paramSemiTradeAccount = ((View)localObject).findViewById(2131625654);
        paramSemiTradeAccount.setVisibility(0);
        localObject = (TextView)paramSemiTradeAccount.findViewById(2131625656);
        ((ImageView)paramSemiTradeAccount.findViewById(2131625655)).setImageResource(2130838065);
        ((TextView)localObject).setText("平安开户常见问题");
        ((TextView)localObject).setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            com.xueqiu.android.common.q.a(this.a, s.this.f());
          }
        });
      }
    }
    label409:
    label421:
    label439:
    do
    {
      return;
      localObject = ((ListView)this.b.getRefreshableView()).findViewById(2131625640);
      break;
      localTextView2.setText(paramSemiTradeAccount.getStatusMsg());
      break label272;
      localView1.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = new SNBEvent(1501, 3);
          paramAnonymousView.addProperty("status", String.valueOf(localStatus));
          paramAnonymousView.addProperty("tid", s.a(s.this).getTid());
          com.xueqiu.android.base.i.a().a(paramAnonymousView);
          paramAnonymousView = new Intent(s.this.f(), KwlOpenActivity.class);
          paramAnonymousView.putExtra("extra_url", paramSemiTradeAccount.getOpeningUrl());
          s.this.a(paramAnonymousView);
        }
      });
      break label295;
      if ("IB".equals(this.a.getTid()))
      {
        if (localStatus == SemiTradeAccount.Status.PENDING)
        {
          localTextView5.setText(a(2131166339, new Object[] { this.a.getTradeBroker().getTraderName() }));
          localTextView1.setText(2131166346);
          localTextView2.setText(2131166337);
          localView1.setOnClickListener(new View.OnClickListener()
          {
            public final void onClick(View paramAnonymousView)
            {
              com.xueqiu.android.common.q.a(s.a(2, s.a(s.this).getAid()), s.this.f());
            }
          });
          localView2.setVisibility(8);
        }
        for (;;)
        {
          paramSemiTradeAccount = ((View)localObject).findViewById(2131625654);
          paramSemiTradeAccount.setVisibility(0);
          localObject = (TextView)paramSemiTradeAccount.findViewById(2131625656);
          ((ImageView)paramSemiTradeAccount.findViewById(2131625655)).setImageResource(2130838065);
          ((TextView)localObject).setText(2131165602);
          ((TextView)localObject).setOnClickListener(new View.OnClickListener()
          {
            public final void onClick(View paramAnonymousView)
            {
              com.xueqiu.android.common.q.a(this.a, s.this.f());
            }
          });
          return;
          if (localStatus == SemiTradeAccount.Status.REJECTED)
          {
            localTextView5.setText(2131166340);
            localTextView1.setText(2131166332);
            localTextView2.setText(2131166334);
            localTextView3.setText(2131166333);
            localTextView4.setText(2131166335);
            localView1.setOnClickListener(new View.OnClickListener()
            {
              public final void onClick(View paramAnonymousView)
              {
                com.xueqiu.android.common.q.a(s.a(1, s.a(s.this).getAid()), s.this.f());
              }
            });
            localView2.setOnClickListener(new View.OnClickListener()
            {
              public final void onClick(View paramAnonymousView)
              {
                com.xueqiu.android.common.q.a(s.b(s.a(s.this).getTid()), s.this.f());
              }
            });
          }
          else if (localStatus == SemiTradeAccount.Status.PASSED)
          {
            localTextView5.setText(2131166338);
            localTextView1.setText(2131166345);
            localTextView2.setText(2131166336);
            localView1.setOnClickListener(new View.OnClickListener()
            {
              public final void onClick(View paramAnonymousView)
              {
                com.xueqiu.android.common.q.a(s.a(3, s.a(s.this).getAid()), s.this.f());
              }
            });
            localView2.setVisibility(8);
          }
        }
      }
    } while (!this.a.isFirstTrade());
    localTextView5.setText(paramSemiTradeAccount.getStatusTitle());
    localTextView1.setText(paramSemiTradeAccount.getStatusName());
    if (com.xueqiu.android.base.b.a.c.a(paramSemiTradeAccount.getStatusMsg())) {
      localTextView2.setVisibility(8);
    }
    for (;;)
    {
      localView1.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          com.xueqiu.android.common.q.a(paramSemiTradeAccount.getOpeningUrl(), s.this.f());
        }
      });
      if (localStatus == SemiTradeAccount.Status.PENDING) {
        localView1.setEnabled(false);
      }
      localView2.setVisibility(8);
      paramSemiTradeAccount = ((View)localObject).findViewById(2131625654);
      paramSemiTradeAccount.setVisibility(0);
      localObject = (TextView)paramSemiTradeAccount.findViewById(2131625656);
      ((ImageView)paramSemiTradeAccount.findViewById(2131625655)).setImageResource(2130838065);
      ((TextView)localObject).setText(2131165534);
      ((TextView)localObject).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          com.xueqiu.android.common.q.a(String.format("%s/broker/more-functions?tid=%s", new Object[] { "https://xueqiu.com", s.a(s.this).getTid() }), s.this.f());
        }
      });
      return;
      localTextView2.setText(paramSemiTradeAccount.getStatusMsg());
    }
  }
  
  private String c(String paramString)
  {
    return String.format("%s%s", new Object[] { paramString, this.a.getAid() });
  }
  
  public final void C_()
  {
    if (this.am != null) {
      a(this.am.b, this.am.a);
    }
    D();
  }
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903385, paramViewGroup, false);
  }
  
  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    paramBundle = this.r;
    if (paramBundle != null)
    {
      this.a = ((TradeAccount)paramBundle.getParcelable("arg_broker"));
      this.f = paramBundle.getBoolean("arg_visible");
    }
    paramBundle = UserPrefs.getString(f(), c("cache_key_income_data"), "");
    if (!TextUtils.isEmpty(paramBundle)) {
      this.d = ((v)com.xueqiu.android.base.util.m.a().fromJson(paramBundle, v.class));
    }
    paramBundle = UserPrefs.getString(f(), c("cache_key_fund_info"), "");
    if (!TextUtils.isEmpty(paramBundle)) {
      this.e = ((AccountFundInfo)com.xueqiu.android.base.util.m.a().fromJson(paramBundle, AccountFundInfo.class));
    }
    Object localObject = UserPrefs.getString(f(), c("cache_key_positions"), "");
    paramBundle = new ArrayList();
    if (!TextUtils.isEmpty((CharSequence)localObject))
    {
      localObject = (ArrayList)com.xueqiu.android.base.util.m.a().fromJson((String)localObject, new TypeToken() {}.getType());
      if (localObject != null)
      {
        if ((this.a == null) || (!this.a.isUSType())) {
          break label345;
        }
        paramBundle.add(new SectionItem(2));
      }
    }
    for (;;)
    {
      paramBundle.addAll((Collection)localObject);
      localObject = UserPrefs.getString(f(), c("cache_key_repo_positions"), "");
      if (!TextUtils.isEmpty((CharSequence)localObject))
      {
        if (paramBundle.size() != 0) {
          paramBundle.add(new SectionItem(0));
        }
        localObject = (ArrayList)com.xueqiu.android.base.util.m.a().fromJson((String)localObject, new TypeToken() {}.getType());
        if (localObject != null)
        {
          paramBundle.add(new SectionItem(3));
          paramBundle.addAll((Collection)localObject);
        }
      }
      if (this.c == null) {
        this.c = new com.xueqiu.android.trade.a.m(f(), this.a.isUSType());
      }
      this.c.a(paramBundle);
      return;
      label345:
      paramBundle.add(new SectionItem(1));
    }
  }
  
  public final void a(View paramView, Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    Object localObject1;
    Object localObject2;
    label247:
    label297:
    label371:
    View localView2;
    View localView1;
    View localView3;
    View localView4;
    View localView5;
    View localView6;
    if (!au.a(this.a.getAid()))
    {
      paramBundle = new SNBEvent(1502, 0);
      paramBundle.addProperty("tid", this.a.getTid());
      com.xueqiu.android.base.i.a().a(paramBundle);
      this.b = ((PinnedSectionPullToRefreshListView)paramView.findViewById(2131624309));
      this.b.setShadowVisible(false);
      this.ak = LayoutInflater.from(f()).inflate(2130903550, null);
      if (SnowxTraderConfig.isIncomeOpen(this.a.getTid())) {
        this.ak.findViewById(2131625225).setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            com.xueqiu.android.common.q.a(String.format("%s/broker/analyze?aid=%s", new Object[] { "https://xueqiu.com", s.a(s.this).getAid() }), s.this.f());
          }
        });
      }
      localObject1 = (TextView)this.ak.findViewById(2131624860);
      this.ak.findViewById(2131625759).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          s.b(s.this);
        }
      });
      localObject2 = (TextView)this.ak.findViewById(2131625227);
      this.ao = ((AutoResizeTextView)this.ak.findViewById(2131625761));
      this.ap = ((LinearLayout)this.ak.findViewById(2131625760));
      this.ao.setMaxTextSize(13.0F);
      this.ao.setMinTextSize(10.0F);
      if (!au.a(this.a.getRealAccountId())) {
        break label1046;
      }
      paramBundle = "";
      if (!this.a.isIB()) {
        break label1070;
      }
      ((TextView)localObject1).setText(a(2131165757, new Object[] { this.a.getTradeBroker().getTraderName(), paramBundle }));
      ((TextView)localObject2).setText(2131166556);
      this.al = ((ImageView)this.ak.findViewById(2131624861));
      paramBundle = n.a().b();
      localObject1 = new o();
      com.d.a.b.f.a().a(this.a.getTradeBroker().getSmallTraderLogo(), this.al, paramBundle, (com.d.a.b.f.a)localObject1);
      com.xueqiu.android.base.b.a();
      if (!com.xueqiu.android.base.b.i()) {
        break label1166;
      }
      this.al.setAlpha(0.5F);
      localView2 = this.ak;
      localView1 = localView2.findViewById(2131625745);
      paramBundle = localView1.findViewById(2131625595);
      localObject1 = localView1.findViewById(2131625596);
      localObject2 = localView1.findViewById(2131625597);
      localView1 = localView1.findViewById(2131625746);
      if (!this.a.isIB()) {
        break label1177;
      }
      localView2 = localView2.findViewById(2131625747);
      localView3 = localView2.findViewById(2131625748);
      localView4 = localView2.findViewById(2131625749);
      localView5 = localView2.findViewById(2131625750);
      localView6 = localView2.findViewById(2131625751);
      ((TextView)paramBundle.findViewById(2131625457)).setText(2131165520);
      ((TextView)((View)localObject1).findViewById(2131625457)).setText(2131166367);
      ((TextView)((View)localObject2).findViewById(2131625457)).setText(2131165248);
      ((TextView)localView1.findViewById(2131625457)).setText(2131165272);
      localView2.setVisibility(0);
      ((TextView)localView3.findViewById(2131625457)).setText(2131165646);
      ((TextView)localView4.findViewById(2131625457)).setText(2131165730);
      ((TextView)localView5.findViewById(2131625457)).setText(2131166098);
      ((TextView)localView6.findViewById(2131625457)).setText(2131165522);
      label615:
      paramBundle = (ListView)this.b.getRefreshableView();
      paramBundle.addHeaderView(this.ak);
      if (this.c == null) {
        this.c = new com.xueqiu.android.trade.a.m(f(), this.a.isUSType());
      }
      paramBundle.setAdapter(this.c);
      if (this.a.isSuccessBondStatus())
      {
        this.g = paramView.findViewById(2131625274);
        this.h = LayoutInflater.from(f()).inflate(2130903526, paramBundle, false);
        this.h.setMinimumHeight(0);
        this.h.getLayoutParams().height = ((int)ay.a(f(), 1280.0F));
        this.h.findViewById(2131625656).setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            com.xueqiu.android.common.q.a(com.xueqiu.android.base.v.b("/broker/insurance/pingan"), s.this.f());
          }
        });
        paramBundle.addFooterView(LayoutInflater.from(f()).inflate(2130903590, paramBundle, false));
        paramBundle.addFooterView(this.h);
        paramBundle.setOnItemClickListener(this.au);
        paramBundle.setOnItemLongClickListener(this.av);
        c(2131625649).setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            paramAnonymousView = new SNBEvent(1502, 3);
            paramAnonymousView.addProperty("tid", s.a(s.this).getTid());
            com.xueqiu.android.base.i.a().a(paramAnonymousView);
            Object localObject1 = OrderFullActivity.a(s.this.g(), s.a(s.this), "BUY");
            paramAnonymousView = s.this.g();
            Object localObject2 = s.a(s.this);
            if ((localObject2 != null) && (((TradeAccount)localObject2).getTradeBroker() != null) && (((TradeAccount)localObject2).getTradeBroker().isSwitchExchangeMantaince()))
            {
              localObject2 = ((TradeAccount)localObject2).getTradeBroker().getSwitchExchangeMsg();
              localObject1 = com.xueqiu.android.common.widget.f.a((com.xueqiu.android.common.b)paramAnonymousView, new c.3(paramAnonymousView, (Intent)localObject1)).a("提示").b((String)localObject2);
              ((com.xueqiu.android.common.widget.f)localObject1).g = 17;
              ((com.xueqiu.android.common.widget.f)localObject1).a(false).c(paramAnonymousView.getString(2131165361)).show();
              return;
            }
            com.xueqiu.android.trade.c.a(paramAnonymousView, (Intent)localObject1, (TradeAccount)localObject2, null, false);
          }
        });
        c(2131625650).setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            com.xueqiu.android.common.q.a(String.format("%s/broker/orders?tid=%s", new Object[] { "https://xueqiu.com", s.a(s.this).getTid() }), s.this.f());
            paramAnonymousView = new SNBEvent(1502, 6);
            paramAnonymousView.addProperty("tid", s.a(s.this).getTid());
            com.xueqiu.android.base.i.a().a(paramAnonymousView);
          }
        });
        c(2131625651).setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            com.xueqiu.android.common.q.a(String.format("%s/broker/trade-history?tid=%s", new Object[] { "https://xueqiu.com", s.a(s.this).getTid() }), s.this.f());
            paramAnonymousView = new SNBEvent(1502, 2);
            paramAnonymousView.addProperty("tid", s.a(s.this).getTid());
            com.xueqiu.android.base.i.a().a(paramAnonymousView);
          }
        });
        paramView = c(2131625652);
        if (this.a.isUSType()) {
          break label1444;
        }
        paramView.setVisibility(0);
        c(2131625652).setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            com.xueqiu.android.common.q.a(String.format("%s/broker/transfer?tid=%s", new Object[] { "https://xueqiu.com", s.a(s.this).getTid() }), s.this.f());
            paramAnonymousView = new SNBEvent(1502, 4);
            paramAnonymousView.addProperty("tid", s.a(s.this).getTid());
            com.xueqiu.android.base.i.a().a(paramAnonymousView);
          }
        });
      }
    }
    for (;;)
    {
      paramView = (TextView)c(2131625653);
      if ("PAMID".equals(this.a.getTid()))
      {
        paramView.setText(2131166393);
        paramView.setVisibility(0);
        c(2131625650).setVisibility(8);
      }
      if ("DYZQ".equals(this.a.getTid()))
      {
        paramView.setText(2131166355);
        paramView.setVisibility(0);
      }
      paramView.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          com.xueqiu.android.common.q.a(String.format("%s/broker/more-functions?tid=%s", new Object[] { "https://xueqiu.com", s.a(s.this).getTid() }), s.this.f());
          paramAnonymousView = new SNBEvent(1502, 1);
          paramAnonymousView.addProperty("tid", s.a(s.this).getTid());
          com.xueqiu.android.base.i.a().a(paramAnonymousView);
        }
      });
      this.b.setOnRefreshListener(new com.xueqiu.android.common.widget.ptr.h()
      {
        public final void a()
        {
          s.c(s.this);
          s.d(s.this);
        }
      });
      C();
      return;
      paramBundle = new SNBEvent(1501, 0);
      paramBundle.addProperty("tid", this.a.getTid());
      com.xueqiu.android.base.i.a().a(paramBundle);
      break;
      label1046:
      paramBundle = String.format("(%s)", new Object[] { this.a.getRealAccountId() });
      break label247;
      label1070:
      if (this.a.isFirstTrade())
      {
        ((TextView)localObject1).setText(a(2131166354, new Object[] { this.a.getTradeBroker().getTraderName(), paramBundle }));
        ((TextView)localObject2).setText(2131166314);
        break label297;
      }
      ((TextView)localObject1).setText(a(2131166348, new Object[] { this.a.getTradeBroker().getTraderName(), paramBundle }));
      ((TextView)localObject2).setText(2131166314);
      break label297;
      label1166:
      this.al.setAlpha(1.0F);
      break label371;
      label1177:
      if (this.a.isFirstTrade())
      {
        localView2 = localView2.findViewById(2131625747);
        localView3 = localView2.findViewById(2131625748);
        localView4 = localView2.findViewById(2131625749);
        localView5 = localView2.findViewById(2131625750);
        localView6 = localView2.findViewById(2131625751);
        ((TextView)paramBundle.findViewById(2131625457)).setText(2131166367);
        ((TextView)((View)localObject1).findViewById(2131625457)).setText(2131165546);
        ((TextView)((View)localObject2).findViewById(2131625457)).setText(2131165547);
        ((TextView)localView1.findViewById(2131625457)).setText(2131165549);
        localView2.setVisibility(0);
        ((TextView)localView3.findViewById(2131625457)).setText(2131165550);
        ((TextView)localView4.findViewById(2131625457)).setText(2131165548);
        ((TextView)localView5.findViewById(2131625457)).setText(2131165551);
        ((TextView)localView6.findViewById(2131625457)).setText(2131165552);
        break label615;
      }
      ((TextView)paramBundle.findViewById(2131625457)).setText(2131166367);
      ((TextView)((View)localObject1).findViewById(2131625457)).setText(2131166418);
      ((TextView)((View)localObject2).findViewById(2131625457)).setText(2131166351);
      ((TextView)localView1.findViewById(2131625457)).setText(2131166353);
      break label615;
      label1444:
      paramView.setVisibility(8);
    }
  }
  
  public final void e()
  {
    super.e();
  }
  
  public final void o()
  {
    super.o();
    if ((!this.a.isSuccessBondStatus()) && (this.T != null) && (("PINGAN".equals(this.a.getTid())) || ("PAMID".equals(this.a.getTid())) || ("IB".equals(this.a.getTid())) || ("DYZQ".equals(this.a.getTid()))) && ((this.a instanceof SemiTradeAccount)))
    {
      final Object localObject = (SemiTradeAccount)this.a;
      if (((SemiTradeAccount)localObject).getStatus() != null) {
        a((SemiTradeAccount)localObject);
      }
      ai localai = x();
      String str1 = ((SemiTradeAccount)localObject).getTid();
      String str2 = ((SemiTradeAccount)localObject).getMobileId();
      localObject = new p(this)
      {
        public final void a(y paramAnonymousy)
        {
          aa.a(paramAnonymousy);
        }
      };
      localai.m.d(str1, str2, (p)localObject);
    }
    G();
  }
  
  public final TradeAccount u()
  {
    if (this.a != null) {
      return this.a;
    }
    return null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\c\s.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */