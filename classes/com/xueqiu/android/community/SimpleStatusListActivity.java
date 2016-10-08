package com.xueqiu.android.community;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.android.volley.n;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.aj;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.b.x;
import com.xueqiu.android.base.q;
import com.xueqiu.android.base.storage.prefs.UserLogonDataPrefs;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.common.a.d;
import com.xueqiu.android.common.b;
import com.xueqiu.android.common.r;
import com.xueqiu.android.common.t;
import com.xueqiu.android.common.widget.SNBPullToRefreshListView;
import com.xueqiu.android.community.a.ak;
import com.xueqiu.android.community.model.Status;
import com.xueqiu.android.community.widget.i;
import java.util.ArrayList;
import java.util.Iterator;

public class SimpleStatusListActivity
  extends b
  implements t<Status>
{
  private int j = 1;
  private i k = null;
  private int p = 1;
  
  private x<ArrayList<Status>> c(p<ArrayList<Status>> paramp)
  {
    ai localai = q.a().b();
    if (this.j == 1)
    {
      u.a();
      long l = UserLogonDataPrefs.getLogonUserId();
      int i = this.p;
      return localai.g.b(l, i, paramp);
    }
    if (this.j == 2)
    {
      u.a();
      return localai.a(UserLogonDataPrefs.getLogonUserId(), 0, 20, this.p, paramp);
    }
    return null;
  }
  
  public final n<ArrayList<Status>> a(p<ArrayList<Status>> paramp)
  {
    this.p = 1;
    return c(paramp);
  }
  
  public final void a(ArrayList<Status> paramArrayList, Throwable paramThrowable, boolean paramBoolean)
  {
    if (paramArrayList == null) {
      aa.a(paramThrowable);
    }
    while ((paramArrayList == null) || (this.p != 1)) {
      return;
    }
    this.k.c();
  }
  
  public final n<ArrayList<Status>> b(p<ArrayList<Status>> paramp)
  {
    this.p += 1;
    return c(paramp);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((paramInt1 == 1) && (paramInt2 == 2))
    {
      long l = paramIntent.getLongExtra("delete_status_id", 0L);
      paramIntent = this.k.c.a();
      Iterator localIterator = paramIntent.iterator();
      while (localIterator.hasNext())
      {
        Status localStatus = (Status)localIterator.next();
        if (localStatus.getStatusId() == l) {
          paramIntent.remove(localStatus);
        }
      }
      this.k.c.notifyDataSetChanged();
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903446);
    this.j = getIntent().getExtras().getInt("extra_status_source");
    paramBundle = new ak(this);
    this.k = new i((SNBPullToRefreshListView)findViewById(2131624301), this);
    this.k.a(paramBundle);
    this.k.a(new AdapterView.OnItemClickListener()
    {
      public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        paramAnonymousAdapterView = (Status)SimpleStatusListActivity.a(SimpleStatusListActivity.this).c.getItem(paramAnonymousInt - 1);
        paramAnonymousView = new Intent(SimpleStatusListActivity.this, StatusDetailActivity.class);
        paramAnonymousView.putExtra("status", paramAnonymousAdapterView);
        SimpleStatusListActivity.this.startActivityForResult(paramAnonymousView, 1);
      }
    });
    if (this.j == 1)
    {
      setTitle(2131165747);
      this.k.a(getString(2131165498));
    }
    for (;;)
    {
      this.k.a(true);
      return;
      setTitle(2131165751);
      this.k.a(getString(2131165500));
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\SimpleStatusListActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */