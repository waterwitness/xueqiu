package com.xueqiu.android.community;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.android.volley.n;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.b.x;
import com.xueqiu.android.base.q;
import com.xueqiu.android.base.storage.prefs.UserLogonDataPrefs;
import com.xueqiu.android.base.u;
import com.xueqiu.android.common.b;
import com.xueqiu.android.common.r;
import com.xueqiu.android.common.t;
import com.xueqiu.android.common.widget.SNBPullToRefreshListView;
import com.xueqiu.android.community.a.ak;
import com.xueqiu.android.community.model.Status;
import com.xueqiu.android.community.model.User;
import java.util.ArrayList;
import java.util.Locale;

public class UserHotStatusActivity
  extends b
  implements t<Status>
{
  public int j = 1;
  private User k;
  private r<Status> p;
  private ak q;
  
  private x<ArrayList<Status>> a(boolean paramBoolean, p<ArrayList<Status>> paramp)
  {
    if (paramBoolean) {}
    for (this.j += 1;; this.j = 1) {
      return q.a().b().a(this.k.getUserId(), this.j, 10, paramp);
    }
  }
  
  public final n<ArrayList<Status>> a(p<ArrayList<Status>> paramp)
  {
    return a(false, paramp);
  }
  
  public final void a(ArrayList<Status> paramArrayList, Throwable paramThrowable, boolean paramBoolean) {}
  
  public final n<ArrayList<Status>> b(p<ArrayList<Status>> paramp)
  {
    return a(true, paramp);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903125);
    this.k = ((User)getIntent().getParcelableExtra("extra_user"));
    this.p = new r((SNBPullToRefreshListView)findViewById(2131624017), this);
    this.q = new ak(this);
    this.q.h = true;
    this.p.a(this.q);
    this.p.c(false);
    this.p.f = 10;
    this.p.a(new AdapterView.OnItemClickListener()
    {
      public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        paramAnonymousAdapterView = (Status)UserHotStatusActivity.a(UserHotStatusActivity.this).a().get(paramAnonymousInt - 1);
        if (paramAnonymousAdapterView.getType().equals("normal"))
        {
          paramAnonymousView = new Intent(UserHotStatusActivity.this, StatusDetailActivity.class);
          paramAnonymousView.putExtra("status", paramAnonymousAdapterView);
          UserHotStatusActivity.this.startActivity(paramAnonymousView);
        }
      }
    });
    long l = this.k.getUserId();
    u.a();
    int i;
    Locale localLocale;
    if (l == UserLogonDataPrefs.getLogonUserId())
    {
      i = 1;
      localLocale = Locale.CHINA;
      if (i == 0) {
        break label178;
      }
    }
    label178:
    for (paramBundle = "我";; paramBundle = this.k.getScreenName())
    {
      setTitle(String.format(localLocale, "%s的热门讨论", new Object[] { paramBundle }));
      this.p.a(true);
      return;
      i = 0;
      break;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\UserHotStatusActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */