package com.xueqiu.android.stock;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.a.i;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.android.volley.y;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.ak;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.b.q;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.common.c;
import com.xueqiu.android.common.widget.SNBPullToRefreshListView;
import com.xueqiu.android.common.widget.l;
import com.xueqiu.android.stock.a.u;
import com.xueqiu.android.stock.model.FundType;
import com.xueqiu.android.stock.model.OldPortFolio;
import java.util.List;
import java.util.Map;

public final class e
  extends c
  implements l
{
  private u a = null;
  private int b = 1;
  private List<FundType> c = null;
  
  public static f a(int paramInt1, Context paramContext, int paramInt2)
  {
    int j = 2131165337;
    int i = j;
    switch (paramInt1)
    {
    }
    for (i = j;; i = 2131165329)
    {
      paramContext = paramContext.getString(i).split(",");
      f localf = new f();
      localf.c = paramContext[0];
      localf.d = paramContext[1];
      localf.e = paramContext[2];
      localf.g = paramInt1;
      localf.a = paramInt2;
      return localf;
    }
  }
  
  public static f a(int paramInt1, Context paramContext, int paramInt2, int paramInt3)
  {
    paramContext = a(paramInt1, paramContext, paramInt2);
    paramContext.b = paramInt3;
    return paramContext;
  }
  
  public static e b(int paramInt)
  {
    e locale = new e();
    Bundle localBundle = new Bundle();
    localBundle.putInt("arg_parent_type_id", paramInt);
    locale.e(localBundle);
    return locale;
  }
  
  public final void C_() {}
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.a(paramLayoutInflater, paramViewGroup, paramBundle);
    return paramLayoutInflater.inflate(2130903474, paramViewGroup, false);
  }
  
  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    this.b = this.r.getInt("arg_parent_type_id", 1);
  }
  
  public final void a(View paramView, Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    paramView = (SNBPullToRefreshListView)this.T.findViewById(2131625547);
    paramView.setVerticalScrollBarEnabled(false);
    this.a = new u(f());
    paramView.setAdapter(this.a);
    if ((this.a == null) || (this.a.getCount() == 0))
    {
      paramView = x();
      int i = this.b;
      paramBundle = new p(this)
      {
        public final void a(y paramAnonymousy)
        {
          aa.a(paramAnonymousy);
        }
      };
      a(paramView.i.a(i, paramBundle));
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */