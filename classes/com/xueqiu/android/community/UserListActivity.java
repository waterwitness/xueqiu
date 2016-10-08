package com.xueqiu.android.community;

import android.app.NotificationManager;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import android.widget.TextView;
import com.android.volley.n;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.an;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.q;
import com.xueqiu.android.base.storage.prefs.UserLogonDataPrefs;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.common.MainActivity;
import com.xueqiu.android.common.a.d;
import com.xueqiu.android.common.b;
import com.xueqiu.android.common.r;
import com.xueqiu.android.common.t;
import com.xueqiu.android.common.widget.SNBPullToRefreshListView;
import com.xueqiu.android.community.a.ba;
import com.xueqiu.android.community.model.FollowerUserGroup;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.stock.model.Stock;
import java.util.ArrayList;
import org.apache.http.message.BasicNameValuePair;

public class UserListActivity
  extends b
  implements t<User>
{
  private int j = -1;
  private User k = null;
  private String p = null;
  private int q = 1;
  private r<User> r = null;
  private Stock s = null;
  private boolean t = false;
  
  private n<ArrayList<User>> a(int paramInt, p<ArrayList<User>> paramp)
  {
    Object localObject = null;
    getApplication();
    ai localai = q.a().b();
    if (this.j == 2)
    {
      long l = this.k.getUserId();
      localObject = localai.h.a(new BasicNameValuePair[] { new BasicNameValuePair("uid", String.valueOf(l)), new BasicNameValuePair("pageNo", String.valueOf(paramInt)), new BasicNameValuePair("size", "20"), new BasicNameValuePair("key", null) }, paramp);
    }
    do
    {
      return (n<ArrayList<User>>)localObject;
      if (this.j == 1) {
        return localai.c(this.k.getUserId(), paramInt, paramp);
      }
      if (this.j == 3) {
        return localai.a(this.p, paramInt, 20, paramp);
      }
      if (this.j == 4)
      {
        localObject = this.s.getCode();
        return localai.h.b((String)localObject, (paramInt - 1) * 20, paramp);
      }
    } while (this.j != 5);
    localObject = this.s.getCode();
    return localai.h.c((String)localObject, paramInt, paramp);
  }
  
  public final n<ArrayList<User>> a(p<ArrayList<User>> paramp)
  {
    if (this.t)
    {
      paramp.a(new ArrayList());
      return null;
    }
    ((NotificationManager)getSystemService("notification")).cancel(4);
    this.q = 1;
    return a(this.q, paramp);
  }
  
  public final void a(ArrayList<User> paramArrayList, Throwable paramThrowable, boolean paramBoolean)
  {
    if (paramArrayList == null)
    {
      aa.a(paramThrowable);
      paramArrayList = new ArrayList();
      this.q -= 1;
      if ((!this.t) && (!paramBoolean)) {
        this.r.c();
      }
      if (((this.j == 2) || (this.j == 5)) && ((paramArrayList instanceof FollowerUserGroup)))
      {
        Object localObject = (FollowerUserGroup)paramArrayList;
        if ((((FollowerUserGroup)localObject).hasMore()) || (((FollowerUserGroup)localObject).getAnonymousCount() <= 0)) {
          break label201;
        }
        paramThrowable = LayoutInflater.from(this).inflate(2130903140, null);
        localObject = getString(2131165468, new Object[] { Integer.valueOf(((FollowerUserGroup)localObject).getAnonymousCount()) });
        ((TextView)paramThrowable.findViewById(2131624411)).setText((CharSequence)localObject);
        this.r.d().addFooterView(paramThrowable);
      }
    }
    for (;;)
    {
      if ((this.j == 4) && (paramArrayList.size() > 0)) {
        this.r.b(false);
      }
      if (this.j == 2) {
        com.xueqiu.android.message.client.c.k.a(Integer.valueOf(0));
      }
      return;
      paramArrayList.size();
      break;
      label201:
      paramThrowable = this.r.d().findViewById(2131624411);
      if (paramThrowable != null) {
        this.r.d().removeFooterView(paramThrowable);
      }
    }
  }
  
  public final n<ArrayList<User>> b(p<ArrayList<User>> paramp)
  {
    this.q += 1;
    return a(this.q, paramp);
  }
  
  public void onBackPressed()
  {
    super.onBackPressed();
    if (isTaskRoot())
    {
      Intent localIntent = new Intent(this, MainActivity.class);
      localIntent.setFlags(67108864);
      startActivity(localIntent);
    }
    finish();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903445);
    this.j = getIntent().getIntExtra("extra_list_type", 1);
    if ((this.j == 1) || (this.j == 2)) {
      this.k = ((User)getIntent().getParcelableExtra("extra_user"));
    }
    if ((this.j == 4) || (this.j == 5)) {
      this.s = ((Stock)getIntent().getParcelableExtra("extra_stock"));
    }
    ba localba = new ba(this);
    this.r = new r((SNBPullToRefreshListView)findViewById(2131624301), this);
    this.r.a(localba);
    this.r.a(new AdapterView.OnItemClickListener()
    {
      public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        paramAnonymousAdapterView = (User)UserListActivity.a(UserListActivity.this).c.getItem(paramAnonymousInt - 1);
        paramAnonymousView = new Intent(UserListActivity.this, UserProfileActivity.class);
        paramAnonymousView.putExtra("extra_user", paramAnonymousAdapterView);
        UserListActivity.this.startActivity(paramAnonymousView);
      }
    });
    String str = "";
    paramBundle = str;
    if (this.k != null) {
      if (this.j != 1)
      {
        paramBundle = str;
        if (this.j != 2) {}
      }
      else
      {
        long l = this.k.getUserId();
        u.a();
        if (l != UserLogonDataPrefs.getLogonUserId()) {
          break label329;
        }
        paramBundle = getString(2131165737);
      }
    }
    if (this.j == 2)
    {
      setTitle(String.format(getString(2131166204), new Object[] { paramBundle }));
      this.r.a(getString(2131165497));
    }
    for (;;)
    {
      paramBundle = getIntent().getStringExtra("extra_title");
      if (!TextUtils.isEmpty(paramBundle)) {
        setTitle(paramBundle);
      }
      paramBundle = getIntent().getParcelableArrayListExtra("extra_users");
      if ((paramBundle == null) || (paramBundle.size() <= 0)) {
        break label461;
      }
      this.t = true;
      this.r.c.a(new ArrayList(paramBundle));
      this.r.b(false);
      return;
      label329:
      paramBundle = this.k.getScreenName();
      break;
      if (this.j == 1)
      {
        setTitle(String.format(getString(2131166564), new Object[] { paramBundle }));
        this.r.a(getString(2131165490));
      }
      else if (this.j == 3)
      {
        setTitle(getString(2131166038));
      }
      else if (this.j == 4)
      {
        localba.f = true;
      }
      else if (this.j == 5)
      {
        setTitle(getString(2131166204, new Object[] { this.s.getCode() }));
      }
    }
    label461:
    this.r.a(true);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\UserListActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */