package com.xueqiu.android.community;

import android.app.NotificationManager;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.android.volley.n;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.q;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.common.a.d;
import com.xueqiu.android.common.b;
import com.xueqiu.android.common.r;
import com.xueqiu.android.common.t;
import com.xueqiu.android.common.widget.SNBPullToRefreshListView;
import com.xueqiu.android.community.a.af;
import com.xueqiu.android.community.model.Reward;
import java.util.ArrayList;

public class RewardListActivity
  extends b
  implements t<Reward>
{
  private r<Reward> j = null;
  private int k = 1;
  private long p;
  private String q;
  
  private n<ArrayList<Reward>> a(int paramInt, p<ArrayList<Reward>> paramp)
  {
    return q.a().b().a(this.p, this.q, paramInt, paramp);
  }
  
  public final n<ArrayList<Reward>> a(p<ArrayList<Reward>> paramp)
  {
    ((NotificationManager)getSystemService("notification")).cancel(4);
    this.k = 1;
    return a(this.k, paramp);
  }
  
  public final void a(ArrayList<Reward> paramArrayList, Throwable paramThrowable, boolean paramBoolean)
  {
    Object localObject = paramArrayList;
    if (paramArrayList == null)
    {
      aa.a(paramThrowable);
      localObject = new ArrayList();
      this.k -= 1;
    }
    if (!paramBoolean) {
      this.j.c();
    }
    if ((this.k == 1) && (((ArrayList)localObject).size() == 0)) {
      aa.a("暂无赞助数据");
    }
  }
  
  public final n<ArrayList<Reward>> b(p<ArrayList<Reward>> paramp)
  {
    this.k += 1;
    return a(this.k, paramp);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903445);
    this.p = getIntent().getLongExtra("extra_to_id", 0L);
    this.q = getIntent().getStringExtra("extra_to_type");
    paramBundle = new af(this);
    this.j = new r((SNBPullToRefreshListView)findViewById(2131624301), this);
    this.j.a(paramBundle);
    this.j.a(new AdapterView.OnItemClickListener()
    {
      public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        paramAnonymousAdapterView = (Reward)RewardListActivity.a(RewardListActivity.this).c.getItem(paramAnonymousInt);
        paramAnonymousView = new Intent(RewardListActivity.this, UserProfileActivity.class);
        paramAnonymousView.putExtra("extra_user", paramAnonymousAdapterView.getUser());
        RewardListActivity.this.startActivity(paramAnonymousView);
      }
    });
    if (this.q.equals("comment")) {
      setTitle(getString(2131165342) + getString(2131165952));
    }
    for (;;)
    {
      this.j.a(true);
      return;
      setTitle(2131165952);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\RewardListActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */