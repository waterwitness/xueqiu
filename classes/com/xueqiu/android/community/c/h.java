package com.xueqiu.android.community.c;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.a.k;
import android.text.Html;
import android.text.TextUtils;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.d.a.b.e;
import com.d.a.b.f;
import com.umeng.analytics.MobclickAgent;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.aj;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.b.x;
import com.xueqiu.android.base.q;
import com.xueqiu.android.base.storage.DBManager;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.o;
import com.xueqiu.android.common.c;
import com.xueqiu.android.common.r;
import com.xueqiu.android.common.widget.SNBPullToRefreshListView;
import com.xueqiu.android.common.widget.l;
import com.xueqiu.android.community.StatusDetailActivity;
import com.xueqiu.android.community.a.am;
import com.xueqiu.android.community.model.Status;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class h
  extends c
  implements com.xueqiu.android.common.t<Status>, l
{
  boolean a = false;
  private r<Status> b = null;
  private int c = 1;
  private am d = null;
  private Status e = null;
  private int f = 0;
  private boolean g = false;
  private boolean h = false;
  
  private void C()
  {
    Object localObject2;
    Object localObject1;
    if ((this.T != null) && (this.e != null))
    {
      localObject2 = (TextView)c(2131624686);
      localObject1 = null;
      if (TextUtils.isEmpty(this.e.getTopicTitle())) {
        break label117;
      }
      localObject1 = Html.fromHtml(this.e.getTopicTitle());
    }
    for (;;)
    {
      ((TextView)localObject2).setText((CharSequence)localObject1);
      localObject1 = (ImageView)c(2131624685);
      if ((this.e != null) && (!TextUtils.isEmpty(this.e.getTopicPicHead())))
      {
        localObject2 = com.xueqiu.android.base.util.n.a().b();
        o localo = new o();
        f.a().a(this.e.getTopicPicHead(), (ImageView)localObject1, (com.d.a.b.d)localObject2, localo);
      }
      return;
      label117:
      if (!TextUtils.isEmpty(this.e.getTitle())) {
        localObject1 = Html.fromHtml(this.e.getTitle());
      }
    }
  }
  
  private int D()
  {
    if (this.f == 3) {
      return 11;
    }
    if (this.f == 1) {
      return 9;
    }
    if (this.f == 2) {
      return 10;
    }
    if (this.f == 4) {
      return 12;
    }
    return 8;
  }
  
  private void E()
  {
    String str;
    if (this.f == 3) {
      str = a(2131166518);
    }
    for (;;)
    {
      MobclickAgent.onEvent(f(), str);
      return;
      if (this.f == 1) {
        str = a(2131166517);
      } else if (this.f == 2) {
        str = a(2131166520);
      } else if (this.f == 4) {
        str = a(2131166519);
      } else {
        str = a(2131166516);
      }
    }
  }
  
  private x<ArrayList<Status>> c(p<ArrayList<Status>> paramp)
  {
    ai localai = q.a().b();
    String str;
    if (this.f == 3) {
      str = "2";
    }
    for (;;)
    {
      int i = this.c;
      return localai.g.a(i, str, paramp);
      if (this.f == 1) {
        str = "5";
      } else if (this.f == 2) {
        str = "1";
      } else if (this.f == 4) {
        str = "4";
      } else {
        str = "0";
      }
    }
  }
  
  private void u()
  {
    this.b = new com.xueqiu.android.community.widget.i((SNBPullToRefreshListView)c(2131624301), this);
    Object localObject = View.inflate(g(), 2130903222, null);
    ((View)localObject).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if (h.a(h.this) != null)
        {
          paramAnonymousView = new Intent(h.this.f(), StatusDetailActivity.class);
          paramAnonymousView.putExtra("status", h.a(h.this));
          h.this.a(paramAnonymousView, 1);
        }
      }
    });
    double d1 = g().getWindowManager().getDefaultDisplay().getWidth();
    ((View)localObject).findViewById(2131624685).setLayoutParams(new FrameLayout.LayoutParams(-1, (int)(d1 * 0.525D)));
    this.b.d().addHeaderView((View)localObject);
    if (this.d == null) {
      this.d = new am(g());
    }
    this.b.a(this.d);
    this.b.a(new AdapterView.OnItemClickListener()
    {
      public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        int i = h.b(h.this).d().getHeaderViewsCount();
        paramAnonymousAdapterView = (Status)h.b(h.this).c.getItem(paramAnonymousInt - i);
        paramAnonymousView = new Intent(h.this.f(), StatusDetailActivity.class);
        paramAnonymousView.putExtra("status", paramAnonymousAdapterView);
        h.this.a(paramAnonymousView, 1);
      }
    });
    if (this.e == null)
    {
      localObject = new ArrayList(DBManager.getInstance().queryTodayTopicStatuses(D()));
      Collections.reverse((List)localObject);
      if (((ArrayList)localObject).size() > 0)
      {
        this.e = ((Status)((ArrayList)localObject).get(0));
        ((ArrayList)localObject).remove(0);
        if ((this.d == null) || (this.d.a().size() == 0)) {
          this.d.a((ArrayList)localObject);
        }
      }
    }
    C();
    if (((this.f == 0) || (this.f == 4)) && (!this.g))
    {
      this.b.a(true);
      this.g = true;
      E();
    }
  }
  
  public final void C_()
  {
    if ((!this.h) && (g() != null))
    {
      u();
      this.h = true;
    }
    if ((!this.g) && (this.b != null))
    {
      this.b.a(true);
      this.g = true;
      E();
    }
  }
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903221, paramViewGroup, false);
    d(2131166325);
    return paramLayoutInflater;
  }
  
  public final com.android.volley.n<ArrayList<Status>> a(p<ArrayList<Status>> paramp)
  {
    this.c = 1;
    return c(paramp);
  }
  
  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
  }
  
  public final void a(View paramView, Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    this.T.setBackgroundColor(h().getColor(2131558417));
    this.f = this.r.getInt("view_which", 0);
    if ((this.a) && (!this.h))
    {
      u();
      this.h = true;
    }
  }
  
  public final void a(ArrayList<Status> paramArrayList, Throwable paramThrowable, boolean paramBoolean)
  {
    if (paramArrayList == null)
    {
      aa.a(paramThrowable);
      if (this.c > 1) {
        this.c -= 1;
      }
    }
    while ((paramArrayList.size() <= 0) || (paramBoolean)) {
      return;
    }
    this.b.c();
    this.e = ((Status)paramArrayList.get(0));
    paramArrayList.remove(0);
    C();
  }
  
  public final com.android.volley.n<ArrayList<Status>> b(p<ArrayList<Status>> paramp)
  {
    this.c += 1;
    return c(paramp);
  }
  
  public final void e()
  {
    this.h = false;
    this.a = false;
    super.e();
  }
  
  public final void q()
  {
    if ((this.d != null) && (this.d.a().size() > 0) && (u.a().c)) {
      new Handler().postDelayed(new Runnable()
      {
        public final void run()
        {
          ArrayList localArrayList = new ArrayList(h.c(h.this).a());
          localArrayList.add(0, h.a(h.this));
          DBManager.getInstance().insertTimeline(localArrayList, h.d(h.this));
        }
      }, 1000L);
    }
    super.q();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\c\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */