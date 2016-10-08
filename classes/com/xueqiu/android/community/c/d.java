package com.xueqiu.android.community.c;

import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ListView;
import com.android.volley.n;
import com.sina.weibo.sdk.api.share.BaseRequest;
import com.sina.weibo.sdk.api.share.IWeiboHandler.Request;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.aj;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.q;
import com.xueqiu.android.base.storage.DBManager;
import com.xueqiu.android.base.storage.prefs.UserPrefs;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.ag;
import com.xueqiu.android.base.util.ap;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.common.MainActivity;
import com.xueqiu.android.common.c;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.common.t;
import com.xueqiu.android.common.widget.SNBPullToRefreshListView;
import com.xueqiu.android.community.StatusDetailActivity;
import com.xueqiu.android.community.a.ak;
import com.xueqiu.android.community.model.HomeTimelineStatusGroup;
import com.xueqiu.android.community.model.Remind;
import com.xueqiu.android.community.model.RemindItem;
import com.xueqiu.android.community.model.Status;
import com.xueqiu.android.community.model.UserGroup;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;
import rx.c.b;

public final class d
  extends c
  implements IWeiboHandler.Request, com.xueqiu.android.common.d, t<Status>, com.xueqiu.android.common.widget.l, com.xueqiu.android.community.l
{
  com.xueqiu.android.community.widget.i a = null;
  private FrameLayout ak;
  boolean b = false;
  private long c;
  private ak d = null;
  private UserGroup e = null;
  private boolean f = false;
  private boolean g = false;
  private e h = null;
  
  private void C()
  {
    if ((!this.g) && (this.ak.findViewById(2131624301) == null))
    {
      SNBPullToRefreshListView localSNBPullToRefreshListView = new SNBPullToRefreshListView(f());
      localSNBPullToRefreshListView.setId(2131624301);
      ((ListView)localSNBPullToRefreshListView.getRefreshableView()).setDivider(null);
      localSNBPullToRefreshListView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
      this.ak.addView(localSNBPullToRefreshListView);
      this.a = new com.xueqiu.android.community.widget.i(localSNBPullToRefreshListView, this);
      this.a.a(a(2131165507));
      if (this.d == null) {
        this.d = new ak(g());
      }
      this.d.g = this;
      this.a.a(this.d);
      this.a.a(new AdapterView.OnItemClickListener()
      {
        public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
        {
          paramAnonymousAdapterView = (Status)d.c(d.this).c.getItem(paramAnonymousInt - 1);
          if (paramAnonymousAdapterView.getType().equals("normal"))
          {
            paramAnonymousView = new Intent(d.this.g(), StatusDetailActivity.class);
            paramAnonymousView.putExtra("status", paramAnonymousAdapterView);
            d.this.a(paramAnonymousView, 1);
          }
          paramAnonymousView = new SNBEvent(1300, 17);
          paramAnonymousView.addProperty("status_id", String.valueOf(paramAnonymousAdapterView.getStatusId()));
          com.xueqiu.android.base.i.a().a(paramAnonymousView);
        }
      });
      b("timeline");
    }
  }
  
  private n<ArrayList<Status>> a(boolean paramBoolean, p<ArrayList<Status>> paramp)
  {
    long l3 = 0L;
    Object localObject1 = this.a.c.a();
    int i;
    Object localObject2;
    long l1;
    long l2;
    if (((ArrayList)localObject1).size() != 0) {
      if (!paramBoolean)
      {
        int j = ((ArrayList)localObject1).size();
        i = 0;
        if (i < j)
        {
          localObject2 = (Status)((ArrayList)localObject1).get(i);
          if (((Status)localObject2).getType().equals("normal"))
          {
            l1 = ((Status)localObject2).getStatusId();
            l2 = 0L;
          }
        }
      }
    }
    for (;;)
    {
      label75:
      localObject2 = q.a().b();
      long l4 = this.e.getGroupId();
      if (l4 == 1L) {
        localObject1 = "";
      }
      for (;;)
      {
        return ((ai)localObject2).g.a((String)localObject1, l1, l2, l3, paramp);
        i += 1;
        break;
        l1 = 0L;
        l2 = 0L;
        break label75;
        l2 = this.c;
        if (l2 > 0L) {
          break label301;
        }
        l2 = ((Status)((ArrayList)localObject1).get(((ArrayList)localObject1).size() - 1)).getStatusId();
        l1 = 0L;
        break label75;
        if (l4 == 2L)
        {
          localObject1 = a(2131166131);
        }
        else if (l4 == 3L)
        {
          localObject1 = a(2131166132);
        }
        else if (l4 == 4L)
        {
          localObject1 = a(2131166133);
        }
        else if (l4 == 6L)
        {
          localObject1 = a(2131166135);
        }
        else if (l4 == 13L)
        {
          localObject1 = a(2131166134);
        }
        else
        {
          l3 = this.e.getGroupId();
          localObject1 = a(2131166131);
          this.a.a(a(2131165508));
        }
      }
      label301:
      l1 = 0L;
      continue;
      l1 = 0L;
      l2 = 0L;
    }
  }
  
  public static d a(UserGroup paramUserGroup, boolean paramBoolean)
  {
    d locald = new d();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("arg_user_group", paramUserGroup);
    localBundle.putBoolean("arg_is_first_show", paramBoolean);
    locald.e(localBundle);
    return locald;
  }
  
  private String c(String paramString)
  {
    return String.format("%s%s", new Object[] { paramString, Long.valueOf(this.e.getGroupId()) });
  }
  
  public final void B_()
  {
    if ((this.a == null) || (this.a.a.j())) {
      return;
    }
    this.a.a.m();
    SNBEvent localSNBEvent = new SNBEvent(1300, 21);
    com.xueqiu.android.base.i.a().a(localSNBEvent);
  }
  
  public final void C_()
  {
    if ((!this.g) && (g() != null)) {
      ag.d.a(new rx.c.a()
      {
        public final void a()
        {
          d.d(d.this);
          d.e(d.this);
          if ((!d.f(d.this)) && (d.c(d.this) != null))
          {
            d.c(d.this).a(true);
            d.g(d.this);
          }
        }
      }, 100L, TimeUnit.MILLISECONDS);
    }
  }
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.a(paramLayoutInflater, paramViewGroup, paramBundle);
    if (this.ak == null)
    {
      this.ak = new FrameLayout(f());
      this.ak.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
    }
    for (;;)
    {
      return this.ak;
      if (this.ak.getParent() != null) {
        ((ViewGroup)this.ak.getParent()).removeView(this.ak);
      }
    }
  }
  
  public final n<ArrayList<Status>> a(p<ArrayList<Status>> paramp)
  {
    SNBEvent localSNBEvent = new SNBEvent(1300, 19);
    com.xueqiu.android.base.i.a().a(localSNBEvent);
    return a(false, paramp);
  }
  
  public final void a(long paramLong)
  {
    SNBEvent localSNBEvent = new SNBEvent(1300, 18);
    localSNBEvent.addProperty("tab_name", "转发");
    com.xueqiu.android.base.i.a().a(localSNBEvent);
  }
  
  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    if (this.r != null)
    {
      this.e = ((UserGroup)this.r.getParcelable("arg_user_group"));
      this.b = this.r.getBoolean("arg_is_first_show");
    }
    if (this.h == null)
    {
      this.h = new e(this, (byte)0);
      android.support.v4.content.r.a(g()).a(this.h, new IntentFilter("com.xueqiu.android.action.statusDelete"));
    }
    a(rx.a.b.a.b(f(), new IntentFilter("com.xueqiu.android.action.stockColorChanged")).c(new b() {}));
    a(rx.a.b.a.b(f(), new IntentFilter("com.xueqiu.android.action.fastScrollChanged")).c(new b() {}));
  }
  
  public final void a(View paramView, Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    if ((this.b) && (!this.g))
    {
      C();
      this.a.a(true);
      this.g = true;
      this.b = false;
    }
  }
  
  public final void a(String paramString)
  {
    SNBEvent localSNBEvent = new SNBEvent(1300, 7);
    localSNBEvent.addProperty("card_id", paramString);
    com.xueqiu.android.base.i.a().a(localSNBEvent);
  }
  
  public final void a(String paramString, long paramLong, int paramInt)
  {
    SNBEvent localSNBEvent = new SNBEvent(1300, 9);
    localSNBEvent.addProperty("card_id", paramString);
    localSNBEvent.addProperty("user_id", String.valueOf(paramLong));
    localSNBEvent.addProperty("pos", String.valueOf(paramInt));
    com.xueqiu.android.base.i.a().a(localSNBEvent);
  }
  
  public final void a(String paramString1, String paramString2, String paramString3, int paramInt)
  {
    SNBEvent localSNBEvent = new SNBEvent(1300, 8);
    localSNBEvent.addProperty("card_id", paramString1);
    localSNBEvent.addProperty("recommend_id", paramString2);
    localSNBEvent.addProperty("card_type", paramString3);
    localSNBEvent.addProperty("pos", String.valueOf(paramInt));
    com.xueqiu.android.base.i.a().a(localSNBEvent);
  }
  
  public final void a(ArrayList<Status> paramArrayList, Throwable paramThrowable, boolean paramBoolean)
  {
    if (g() == null) {
      return;
    }
    if (paramThrowable != null)
    {
      aa.a(paramThrowable);
      if (this.d.getCount() == 0)
      {
        paramThrowable = new ArrayList(DBManager.getInstance().queryTimeine((int)this.e.getGroupId()));
        this.d.a(paramThrowable);
        if (this.c == 0L) {
          this.c = UserPrefs.getLong(f(), c("key_next_max_id"), -1L);
        }
        this.d.notifyDataSetChanged();
      }
    }
    if (paramArrayList == null) {
      paramArrayList = new ArrayList();
    }
    for (;;)
    {
      if ((paramArrayList instanceof HomeTimelineStatusGroup))
      {
        paramArrayList = (HomeTimelineStatusGroup)paramArrayList;
        paramThrowable = this.a.c.a();
        if ((paramBoolean) || (paramThrowable.size() == 0)) {
          this.c = paramArrayList.getNextMaxId();
        }
        if (!paramBoolean) {
          ap.a(paramArrayList, this.d);
        }
      }
      if (paramBoolean) {
        break;
      }
      paramArrayList = (MainActivity)g();
      if ((paramArrayList.j == null) || (paramArrayList.j.getStatus() == null)) {
        break;
      }
      paramArrayList.j.getStatus().setCount(0);
      paramArrayList.a(paramArrayList.j);
      return;
    }
  }
  
  public final n<ArrayList<Status>> b(p<ArrayList<Status>> paramp)
  {
    SNBEvent localSNBEvent = new SNBEvent(1300, 20);
    com.xueqiu.android.base.i.a().a(localSNBEvent);
    return a(true, paramp);
  }
  
  public final void b(long paramLong)
  {
    SNBEvent localSNBEvent = new SNBEvent(1300, 18);
    localSNBEvent.addProperty("tab_name", "评论");
    com.xueqiu.android.base.i.a().a(localSNBEvent);
  }
  
  public final void b(String paramString)
  {
    if (this.a != null)
    {
      com.xueqiu.android.base.a.a();
      paramString = com.xueqiu.android.base.a.a(paramString);
      SNBPullToRefreshListView localSNBPullToRefreshListView = this.a.a;
      com.xueqiu.android.base.a.a();
      localSNBPullToRefreshListView.a(com.xueqiu.android.base.a.a(paramString, g()));
    }
  }
  
  public final void onRequest(BaseRequest paramBaseRequest)
  {
    v.c("HomeFragment", "receive request from sina weibo");
  }
  
  public final void q()
  {
    UserPrefs.setLong(f(), c("key_next_max_id"), this.c);
    UserPrefs.setLong(f(), c("key_next_max_id"), this.c);
    if (this.h != null) {
      android.support.v4.content.r.a(f()).a(this.h);
    }
    super.q();
  }
  
  public final void u()
  {
    try
    {
      if ((this.d != null) && (this.d.getCount() > 0)) {
        DBManager.getInstance().insertTimeline(new ArrayList(this.d.a().subList(0, Math.min(this.d.a().size(), 80))), (int)this.e.getGroupId());
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\c\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */