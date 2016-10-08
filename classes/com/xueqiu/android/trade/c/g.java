package com.xueqiu.android.trade.c;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v4.view.ViewPager;
import android.support.v4.view.cp;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.android.volley.y;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.reflect.TypeToken;
import com.viewpagerindicator.CirclePageIndicator;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.ak;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.storage.prefs.UserPrefs;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.base.util.m;
import com.xueqiu.android.common.c;
import com.xueqiu.android.common.d;
import com.xueqiu.android.trade.model.MarketIncome;
import com.xueqiu.android.trade.model.PerformanceGroup;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class g
  extends c
  implements d
{
  private CirclePageIndicator a = null;
  private h ak = null;
  private ViewPager b = null;
  private ArrayList<PerformanceGroup> c = null;
  private int d = 0;
  private int e = 0;
  private int f = 0;
  private i[] g = null;
  private View h;
  
  private void b(int paramInt)
  {
    if ((this.g == null) || (this.g.length == 0)) {}
    label192:
    label212:
    for (;;)
    {
      return;
      Object localObject = this.g[paramInt];
      if ((localObject != null) && (((android.support.v4.a.i)localObject).j()) && ((localObject instanceof i)))
      {
        localObject = (i)localObject;
        float f1;
        double d1;
        if (((i)localObject).b != null)
        {
          f1 = ((i)localObject).b.getDayFloatAmount();
          d1 = f1;
          if (d1 <= 0.0D) {
            break label192;
          }
          paramInt = this.d;
        }
        for (;;)
        {
          if ((this.T == null) || (this.T.findViewById(2131624117) == null)) {
            break label212;
          }
          localObject = new LayerDrawable(new Drawable[] { h().getDrawable(paramInt), h().getDrawable(2130837773) });
          com.xueqiu.android.base.b.a();
          if (!com.xueqiu.android.base.b.i()) {
            break label214;
          }
          this.T.findViewById(2131624117).setBackgroundDrawable((Drawable)localObject);
          this.T.findViewById(2131624117).setPadding(0, (int)ay.a(48.0F), 0, 0);
          return;
          f1 = 0.0F;
          break;
          if (d1 < 0.0D) {
            paramInt = this.e;
          } else {
            paramInt = this.f;
          }
        }
      }
    }
    label214:
    this.T.findViewById(2131624117).setBackgroundResource(paramInt);
  }
  
  private void e(int paramInt)
  {
    if ((this.g == null) || (this.g.length == 0)) {
      return;
    }
    int i = 0;
    label18:
    i locali;
    if (i < this.g.length)
    {
      locali = this.g[i];
      if (locali != null) {
        if (paramInt != i) {
          break label59;
        }
      }
    }
    label59:
    for (boolean bool = true;; bool = false)
    {
      locali.c = bool;
      i += 1;
      break label18;
      break;
    }
  }
  
  private void u()
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
  
  public final void B_()
  {
    if ((this.g == null) || (this.g.length == 0) || (this.b == null)) {}
    i locali;
    do
    {
      return;
      locali = this.g[this.b.getCurrentItem()];
    } while ((locali == null) || (!locali.j()));
    locali.u();
  }
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    e_(true);
    this.h = paramLayoutInflater.inflate(2130903388, paramViewGroup, false);
    return this.h;
  }
  
  public final void a(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.a(paramInt1, paramInt2, paramIntent);
    Object localObject = i().d();
    if (localObject != null)
    {
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        ((android.support.v4.a.i)((Iterator)localObject).next()).a(paramInt1, paramInt2, paramIntent);
      }
    }
  }
  
  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    a(rx.a.b.a.b(f(), new IntentFilter("com.xueqiu.android.action.performanceTransAdded")).c(new rx.c.b() {}));
    a(rx.a.b.a.b(f(), new IntentFilter("com.xueqiu.android.action.stockColorChanged")).c(new rx.c.b() {}));
  }
  
  public final void a(View paramView, Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    u();
    if ((this.c == null) || (this.c.size() == 0))
    {
      if ((this.c == null) || (this.c.size() == 0)) {
        y();
      }
      paramView = x();
      paramBundle = new p(this)
      {
        public final void a(y paramAnonymousy)
        {
          aa.a(paramAnonymousy);
          g.this.z();
          paramAnonymousy = UserPrefs.getString(g.this.f(), "cachePerformanceGroups", "");
          if (!TextUtils.isEmpty(paramAnonymousy))
          {
            paramAnonymousy = (ArrayList)m.a().fromJson(paramAnonymousy, new TypeToken() {}.getType());
            g.a(g.this, paramAnonymousy);
            g.c(g.this);
          }
        }
      };
      paramView.i.c(paramBundle);
    }
    this.a = ((CirclePageIndicator)this.h.findViewById(2131625256));
    this.b = ((ViewPager)this.h.findViewById(2131624310));
    if (this.c == null) {
      this.c = new ArrayList();
    }
    if (this.ak == null) {
      this.ak = new h(this, i());
    }
    this.b.setAdapter(this.ak);
    this.a.setViewPager(this.b);
    this.a.setRadius(6.0F);
    this.a.setCentered(true);
    this.a.setOnPageChangeListener(new cp()
    {
      public final void a(int paramAnonymousInt1, float paramAnonymousFloat, int paramAnonymousInt2) {}
      
      public final void b(int paramAnonymousInt) {}
      
      public final void b_(int paramAnonymousInt)
      {
        i locali = g.b(g.this)[paramAnonymousInt];
        if (locali != null) {
          locali.j();
        }
        g.a(g.this, paramAnonymousInt);
        g.b(g.this, paramAnonymousInt);
      }
    });
    if (this.c.size() > 0)
    {
      if (this.c.size() != 1) {
        break label255;
      }
      this.a.setVisibility(4);
    }
    for (;;)
    {
      b(this.b.getCurrentItem());
      e(this.b.getCurrentItem());
      return;
      label255:
      this.a.setVisibility(0);
      this.a.setCurrentItem(0);
    }
  }
  
  public final void c_(boolean paramBoolean)
  {
    super.c_(paramBoolean);
    if ((!paramBoolean) && (this.c.size() > 0) && (this.g[0] != null)) {
      this.g[0].C();
    }
  }
  
  public final void o()
  {
    super.o();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\c\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */