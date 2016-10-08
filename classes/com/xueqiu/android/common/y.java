package com.xueqiu.android.common;

import android.os.Bundle;
import android.os.Handler;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.an;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.b.q;
import com.xueqiu.android.base.h;
import com.xueqiu.android.base.i;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.common.model.RequestResult;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.community.a.at;
import com.xueqiu.android.community.a.aw;
import com.xueqiu.android.community.model.RecommendStock;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.cube.model.RecommendCube;
import java.util.ArrayList;
import java.util.List;

public class y
  extends c
  implements View.OnClickListener
{
  private static final String b = y.class.getSimpleName();
  z a;
  private List<Long> ak = new ArrayList();
  private List<String> al = new ArrayList();
  private List<String> am = new ArrayList();
  private Handler an = new Handler();
  private View c;
  private GridView d;
  private LinearLayout e;
  private TextView f;
  private at g;
  private TextView h;
  
  private void a(com.android.volley.y paramy)
  {
    aa.a(paramy);
    this.d.setVisibility(8);
    this.e.setVisibility(0);
  }
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    if (this.c != null) {
      return this.c;
    }
    this.c = paramLayoutInflater.inflate(2130903379, paramViewGroup, false);
    paramLayoutInflater = this.c;
    this.d = ((GridView)paramLayoutInflater.findViewById(2131624805));
    this.e = ((LinearLayout)paramLayoutInflater.findViewById(2131624718));
    this.f = ((TextView)paramLayoutInflater.findViewById(2131625255));
    this.f.setOnClickListener(this);
    this.h = ((TextView)paramLayoutInflater.findViewById(2131625254));
    this.h.setOnClickListener(this);
    return this.c;
  }
  
  public final void a(boolean paramBoolean, com.android.volley.y paramy)
  {
    if (!paramBoolean)
    {
      a(paramy);
      return;
    }
    this.an.postDelayed(new Runnable()
    {
      public final void run()
      {
        Object localObject = y.this;
        ai localai = ((y)localObject).x();
        localObject = new y.3((y)localObject, (q)localObject);
        localai.h.g((p)localObject);
      }
    }, 300L);
  }
  
  public final void c(@Nullable Bundle paramBundle)
  {
    super.c(paramBundle);
    this.g = new at(g());
    paramBundle = new aw()
    {
      public final void a(long paramAnonymousLong, boolean paramAnonymousBoolean)
      {
        y.a(y.this, paramAnonymousLong, paramAnonymousBoolean);
        y.a(y.this).notifyDataSetChanged();
      }
      
      public final void a(String paramAnonymousString, boolean paramAnonymousBoolean)
      {
        y.a(y.this, paramAnonymousString, paramAnonymousBoolean);
        y.a(y.this).notifyDataSetChanged();
      }
      
      public final void b(String paramAnonymousString, boolean paramAnonymousBoolean)
      {
        y.b(y.this, paramAnonymousString, paramAnonymousBoolean);
        y.a(y.this).notifyDataSetChanged();
      }
    };
    this.g.b = paramBundle;
    this.d.setAdapter(this.g);
  }
  
  public final void c_(boolean paramBoolean)
  {
    super.c_(paramBoolean);
    v.a(b, "onHiddenChanged hidden = " + paramBoolean);
  }
  
  public final void o()
  {
    super.o();
    v.a(b, "onResume");
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    }
    do
    {
      return;
      paramView = (Long[])this.ak.toArray(new Long[this.ak.size()]);
      if ((paramView != null) && (paramView.length > 0))
      {
        ai localai = x();
        p local4 = new p((UserGuideActivity)g())
        {
          public final void a(com.android.volley.y paramAnonymousy)
          {
            aa.a(paramAnonymousy);
          }
        };
        localai.h.a(paramView, local4);
      }
      paramView = (String[])this.al.toArray(new String[this.al.size()]);
      if ((paramView != null) && (paramView.length > 0)) {
        x().a(paramView, new p((UserGuideActivity)g())
        {
          public final void a(com.android.volley.y paramAnonymousy)
          {
            aa.a(paramAnonymousy);
          }
        });
      }
      paramView = (String[])this.am.toArray(new String[this.am.size()]);
      if ((paramView != null) && (paramView.length > 0)) {
        x().a(paramView, new p((UserGuideActivity)g())
        {
          public final void a(com.android.volley.y paramAnonymousy)
          {
            aa.a(paramAnonymousy);
          }
        });
      }
      if (this.a != null) {
        this.a.a();
      }
      paramView = new SNBEvent(2600, 6);
      i.a().a(paramView);
      return;
    } while (this.a == null);
    this.a.b();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\y.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */