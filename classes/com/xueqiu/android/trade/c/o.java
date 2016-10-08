package com.xueqiu.android.trade.c;

import android.annotation.TargetApi;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v4.a.ac;
import android.support.v4.a.k;
import android.support.v4.view.ViewPager;
import android.support.v4.view.bd;
import android.support.v4.view.cp;
import android.support.v7.internal.view.menu.ab;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import com.viewpagerindicator.CirclePageIndicator;
import com.xueqiu.android.base.storage.prefs.DefaultPrefs;
import com.xueqiu.android.base.storage.prefs.UserPrefs;
import com.xueqiu.android.base.t;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.ag;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.base.util.j;
import com.xueqiu.android.common.account.LoginActivity;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.common.widget.PinnedSectionPullToRefreshListView;
import com.xueqiu.android.common.widget.m;
import com.xueqiu.android.trade.TradeSecuritySettingActivity;
import com.xueqiu.android.trade.model.AccountFundInfo;
import com.xueqiu.android.trade.model.TradeAccount;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class o
  extends com.xueqiu.android.common.c
  implements com.xueqiu.android.common.d
{
  private CirclePageIndicator a = null;
  private long ak;
  private m al = null;
  private p am = null;
  private View an;
  private com.xueqiu.android.common.widget.n ao = new com.xueqiu.android.common.widget.n()
  {
    public final boolean a(MenuItem paramAnonymousMenuItem)
    {
      o.m(o.this).c.c();
      if (paramAnonymousMenuItem.getItemId() == 2131625864)
      {
        com.xueqiu.android.common.q.a(com.xueqiu.android.base.v.b("/broker/config"), o.this.f());
        return true;
      }
      if (paramAnonymousMenuItem.getItemId() == 2131625866)
      {
        com.xueqiu.android.common.q.a(com.xueqiu.android.base.v.b("/broker/coupon/coupon-list"), o.this.f());
        return true;
      }
      if (paramAnonymousMenuItem.getItemId() == 2131625865)
      {
        o.this.a(new Intent(o.this.f(), TradeSecuritySettingActivity.class));
        return true;
      }
      if (paramAnonymousMenuItem.getItemId() == 2131623946)
      {
        com.xueqiu.android.common.q.a(com.xueqiu.android.base.v.b("/broker/trade/qa"), o.this.f());
        return true;
      }
      return false;
    }
  };
  private ViewPager b = null;
  private ArrayList<TradeAccount> c = null;
  private int d = 0;
  private int e = 0;
  private int f = 0;
  private s[] g = null;
  private boolean h = false;
  
  private void C()
  {
    if ((this.g == null) || (this.g.length <= 0) || (i() == null) || (i().d() == null)) {}
    for (;;)
    {
      ag.d.a(new rx.c.a()
      {
        public final void a()
        {
          o.i(o.this);
          o.b(o.this).getAdapter().d();
        }
      });
      return;
      ac localac = i().a();
      Iterator localIterator = i().d().iterator();
      while (localIterator.hasNext())
      {
        android.support.v4.a.i locali = (android.support.v4.a.i)localIterator.next();
        if ((locali != null) && ((locali instanceof s))) {
          localac.b(locali);
        }
      }
      localac.e();
    }
  }
  
  private void D()
  {
    if (PreferenceManager.getDefaultSharedPreferences(f()).getString(f().getString(2131165678), f().getString(2131166576)).equals(f().getString(2131166576)))
    {
      this.d = 2130838385;
      this.e = 2130838386;
    }
    for (;;)
    {
      this.f = 2130838383;
      return;
      this.e = 2130838385;
      this.d = 2130838386;
    }
  }
  
  private void E()
  {
    boolean bool;
    final Object localObject2;
    if ((this.c == null) || (this.c.size() == 0))
    {
      bool = true;
      this.h = bool;
      if (!this.h) {
        break label208;
      }
      if (this.an.findViewById(2131624041) == null)
      {
        localObject2 = new FrameLayout(f());
        ((FrameLayout)localObject2).setId(2131624041);
        if (i().a("new_account_fragment_tag") == null) {
          break label183;
        }
        localObject1 = i().a("new_account_fragment_tag");
        label85:
        ac localac = i().a();
        localac.b(2131624041, (android.support.v4.a.i)localObject1, "new_account_fragment_tag");
        localac.e();
        if (this.an.findViewById(2131623959) == null) {
          break label194;
        }
        ((ViewGroup)this.an).addView((View)localObject2, ((ViewGroup)this.an).getChildCount() - 1);
      }
    }
    for (;;)
    {
      if (com.xueqiu.android.trade.patternlock.d.b(f()))
      {
        DefaultPrefs.remove("pref_key_pattern_sha1", f());
        UserPrefs.setBoolean(f(), a(2131165665), false);
      }
      return;
      bool = false;
      break;
      label183:
      localObject1 = com.xueqiu.android.base.h5.c.a("broker/tradeHome", null, true);
      break label85;
      label194:
      ((ViewGroup)this.an).addView((View)localObject2);
    }
    label208:
    final Object localObject1 = this.an.findViewById(2131624041);
    if (localObject1 != null)
    {
      localObject2 = i().a("new_account_fragment_tag");
      if (localObject2 != null) {
        ag.d.a(new rx.c.a()
        {
          public final void a()
          {
            ((ViewGroup)o.l(o.this)).removeView(localObject1);
            ac localac = o.this.i().a();
            localac.b(localObject2);
            localac.e();
          }
        });
      }
      H();
    }
    I();
    J();
  }
  
  private void F()
  {
    FrameLayout localFrameLayout = new FrameLayout(f());
    localFrameLayout.setId(2131623959);
    localFrameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
    Object localObject1 = i();
    ac localac = ((android.support.v4.a.q)localObject1).a();
    Object localObject2 = (com.xueqiu.android.trade.patternlock.b)((android.support.v4.a.q)localObject1).a("pattern_fragment_tag");
    localObject1 = localObject2;
    if (localObject2 == null)
    {
      localObject2 = a(2131166350);
      localObject1 = new com.xueqiu.android.trade.patternlock.b();
      Bundle localBundle = new Bundle();
      localBundle.putString("arg_desc", (String)localObject2);
      ((com.xueqiu.android.trade.patternlock.b)localObject1).e(localBundle);
      localac.a(localFrameLayout.getId(), (android.support.v4.a.i)localObject1, "pattern_fragment_tag");
      localac.e();
    }
    ((com.xueqiu.android.trade.patternlock.b)localObject1).d = new com.xueqiu.android.trade.patternlock.c()
    {
      public final void a()
      {
        u.a().g = false;
        o.j(o.this);
        if ((o.g(o.this) != null) && (o.g(o.this).length > 0))
        {
          s locals = o.g(o.this)[o.b(o.this).getCurrentItem()];
          if ((locals != null) && (locals.j())) {
            locals.C_();
          }
        }
      }
      
      public final void a(boolean paramAnonymousBoolean)
      {
        if (!paramAnonymousBoolean) {
          o.k(o.this);
        }
      }
    };
    ((ViewGroup)this.an).addView(localFrameLayout);
  }
  
  private void G()
  {
    H();
    ((ViewGroup)this.an).removeView(this.an.findViewById(2131623959));
    android.support.v4.a.q localq = i();
    ac localac = localq.a();
    localac.b((com.xueqiu.android.trade.patternlock.b)localq.a("pattern_fragment_tag"));
    localac.e();
  }
  
  private void H()
  {
    View localView = g().findViewById(2131625268);
    if ((localView == null) || (!localView.isSelected())) {
      return;
    }
    localView = g().findViewById(2131625206);
    if ((u.a().g) || (this.h))
    {
      TypedArray localTypedArray = g().getTheme().obtainStyledAttributes(new int[] { 2130772182 });
      com.xueqiu.android.base.util.a.a(localView, h().getDrawable(localTypedArray.getResourceId(0, 0)));
      return;
    }
    localView.setBackgroundColor(0);
  }
  
  @TargetApi(14)
  private void I()
  {
    final Object localObject = this.F;
    if (!(localObject instanceof n)) {
      return;
    }
    localObject = ((android.support.v4.a.i)localObject).T.findViewById(2131624501);
    ((View)localObject).setVisibility(0);
    ((View)localObject).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        com.xueqiu.android.base.util.b.a(o.this.f(), 2131166527);
        o.a(o.this, new m(o.this.f(), localObject));
        paramAnonymousView = o.m(o.this);
        new android.support.v7.internal.view.d(paramAnonymousView.a).inflate(2131689476, paramAnonymousView.b);
        o.m(o.this).d = o.n(o.this);
        o.m(o.this).c.a();
        com.xueqiu.android.base.i.a().a(new SNBEvent(1502, 5));
      }
    });
  }
  
  private void J()
  {
    if (this.b.getCurrentItem() >= this.c.size()) {}
    View localView;
    for (int i = this.c.size() - 1;; i = this.b.getCurrentItem())
    {
      TradeAccount localTradeAccount = (TradeAccount)this.c.get(i);
      localView = this.F.T.findViewById(2131625270);
      if ((localTradeAccount.isIB()) || (!localTradeAccount.isSuccessBondStatus())) {
        break;
      }
      localView.setVisibility(0);
      localView.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          if ((o.g(o.this) == null) || (o.g(o.this).length == 0)) {}
          do
          {
            do
            {
              return;
              paramAnonymousView = o.g(o.this)[o.b(o.this).getCurrentItem()];
            } while ((paramAnonymousView == null) || (!paramAnonymousView.j()) || (!(paramAnonymousView instanceof s)));
            paramAnonymousView = ((s)paramAnonymousView).u();
          } while (paramAnonymousView == null);
          com.xueqiu.android.common.q.a(String.format("%s/broker/share/trade-share?tid=%s&aid=%s", new Object[] { "https://xueqiu.com", paramAnonymousView.getTid(), paramAnonymousView.getAid() }), o.this.g());
        }
      });
      return;
    }
    localView.setVisibility(4);
  }
  
  private void b(int paramInt)
  {
    if ((this.g == null) || (this.g.length == 0)) {}
    label269:
    label289:
    for (;;)
    {
      return;
      Object localObject = this.g[paramInt];
      if ((localObject != null) && (((android.support.v4.a.i)localObject).j()) && ((localObject instanceof s)))
      {
        localObject = (s)localObject;
        double d1;
        if (((s)localObject).a.isIB()) {
          if (((s)localObject).e == null)
          {
            d1 = 0.0D;
            if (d1 <= 0.0D) {
              break label269;
            }
            paramInt = this.d;
          }
        }
        for (;;)
        {
          if ((this.T == null) || (this.T.findViewById(2131624117) == null)) {
            break label289;
          }
          localObject = new LayerDrawable(new Drawable[] { h().getDrawable(paramInt), h().getDrawable(2130837773) });
          com.xueqiu.android.base.b.a();
          if (!com.xueqiu.android.base.b.i()) {
            break label291;
          }
          this.T.findViewById(2131624117).setBackgroundDrawable((Drawable)localObject);
          this.T.findViewById(2131624117).setPadding(0, (int)ay.a(48.0F), 0, 0);
          return;
          d1 = j.b(((s)localObject).e.getUnrealizedPnl());
          break;
          if (((s)localObject).a.isFirstTrade())
          {
            if (((s)localObject).e == null)
            {
              d1 = 0.0D;
              break;
            }
            d1 = j.b(((s)localObject).e.getDayIncomeBalance());
            break;
          }
          if (((s)localObject).d == null)
          {
            d1 = 0.0D;
            break;
          }
          d1 = ((s)localObject).d.dayIncomeBalance;
          break;
          if (d1 < 0.0D) {
            paramInt = this.e;
          } else {
            paramInt = this.f;
          }
        }
      }
    }
    label291:
    this.T.findViewById(2131624117).setBackgroundResource(paramInt);
  }
  
  private static boolean b(List<TradeAccount> paramList1, List<TradeAccount> paramList2)
  {
    if ((paramList1 == null) || (paramList2 == null) || (paramList1.size() != paramList2.size())) {
      return false;
    }
    paramList1 = paramList1.iterator();
    label104:
    label145:
    label171:
    label175:
    label179:
    label183:
    for (;;)
    {
      int j;
      if (paramList1.hasNext())
      {
        TradeAccount localTradeAccount1 = (TradeAccount)paramList1.next();
        Iterator localIterator = paramList2.iterator();
        if (!localIterator.hasNext()) {
          break label179;
        }
        TradeAccount localTradeAccount2 = (TradeAccount)localIterator.next();
        if ((localTradeAccount2.getTid() != null) && (localTradeAccount2.getTid().equals(localTradeAccount1.getTid())))
        {
          i = 1;
          if (((localTradeAccount2.getAid() != null) || (localTradeAccount1.getAid() != null)) && ((localTradeAccount2.getAid() == null) || (!localTradeAccount2.getAid().equals(localTradeAccount1.getAid())))) {
            break label171;
          }
          j = 1;
          if ((i == 0) || (j == 0)) {
            break label175;
          }
        }
      }
      for (int i = 1;; i = 0)
      {
        if (i != 0) {
          break label183;
        }
        return false;
        i = 0;
        break label104;
        j = 0;
        break label145;
        break;
        return true;
      }
    }
  }
  
  private void e(int paramInt)
  {
    if ((this.g == null) || (this.g.length == 0)) {
      return;
    }
    int i = 0;
    label18:
    s locals;
    if (i < this.g.length)
    {
      locals = this.g[i];
      if (locals != null) {
        if (paramInt != i) {
          break label59;
        }
      }
    }
    label59:
    for (boolean bool = true;; bool = false)
    {
      locals.f = bool;
      i += 1;
      break label18;
      break;
    }
  }
  
  private void logout()
  {
    new AlertDialog.Builder(g()).setPositiveButton(com.xueqiu.android.base.r.d(2131165913), new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        u.a().logout();
        paramAnonymousDialogInterface = new Bundle();
        paramAnonymousDialogInterface.putByte("extra_mode", (byte)2);
        paramAnonymousDialogInterface.putBoolean("extra_need_back", true);
        Intent localIntent = new Intent(o.this.g(), LoginActivity.class);
        localIntent.putExtras(paramAnonymousDialogInterface);
        o.this.g().startActivity(localIntent);
        o.this.g().finish();
      }
    }).setMessage(com.xueqiu.android.base.r.d(2131165786)).create().show();
  }
  
  private void u()
  {
    if (this.am == null) {
      this.am = new p(this, i());
    }
    if (this.c == null) {
      this.c = new ArrayList();
    }
    this.g = new s[this.c.size()];
    this.am.b = this.c;
    this.b.setAdapter(this.am);
    this.b.setOffscreenPageLimit(this.c.size());
    this.a.setViewPager(this.b);
    this.a.setRadius(6.0F);
    this.a.setCentered(true);
    this.a.setOnPageChangeListener(new cp()
    {
      public final void a(int paramAnonymousInt1, float paramAnonymousFloat, int paramAnonymousInt2) {}
      
      public final void b(int paramAnonymousInt) {}
      
      public final void b_(int paramAnonymousInt)
      {
        s locals = o.g(o.this)[paramAnonymousInt];
        if ((locals != null) && (locals.j()))
        {
          locals.C_();
          if (locals.u() != null) {
            UserPrefs.setCurrentTradeAccountTid(locals.u().getTid());
          }
        }
        o.a(o.this, paramAnonymousInt);
        o.b(o.this, paramAnonymousInt);
        o.h(o.this);
      }
    });
    if (this.c.size() > 0)
    {
      if (this.c.size() != 1) {
        break label187;
      }
      this.a.setVisibility(4);
    }
    for (;;)
    {
      b(this.b.getCurrentItem());
      e(this.b.getCurrentItem());
      return;
      label187:
      this.a.setVisibility(0);
    }
  }
  
  public final void B_()
  {
    if ((this.g == null) || (this.g.length == 0) || (this.b == null)) {}
    s locals;
    do
    {
      return;
      locals = this.g[this.b.getCurrentItem()];
    } while ((locals == null) || (!locals.j()) || (locals.b == null) || (locals.b.j()) || (!locals.a.isSuccessBondStatus()));
    locals.b.m();
  }
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    d(2131166177);
    e_(true);
    if (this.an == null)
    {
      this.an = paramLayoutInflater.inflate(2130903380, paramViewGroup, false);
      if (u.a().g) {
        F();
      }
    }
    return this.an;
  }
  
  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    a(rx.a.b.a.b(f(), new IntentFilter("com.xueqiu.android.action.stockColorChanged")).c(new rx.c.b() {}));
    a(rx.a.b.a.b(f(), new IntentFilter("com.xueqiu.android.action.tradeViewRefreshBg")).c(new rx.c.b() {}));
    paramBundle = new IntentFilter();
    paramBundle.addAction("com.xueqiu.android.intent.action.USER_OFFLINE");
    paramBundle.addAction("com.xueqiu.android.intent.action.USER_ONLINE");
    a(rx.a.b.a.b(f(), paramBundle).c(new rx.c.b() {}));
    a(rx.a.a.a.a(g(), com.xueqiu.android.message.client.c.m).c(new rx.c.b() {}));
  }
  
  public final void a(View paramView, Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    D();
    this.a = ((CirclePageIndicator)this.an.findViewById(2131625256));
    this.b = ((ViewPager)this.an.findViewById(2131624310));
    int j = 0;
    paramView = UserPrefs.getBoundBrokers();
    int i = j;
    if (this.c != null)
    {
      i = j;
      if (this.c.size() > 0)
      {
        i = j;
        if (!b(this.c, paramView)) {
          i = 1;
        }
      }
    }
    this.c = UserPrefs.getBoundBrokers();
    if (i != 0) {
      C();
    }
    for (;;)
    {
      E();
      if ((this.c != null) && (this.c.size() > 0) && (!this.J))
      {
        I();
        J();
      }
      H();
      if ((this.c == null) || (this.c.size() == 0))
      {
        com.xueqiu.android.base.b.a();
        android.support.v4.content.r.a(com.xueqiu.android.base.b.d()).a(new Intent("com.xueqiu.android.action.updateBrokerList"));
      }
      return;
      u();
    }
  }
  
  public final void c_(boolean paramBoolean)
  {
    super.c_(paramBoolean);
    if ((paramBoolean) || (this.c == null) || (this.c.size() == 0))
    {
      android.support.v4.a.i locali = this.F;
      if ((locali instanceof n)) {
        locali.T.findViewById(2131624501).setVisibility(4);
      }
      locali = this.F;
      if ((locali instanceof n)) {
        locali.T.findViewById(2131625270).setVisibility(4);
      }
    }
    for (;;)
    {
      if (!paramBoolean) {
        H();
      }
      return;
      I();
      J();
    }
  }
  
  public final void o()
  {
    super.o();
    if ((!com.xueqiu.android.trade.patternlock.d.b(f())) && (this.an.findViewById(2131623959) != null)) {
      G();
    }
    if (this.b != null) {
      this.b.post(new Runnable()
      {
        public final void run()
        {
          if ((o.g(o.this) != null) && (o.g(o.this).length != 0))
          {
            String str1 = UserPrefs.getCurrentTradeAccountTid();
            String str2 = UserPrefs.getCurrentJumpAccountTid();
            int i = 0;
            if (i < o.g(o.this).length)
            {
              Object localObject = o.g(o.this)[i];
              if (localObject != null)
              {
                localObject = ((s)localObject).u();
                if ((localObject == null) || (!TextUtils.equals(str2, ((TradeAccount)localObject).getTid()))) {
                  break label105;
                }
                o.b(o.this).a(i, false);
                UserPrefs.clearCurrentJumpAccountTid();
              }
              for (;;)
              {
                i += 1;
                break;
                label105:
                if ((localObject != null) && (TextUtils.equals(str1, ((TradeAccount)localObject).getTid()))) {
                  o.b(o.this).a(i, false);
                }
              }
            }
          }
        }
      });
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\c\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */