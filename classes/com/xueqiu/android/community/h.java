package com.xueqiu.android.community;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.a.k;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.android.volley.n;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.aj;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.b.x;
import com.xueqiu.android.base.q;
import com.xueqiu.android.base.storage.DBManager;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.common.a.d;
import com.xueqiu.android.common.r;
import com.xueqiu.android.common.widget.SNBPullToRefreshListView;
import com.xueqiu.android.community.a.ak;
import com.xueqiu.android.community.model.Status;
import com.xueqiu.android.community.widget.i;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public final class h
  extends com.xueqiu.android.common.c
  implements com.xueqiu.android.common.t<Status>
{
  private i a = null;
  private ak b = null;
  
  private x<ArrayList<Status>> a(boolean paramBoolean, p<ArrayList<Status>> paramp)
  {
    long l2 = 0L;
    ai localai = q.a().b();
    ArrayList localArrayList = this.a.c.a();
    long l1;
    if ((localArrayList != null) && (localArrayList.size() != 0)) {
      if (!paramBoolean) {
        l1 = ((Status)localArrayList.get(0)).getStatusId();
      }
    }
    for (;;)
    {
      return localai.g.a(l1, l2, paramp);
      l2 = ((Status)localArrayList.get(localArrayList.size() - 1)).getStatusId();
      l1 = 0L;
      continue;
      l1 = 0L;
    }
  }
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.a(paramLayoutInflater, paramViewGroup, paramBundle);
    return paramLayoutInflater.inflate(2130903446, paramViewGroup, false);
  }
  
  public final n<ArrayList<Status>> a(p<ArrayList<Status>> paramp)
  {
    return a(false, paramp);
  }
  
  public final void a(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((paramInt1 == 1) && (paramInt2 == 2))
    {
      long l = paramIntent.getLongExtra("delete_status_id", 0L);
      paramIntent = this.a.c.a();
      Iterator localIterator = paramIntent.iterator();
      while (localIterator.hasNext())
      {
        Status localStatus = (Status)localIterator.next();
        if (localStatus.getStatusId() == l) {
          paramIntent.remove(localStatus);
        }
      }
      this.a.c.notifyDataSetChanged();
    }
  }
  
  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    e_(true);
  }
  
  public final void a(View paramView, Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    if (this.b == null)
    {
      this.b = new ak(g());
      paramView = new ArrayList(DBManager.getInstance().queryTimeine(5));
      this.b.a(paramView);
    }
    this.a = new i((SNBPullToRefreshListView)c(2131624301), this);
    this.a.a(this.b);
    this.a.a(new AdapterView.OnItemClickListener()
    {
      public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        paramAnonymousAdapterView = (Status)h.a(h.this).c.getItem(paramAnonymousInt - 1);
        paramAnonymousView = new Intent(h.this.f(), StatusDetailActivity.class);
        paramAnonymousView.putExtra("status", paramAnonymousAdapterView);
        h.this.a(paramAnonymousView, 1);
      }
    });
    d(2131166176);
    this.a.a(a(2131165500));
    this.a.a(2130837911);
    paramView = g().getIntent();
    int i;
    if (paramView != null) {
      if (paramView.getIntExtra("extra_notification", -1) == 3) {
        i = 1;
      }
    }
    for (;;)
    {
      if ((i != 0) || (this.a.c.getCount() == 0))
      {
        this.a.a(true);
        return;
        i = 0;
      }
      else
      {
        this.a.a(false);
        return;
        i = 0;
      }
    }
  }
  
  public final void a(ArrayList<Status> paramArrayList, Throwable paramThrowable, boolean paramBoolean)
  {
    if (paramArrayList == null) {
      aa.a(paramThrowable);
    }
    paramArrayList = new Bundle();
    if ((this.b != null) && (this.b.getCount() > 0))
    {
      paramThrowable = (Status)this.b.a().get(0);
      paramArrayList.putString("screen_name", paramThrowable.getScreenName());
      paramArrayList.putLong("time_stamp", paramThrowable.getCreatedAt().getTime());
      paramArrayList.putString("desc", paramThrowable.getText());
      paramArrayList.putInt("mentions", 0);
    }
    com.xueqiu.android.message.client.c.j.a(Integer.valueOf(0));
  }
  
  public final n<ArrayList<Status>> b(p<ArrayList<Status>> paramp)
  {
    return a(true, paramp);
  }
  
  public final void q()
  {
    if ((u.a().c) && (this.b != null) && (this.b.getCount() > 0))
    {
      ArrayList localArrayList = this.b.a();
      DBManager localDBManager = DBManager.getInstance();
      Object localObject = localArrayList;
      if (localArrayList.size() > 20) {
        localObject = localArrayList.subList(0, 20);
      }
      localDBManager.insertTimeline((List)localObject, 5);
    }
    super.q();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */