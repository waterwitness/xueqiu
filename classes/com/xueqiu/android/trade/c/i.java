package com.xueqiu.android.trade.c;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.support.v4.a.k;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import com.android.volley.y;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.b.q;
import com.xueqiu.android.base.storage.prefs.UserPrefs;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.ag;
import com.xueqiu.android.base.util.ar;
import com.xueqiu.android.base.util.au;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.base.util.m;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.common.widget.SNBPullToRefreshListView;
import com.xueqiu.android.common.widget.l;
import com.xueqiu.android.stock.SearchStockActivity;
import com.xueqiu.android.stock.model.Stock;
import com.xueqiu.android.stock.model.StockIncome;
import com.xueqiu.android.trade.TakingPositionActivity;
import com.xueqiu.android.trade.model.MarketIncome;
import com.xueqiu.android.trade.model.PerformanceGroup;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;

public final class i
  extends com.xueqiu.android.common.c
  implements l
{
  com.xueqiu.android.trade.a.c a = null;
  private View ak;
  private ArrayList<MarketIncome> al;
  private ArrayList<StockIncome> am;
  private View an;
  private int ao;
  private boolean ap = false;
  private AdapterView.OnItemClickListener aq = new AdapterView.OnItemClickListener()
  {
    public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
    {
      int i = ((ListView)i.d(i.this).getRefreshableView()).getHeaderViewsCount();
      if ((paramAnonymousInt - i >= i.m(i.this).getCount()) || (paramAnonymousInt - i < 0)) {}
      do
      {
        return;
        paramAnonymousAdapterView = (StockIncome)i.m(i.this).getItem(paramAnonymousInt - i);
      } while (TextUtils.isEmpty(paramAnonymousAdapterView.getSymbol()));
      paramAnonymousAdapterView = String.format("%s/performance/mobile/trans?symbol=%s&group_id=%s&isnew=1", new Object[] { "https://xueqiu.com", paramAnonymousAdapterView.getSymbol(), Long.valueOf(i.n(i.this).getId()) });
      paramAnonymousView = new Intent(i.this.g(), TakingPositionActivity.class);
      paramAnonymousView.putExtra("extra_url", paramAnonymousAdapterView);
      i.this.a(paramAnonymousView);
    }
  };
  private AdapterView.OnItemLongClickListener ar = new AdapterView.OnItemLongClickListener()
  {
    public final boolean onItemLongClick(AdapterView<?> paramAnonymousAdapterView, final View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
    {
      int i = ((ListView)i.d(i.this).getRefreshableView()).getHeaderViewsCount();
      if ((paramAnonymousInt - i >= i.m(i.this).getCount()) || (paramAnonymousInt - i < 0)) {
        return true;
      }
      paramAnonymousView = (StockIncome)i.m(i.this).getItem(paramAnonymousInt - i);
      final String str = paramAnonymousView.getSymbol();
      paramAnonymousAdapterView = new AlertDialog.Builder(i.this.f());
      paramAnonymousView = new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
        {
          if (paramAnonymous2Int == 0) {
            i.b(i.this, str);
          }
          if (paramAnonymous2Int == 1) {
            new AlertDialog.Builder(i.this.f()).setIcon(17301543).setTitle("删除持仓记录").setMessage(String.format("确认删除%s的所有持仓记录", new Object[] { paramAnonymousView.getName() })).setPositiveButton(2131166591, new DialogInterface.OnClickListener()
            {
              public final void onClick(DialogInterface paramAnonymous3DialogInterface, int paramAnonymous3Int)
              {
                i.c(i.this, i.11.1.this.a);
              }
            }).setNegativeButton(2131165768, null).show();
          }
        }
      };
      paramAnonymousAdapterView.setItems(new String[] { "交易", "删除" }, paramAnonymousView).show().setCanceledOnTouchOutside(true);
      return true;
    }
  };
  MarketIncome b;
  boolean c = false;
  private PerformanceGroup d = null;
  private int e = 1;
  private SNBPullToRefreshListView f = null;
  private View g;
  private View h;
  
  private void D()
  {
    if (this.b == null) {
      return;
    }
    Object localObject1 = au.b(this.b.getMarketValue());
    Object localObject2 = a(this.b.getDayFloatAmount());
    ((TextView)this.an.findViewById(2131625743)).setText((CharSequence)localObject1);
    ((TextView)this.an.findViewById(2131625744)).setText((CharSequence)localObject2);
    View localView2 = this.ak.findViewById(2131625745);
    localObject1 = localView2.findViewById(2131625595);
    localObject2 = localView2.findViewById(2131625596);
    View localView1 = localView2.findViewById(2131625597);
    localView2 = localView2.findViewById(2131625746);
    ((TextView)((View)localObject1).findViewById(2131625664)).setText(a(this.b.getFloatAmount()));
    ((TextView)((View)localObject2).findViewById(2131625664)).setText(b(this.b.getFloatRate()));
    ((TextView)localView1.findViewById(2131625664)).setText(a(this.b.getTotalAmount()));
    ((TextView)localView2.findViewById(2131625664)).setText(b(this.b.getTotalRate()));
    ((TextView)this.ak.findViewById(2131625315)).setText(String.format("%s-总市值(%s)", new Object[] { this.d.getName(), this.b.getSign() }));
    android.support.v4.content.r.a(f()).a(new Intent("com.xueqiu.android.action.stockColorChanged"));
  }
  
  private void E()
  {
    Object localObject = this.an.findViewById(2131625753);
    if (this.al == null) {
      ((View)localObject).setVisibility(8);
    }
    for (;;)
    {
      return;
      if (this.al.size() <= 0) {
        break;
      }
      ((View)localObject).setVisibility(0);
      localObject = (LinearLayout)this.an.findViewById(2131625755);
      ((LinearLayout)localObject).removeAllViews();
      int i = 0;
      while (i < this.al.size())
      {
        MarketIncome localMarketIncome = (MarketIncome)this.al.get(i);
        View localView = LayoutInflater.from(f()).inflate(2130903545, null);
        ((TextView)localView.findViewById(2131625666)).setText(String.format("%s(%s)", new Object[] { localMarketIncome.getName(), localMarketIncome.getSign() }));
        ((TextView)localView.findViewById(2131625669)).setText(au.b(localMarketIncome.getMarketValue()));
        ((TextView)localView.findViewById(2131625671)).setText(a(localMarketIncome.getFloatAmount()));
        ((TextView)localView.findViewById(2131625672)).setText(b(localMarketIncome.getFloatRate()));
        ((TextView)localView.findViewById(2131625673)).setText(a(localMarketIncome.getTotalAmount()));
        ((TextView)localView.findViewById(2131625674)).setText(b(localMarketIncome.getTotalRate()));
        ar localar = ar.a();
        int j = localar.a(localMarketIncome.getFloatAmount());
        int k = localar.a(localMarketIncome.getTotalAmount());
        ((TextView)localView.findViewById(2131625671)).setTextColor(j);
        ((TextView)localView.findViewById(2131625672)).setTextColor(j);
        ((TextView)localView.findViewById(2131625673)).setTextColor(k);
        ((TextView)localView.findViewById(2131625674)).setTextColor(k);
        if (i == this.al.size() - 1) {
          localView.findViewById(2131624443).setVisibility(8);
        }
        ((LinearLayout)localObject).addView(localView);
        i += 1;
      }
    }
    ((View)localObject).setVisibility(8);
  }
  
  private void F()
  {
    if (this.am == null) {
      return;
    }
    this.a.a(this.am);
    H();
  }
  
  private void G()
  {
    View localView = g().findViewById(2131625206);
    if (this.ap)
    {
      TypedArray localTypedArray = g().getTheme().obtainStyledAttributes(new int[] { 2130772182 });
      com.xueqiu.android.base.util.a.a(localView, h().getDrawable(localTypedArray.getResourceId(0, 0)));
      return;
    }
    localView.setBackgroundColor(0);
  }
  
  private void H()
  {
    if (!j()) {}
    while ((this.h == null) || (this.f == null) || (this.T == null)) {
      return;
    }
    int j = this.T.getHeight();
    if (j == 0)
    {
      ag.d.a(new rx.c.a()
      {
        public final void a()
        {
          i.l(i.this);
        }
      }, 20L, TimeUnit.MILLISECONDS);
      return;
    }
    int i;
    if (this.a.a() == null)
    {
      i = 0;
      int k = com.xueqiu.android.base.r.a().getDimensionPixelOffset(2131230992);
      i = j - this.ak.getHeight() - this.g.getHeight() - i * k;
      j = com.xueqiu.android.base.r.a().getDimensionPixelOffset(2131230898);
      if (i >= j) {
        break label323;
      }
      i = j;
    }
    label323:
    for (;;)
    {
      this.h.getLayoutParams().height = i;
      this.a.notifyDataSetChanged();
      if (this.a.getCount() == 0)
      {
        ImageView localImageView = (ImageView)this.h.findViewById(2131624093);
        TextView localTextView = (TextView)this.h.findViewById(2131624334);
        localImageView.setVisibility(0);
        localTextView.setVisibility(0);
        localImageView.setImageDrawable(com.xueqiu.android.base.r.b(2130772089, g()));
        localTextView.setText(2131165502);
        ((ListView)this.f.getRefreshableView()).findViewById(2131625851).setBackgroundColor(com.xueqiu.android.base.r.a(2130772039, g()));
        return;
        i = this.a.a().size();
        break;
      }
      this.h.findViewById(2131624093).setVisibility(8);
      this.h.findViewById(2131624334).setVisibility(8);
      ((ListView)this.f.getRefreshableView()).findViewById(2131625851).setBackgroundColor(com.xueqiu.android.base.r.a(2130772039, g()));
      return;
    }
  }
  
  public static i a(PerformanceGroup paramPerformanceGroup, int paramInt1, int paramInt2)
  {
    i locali = new i();
    locali.ao = paramInt1;
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("arg_performance_group", paramPerformanceGroup);
    localBundle.putInt("arg_group_count", paramInt2);
    locali.e(localBundle);
    return locali;
  }
  
  private static String a(float paramFloat)
  {
    if (paramFloat > 0.0F) {}
    for (String str = "+";; str = "") {
      return String.format("%s%s", new Object[] { str, au.b(paramFloat) });
    }
  }
  
  private static String b(float paramFloat)
  {
    if (paramFloat > 0.0F) {}
    for (String str = "+";; str = "") {
      return String.format("%s%.2f%%", new Object[] { str, Float.valueOf(100.0F * paramFloat) });
    }
  }
  
  private void b(String paramString)
  {
    paramString = String.format("%s/performance/mobile/trans/add?symbol=%s&group_id=%s&isnew=1", new Object[] { "https://xueqiu.com", paramString, Long.valueOf(this.d.getId()) });
    Intent localIntent = new Intent(g(), TakingPositionActivity.class);
    localIntent.putExtra("extra_url", paramString);
    a(localIntent);
  }
  
  private String c(String paramString)
  {
    return String.format("%s%s", new Object[] { paramString, Long.valueOf(this.d.getId()) });
  }
  
  public final void C()
  {
    if (!g().findViewById(2131625269).isSelected()) {
      return;
    }
    if (this.ap)
    {
      G();
      if (this.an.findViewById(2131625741) == null)
      {
        localObject = LayoutInflater.from(f()).inflate(2130903546, null);
        ((View)localObject).findViewById(2131625742).setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            paramAnonymousView = new Intent(i.this.g(), SearchStockActivity.class);
            i.this.F.F.a(paramAnonymousView, i.a(i.this));
            com.xueqiu.android.base.i.a().a(new SNBEvent(1513, 1));
          }
        });
        ((ViewGroup)this.an).addView((View)localObject);
      }
      localObject = new SNBEvent(1513, 0);
      ((SNBEvent)localObject).addProperty("type", "1");
      com.xueqiu.android.base.i.a().a((SNBEvent)localObject);
      return;
    }
    G();
    Object localObject = this.an.findViewById(2131625741);
    if (localObject != null) {
      ((ViewGroup)this.an).removeView((View)localObject);
    }
    localObject = new SNBEvent(1513, 0);
    ((SNBEvent)localObject).addProperty("type", "2");
    com.xueqiu.android.base.i.a().a((SNBEvent)localObject);
  }
  
  public final void C_() {}
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.an = paramLayoutInflater.inflate(2130903389, paramViewGroup, false);
    return this.an;
  }
  
  public final void a(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.a(paramInt1, paramInt2, paramIntent);
    if ((paramInt1 == this.ao) && (paramIntent != null))
    {
      paramIntent = (Stock)paramIntent.getParcelableExtra("extra_stock");
      if ((paramIntent != null) && (paramIntent.getCode() != null)) {
        b(paramIntent.getCode());
      }
    }
  }
  
  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    if (this.r != null)
    {
      this.d = ((PerformanceGroup)this.r.getParcelable("arg_performance_group"));
      this.e = this.r.getInt("arg_group_count");
    }
    paramBundle = UserPrefs.getString(f(), c("cache_key_total"), "");
    if (!TextUtils.isEmpty(paramBundle)) {
      this.b = ((MarketIncome)m.a().fromJson(paramBundle, MarketIncome.class));
    }
    paramBundle = UserPrefs.getString(f(), c("cache_key_market_income"), "");
    if (!TextUtils.isEmpty(paramBundle)) {
      this.al = ((ArrayList)m.a().fromJson(paramBundle, new TypeToken() {}.getType()));
    }
    paramBundle = UserPrefs.getString(f(), c("cache_key_stock_income"), "");
    if (!TextUtils.isEmpty(paramBundle))
    {
      this.am = ((ArrayList)m.a().fromJson(paramBundle, new TypeToken() {}.getType()));
      if (this.a == null) {
        this.a = new com.xueqiu.android.trade.a.c(f());
      }
    }
  }
  
  public final void a(View paramView, final Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    this.f = ((SNBPullToRefreshListView)paramView.findViewById(2131624309));
    this.ak = LayoutInflater.from(f()).inflate(2130903547, null);
    View localView3 = this.ak.findViewById(2131625745);
    paramBundle = localView3.findViewById(2131625595);
    View localView1 = localView3.findViewById(2131625596);
    View localView2 = localView3.findViewById(2131625597);
    localView3 = localView3.findViewById(2131625746);
    ((TextView)paramBundle.findViewById(2131625457)).setText("浮动盈亏额");
    ((TextView)localView1.findViewById(2131625457)).setText("浮动盈亏率");
    ((TextView)localView2.findViewById(2131625457)).setText("累计盈亏额");
    ((TextView)localView3.findViewById(2131625457)).setText("累计盈亏率");
    this.ak.findViewById(2131625742).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramAnonymousView = new Intent(i.this.g(), SearchStockActivity.class);
        i.this.F.F.a(paramAnonymousView, i.a(i.this));
        com.xueqiu.android.base.i.a().a(new SNBEvent(1513, 1));
      }
    });
    paramBundle = (ListView)this.f.getRefreshableView();
    paramBundle.addHeaderView(this.ak);
    if (this.a == null) {
      this.a = new com.xueqiu.android.trade.a.c(f());
    }
    paramBundle.setAdapter(this.a);
    this.g = paramView.findViewById(2131625274);
    paramBundle.addHeaderView(LayoutInflater.from(f()).inflate(2130903548, null));
    this.h = LayoutInflater.from(f()).inflate(2130903526, paramBundle, false);
    this.h.setMinimumHeight(0);
    this.h.getLayoutParams().height = ((int)ay.a(f(), 1280.0F));
    this.h.findViewById(2131625654).setVisibility(8);
    paramView = LayoutInflater.from(f()).inflate(2130903590, paramBundle, false);
    paramView.setBackgroundColor(h().getColor(2131558430));
    paramBundle.addFooterView(paramView);
    paramBundle.addFooterView(this.h);
    paramBundle.setOnScrollListener(new AbsListView.OnScrollListener()
    {
      public final void onScroll(AbsListView paramAnonymousAbsListView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        if (paramAnonymousInt1 >= paramBundle.getHeaderViewsCount() - 1)
        {
          i.b(i.this).setVisibility(0);
          return;
        }
        i.b(i.this).setVisibility(4);
      }
      
      public final void onScrollStateChanged(AbsListView paramAnonymousAbsListView, int paramAnonymousInt) {}
    });
    paramBundle.setOnItemClickListener(this.aq);
    paramBundle.setOnItemLongClickListener(this.ar);
    this.f.setOnRefreshListener(new com.xueqiu.android.common.widget.ptr.h()
    {
      public final void a()
      {
        i.c(i.this);
      }
    });
    D();
    E();
    F();
    this.f.k();
  }
  
  public final void e()
  {
    super.e();
  }
  
  public final void o()
  {
    super.o();
    H();
  }
  
  public final void u()
  {
    if ((this.f == null) || (this.f.j())) {
      return;
    }
    this.f.m();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\c\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */