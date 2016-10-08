package com.xueqiu.android.trade.c;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.a.ac;
import android.support.v4.a.i;
import android.support.v4.a.q;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.xueqiu.android.base.storage.prefs.UserPrefs;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.common.MainActivity;
import com.xueqiu.android.common.d;
import com.xueqiu.android.common.e;
import com.xueqiu.android.message.RecentTalkActivity;
import java.util.Iterator;
import java.util.List;

public class n
  extends e
  implements d
{
  String b = "trade";
  private View c;
  private View d;
  private o e;
  private g f;
  
  public final void B_()
  {
    if ((this.b.equals("trade")) && (this.e != null)) {
      this.e.B_();
    }
    if ((this.b.equals("performance")) && (this.f != null)) {
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
    this.c = paramLayoutInflater.inflate(2130903383, paramViewGroup, false);
    this.d = this.c.findViewById(2131625267);
    u();
    return this.c;
  }
  
  public final void a(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.a(paramInt1, paramInt2, paramIntent);
    Object localObject = i().d();
    if (localObject != null)
    {
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        ((i)((Iterator)localObject).next()).a(paramInt1, paramInt2, paramIntent);
      }
    }
  }
  
  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    this.a = "trade";
    if (this.r != null) {
      this.b = this.r.getString("page_type");
    }
  }
  
  public final void a(View paramView, Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    c(((MainActivity)g()).j());
  }
  
  public final void c(String paramString)
  {
    ay.a(paramString, (ImageView)c(2131624523));
  }
  
  public final void d(Bundle paramBundle)
  {
    if (this.r != null) {
      this.r.putString("page_type", this.b);
    }
    super.d(paramBundle);
  }
  
  public final void u()
  {
    Object localObject = i().a();
    this.d.setVisibility(4);
    if (this.b.equals("trade"))
    {
      this.d.setVisibility(0);
      this.e = ((o)i().a("tradeFragment"));
      this.f = ((g)i().a("performanceFragment"));
      if (this.f != null) {
        ((ac)localObject).c(this.f);
      }
      if (this.e == null)
      {
        this.e = new o();
        ((ac)localObject).a(2131625267, this.e, "tradeFragment");
      }
    }
    for (;;)
    {
      ((ac)localObject).d();
      localObject = this.c.findViewById(2131625206);
      ((View)localObject).findViewById(2131625268).setSelected(false);
      ((View)localObject).findViewById(2131625269).setSelected(false);
      if (this.b.equals("trade")) {
        ((View)localObject).findViewById(2131625268).setSelected(true);
      }
      if (this.b.equals("performance")) {
        ((View)localObject).findViewById(2131625269).setSelected(true);
      }
      ((View)localObject).findViewById(2131625268).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          n.this.b = "trade";
          UserPrefs.setString(n.this.g(), "trade_page_type", "trade");
          n.this.u();
        }
      });
      ((View)localObject).findViewById(2131625269).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          n.this.b = "performance";
          UserPrefs.setString(n.this.g(), "trade_page_type", "performance");
          n.this.u();
        }
      });
      ((View)localObject).findViewById(2131625128).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = new Intent(n.this.g(), RecentTalkActivity.class);
          n.this.a(paramAnonymousView);
        }
      });
      return;
      ((ac)localObject).d(this.e);
      ((ac)localObject).f(this.e);
      continue;
      this.d.setVisibility(0);
      this.f = ((g)i().a("performanceFragment"));
      this.e = ((o)i().a("tradeFragment"));
      if (this.e != null) {
        ((ac)localObject).c(this.e);
      }
      if (this.f == null)
      {
        this.f = new g();
        ((ac)localObject).a(2131625267, this.f, "performanceFragment");
      }
      else
      {
        ((ac)localObject).d(this.f);
        ((ac)localObject).f(this.f);
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\c\n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */