package com.xueqiu.android.stock.c;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.a.ac;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.android.volley.y;
import com.google.gson.JsonObject;
import com.xueqiu.android.base.a.a;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.h;
import com.xueqiu.android.base.storage.prefs.UserPrefs;
import com.xueqiu.android.base.t;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.base.util.r;
import com.xueqiu.android.common.MainActivity;
import com.xueqiu.android.common.d;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.common.search.USearchActivity;
import com.xueqiu.android.common.widget.f;
import com.xueqiu.android.common.widget.g;
import com.xueqiu.android.cube.CreateCubeActivity;
import com.xueqiu.android.cube.CubeActivity;
import com.xueqiu.android.cube.model.Cube;
import com.xueqiu.android.message.RecentTalkActivity;
import com.xueqiu.android.stock.StockSettingActivity;

public class m
  extends com.xueqiu.android.common.c
  implements d
{
  int a = 2;
  private View ak;
  private Handler al = new Handler();
  private View.OnClickListener am = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      if (paramAnonymousView.getId() == 2131625217) {
        if (u.a().d)
        {
          t.a(m.this.g(), false);
          com.xueqiu.android.base.i.a().a(new SNBEvent(1400, 2));
        }
      }
      label147:
      do
      {
        do
        {
          return;
          m.c(m.this);
          break;
          if (paramAnonymousView.getId() == 2131623956)
          {
            m.this.a(new Intent(m.this.f(), USearchActivity.class), 2130968592, 2130968584);
            com.xueqiu.android.base.i.a().a(new SNBEvent(1400, 1));
            return;
          }
          if (paramAnonymousView.getId() != 2131625128) {
            break label147;
          }
        } while (!(m.this.g() instanceof MainActivity));
        ((MainActivity)m.this.g()).k();
        return;
        if (paramAnonymousView.getId() == 2131623952)
        {
          m.this.a(new Intent(m.this.f(), StockSettingActivity.class));
          return;
        }
        if (paramAnonymousView.getId() == 2131625218)
        {
          m.d(m.this);
          return;
        }
        if (paramAnonymousView.getId() == 2131625219)
        {
          paramAnonymousView = new Intent(m.this.f(), CreateCubeActivity.class);
          m.this.a(paramAnonymousView);
          m.d(m.this);
          return;
        }
      } while (paramAnonymousView.getId() != 2131625220);
      m.d(m.this);
      paramAnonymousView = com.xueqiu.android.base.q.a().b();
      p local1 = new p()
      {
        public final void a(y paramAnonymous2y)
        {
          Object localObject = null;
          if ((paramAnonymous2y instanceof a))
          {
            JsonObject localJsonObject = ((a)paramAnonymous2y).data;
            paramAnonymous2y = (y)localObject;
            if (localJsonObject != null) {
              paramAnonymous2y = r.a(localJsonObject, "symbol", null);
            }
            m.a(m.this, paramAnonymous2y);
            return;
          }
          aa.a(paramAnonymous2y);
        }
      };
      paramAnonymousView.l.a("PAMID", local1);
    }
  };
  private View b;
  private View c;
  private View d;
  private n e;
  private n f;
  private LinearLayout g;
  private LinearLayout h;
  
  private void C()
  {
    TranslateAnimation localTranslateAnimation = new TranslateAnimation(1, 0.0F, 1, 0.0F, 1, 0.0F, 1, -1.0F);
    localTranslateAnimation.setDuration(200L);
    this.h.startAnimation(localTranslateAnimation);
    this.al.postDelayed(new Runnable()
    {
      public final void run()
      {
        m.a(m.this).setVisibility(8);
        m.b(m.this).setVisibility(8);
      }
    }, 200L);
  }
  
  public final void B_()
  {
    if ((this.a == 2) && (this.e != null)) {
      this.e.B_();
    }
    if ((this.a == 1) && (this.f != null)) {
      this.f.B_();
    }
  }
  
  public final void F_()
  {
    super.F_();
  }
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.a(paramLayoutInflater, paramViewGroup, paramBundle);
    this.b = paramLayoutInflater.inflate(2130903366, paramViewGroup, false);
    this.c = this.b.findViewById(2131625213);
    this.d = this.b.findViewById(2131625214);
    this.ak = this.b.findViewById(2131624076);
    this.g = ((LinearLayout)this.b.findViewById(2131625218));
    this.g.setOnClickListener(this.am);
    this.h = ((LinearLayout)this.b.findViewById(2131625219));
    this.b.findViewById(2131625219).setOnClickListener(this.am);
    this.b.findViewById(2131625220).setOnClickListener(this.am);
    this.d.findViewById(2131625215).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        m.this.a = 2;
        UserPrefs.setInt(m.this.g(), "portfolio_page_type", 2);
        m.this.u();
      }
    });
    this.d.findViewById(2131625216).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        m.this.a = 1;
        UserPrefs.setInt(m.this.g(), "portfolio_page_type", 1);
        m.this.u();
      }
    });
    this.d.findViewById(2131625128).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramAnonymousView = new Intent(m.this.g(), RecentTalkActivity.class);
        m.this.a(paramAnonymousView);
      }
    });
    this.d.findViewById(2131625217).setOnClickListener(this.am);
    this.d.findViewById(2131625128).setOnClickListener(this.am);
    this.d.findViewById(2131623956).setOnClickListener(this.am);
    this.d.findViewById(2131623952).setOnClickListener(this.am);
    u();
    return this.b;
  }
  
  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    if (this.r != null) {
      this.a = this.r.getInt("page_type");
    }
  }
  
  public final void a(View paramView, Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    b(((MainActivity)g()).j());
  }
  
  public final void b(String paramString)
  {
    ay.a(paramString, (ImageView)c(2131624523));
  }
  
  public final void d(Bundle paramBundle)
  {
    if (this.r != null) {
      this.r.putInt("page_type", this.a);
    }
    super.d(paramBundle);
  }
  
  public final void q()
  {
    super.q();
    this.al.removeCallbacksAndMessages(null);
  }
  
  public final void u()
  {
    ac localac = i().a();
    this.c.setVisibility(0);
    this.e = ((n)i().a("stock_fragment"));
    this.f = ((n)i().a("cube_fragment"));
    if (this.a == 1)
    {
      if (this.e != null) {
        localac.c(this.e);
      }
      if (this.f == null)
      {
        this.f = n.a(1, 0L);
        localac.a(2131625213, this.f, "cube_fragment");
      }
    }
    for (;;)
    {
      localac.d();
      this.d.findViewById(2131625215).setSelected(false);
      this.d.findViewById(2131625216).setSelected(false);
      if (this.a != 1) {
        break;
      }
      this.d.findViewById(2131625216).setSelected(true);
      this.d.findViewById(2131625217).setVisibility(0);
      this.d.findViewById(2131623952).setVisibility(8);
      return;
      localac.d(this.f);
      localac.f(this.f);
      continue;
      if (this.f != null) {
        localac.c(this.f);
      }
      if (this.e == null)
      {
        this.e = n.a(2, 0L);
        localac.a(2131625213, this.e, "stock_fragment");
      }
      else
      {
        localac.d(this.e);
        localac.f(this.e);
      }
    }
    this.d.findViewById(2131625215).setSelected(true);
    this.d.findViewById(2131625217).setVisibility(8);
    this.d.findViewById(2131623952).setVisibility(0);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\c\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */