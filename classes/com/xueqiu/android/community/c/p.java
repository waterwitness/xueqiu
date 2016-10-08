package com.xueqiu.android.community.c;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.a.i;
import android.support.v4.a.k;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.android.volley.y;
import com.xueqiu.android.base.b.q;
import com.xueqiu.android.common.c;
import com.xueqiu.android.common.model.PagedList;
import com.xueqiu.android.common.widget.ptr.PullToRefreshListView;
import com.xueqiu.android.common.widget.ptr.f;
import com.xueqiu.android.common.widget.ptr.h;
import com.xueqiu.android.community.UserProfileActivity;
import com.xueqiu.android.community.a.ad;
import com.xueqiu.android.community.model.RewardCash;
import com.xueqiu.android.community.model.User;
import java.util.ArrayList;

public class p
  extends c
{
  private PullToRefreshListView a;
  private boolean ak = true;
  private ad b;
  private View c;
  private long d;
  private boolean e;
  private int f = -1;
  private int g = 1;
  private boolean h = true;
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903103, paramViewGroup, false);
  }
  
  public final void a(@Nullable Bundle paramBundle)
  {
    super.a(paramBundle);
    this.e = this.r.getBoolean("extra_is_status_reward", true);
    this.d = this.r.getLong("extra_status_id", 0L);
    if (this.d == 0L)
    {
      g().finish();
      return;
    }
    a("打赏记录");
  }
  
  public final void a(View paramView, @Nullable Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    this.a = ((PullToRefreshListView)c(2131624309));
    this.c = LayoutInflater.from(f()).inflate(2130903580, (ViewGroup)this.a.getRefreshableView(), false);
    this.c.setVisibility(8);
    ((ListView)this.a.getRefreshableView()).addFooterView(this.c);
    this.a.setOnRefreshListener(new h()
    {
      public final void a()
      {
        p.a(p.this);
        p.a(p.this, false);
      }
    });
    this.a.setOnLastItemVisibleListener(new f()
    {
      public final void a()
      {
        p.a(p.this, true);
      }
    });
    this.b = new ad(g());
    ((ListView)this.a.getRefreshableView()).setAdapter(this.b);
    ((ListView)this.a.getRefreshableView()).setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        paramAnonymousView = (RewardCash)p.b(p.this).a().get(paramAnonymousInt - 1);
        paramAnonymousAdapterView = new User();
        paramAnonymousAdapterView.setUserId(paramAnonymousView.getUserId());
        paramAnonymousView = new Intent(p.this.g(), UserProfileActivity.class);
        paramAnonymousView.putExtra("extra_user", paramAnonymousAdapterView);
        p.this.a(paramAnonymousView);
      }
    });
    this.a.k();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\c\p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */