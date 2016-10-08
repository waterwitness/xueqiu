package com.xueqiu.android.community;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.content.r;
import android.support.v7.a.g;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.volley.y;
import com.d.a.b.d;
import com.d.a.b.e;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.an;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.b.t;
import com.xueqiu.android.base.storage.prefs.UserLogonDataPrefs;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.au;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.base.util.ba;
import com.xueqiu.android.base.util.n;
import com.xueqiu.android.common.WebViewActivity;
import com.xueqiu.android.community.model.User;
import java.util.Locale;

public class UserInfoShowActivity
  extends com.xueqiu.android.common.b
{
  private User j;
  private String k;
  private BroadcastReceiver p = new BroadcastReceiver()
  {
    public final void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      paramAnonymousContext = new t(UserInfoShowActivity.this);
      UserInfoShowActivity.g().g(UserInfoShowActivity.a(UserInfoShowActivity.this).getUserId(), paramAnonymousContext);
      paramAnonymousContext.a(UserInfoShowActivity.this).c(new rx.c.b() {});
    }
  };
  
  private void j()
  {
    findViewById(2131624151);
    Object localObject = n.a();
    ((e)localObject).b = 2130838024;
    ((e)localObject).c = 2130838024;
    ((e)localObject).a = 2130838024;
    ((e)localObject).q = new com.d.a.b.c.c((int)ay.a(36.0F));
    localObject = ((e)localObject).b();
    com.d.a.b.f.a().a(this.j.getProfileLargeImageUrl(), (ImageView)findViewById(2131624151), (d)localObject);
  }
  
  private void k()
  {
    ((TextView)findViewById(2131624400)).setText(this.j.getScreenName());
    ((TextView)findViewById(2131624584)).setText(this.j.getDescription());
    Object localObject2 = (TextView)findViewById(2131624585);
    Object localObject1 = getString(2131165564);
    switch (4.a[this.j.getGender().ordinal()])
    {
    }
    for (;;)
    {
      ((TextView)localObject2).setText((CharSequence)localObject1);
      TextView localTextView = (TextView)findViewById(2131624586);
      localObject2 = this.j.getProvince();
      localObject1 = localObject2;
      if (!au.a((String)localObject2))
      {
        localObject1 = localObject2;
        if (this.j.getCity() != null)
        {
          localObject1 = localObject2;
          if (!this.j.getCity().equals(getString(2131165310))) {
            localObject1 = (String)localObject2 + this.j.getCity();
          }
        }
      }
      localTextView.setText((CharSequence)localObject1);
      return;
      localObject1 = getString(2131165563);
      continue;
      localObject1 = getString(2131165562);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903195);
    setTitle(2131166568);
    this.j = ((User)getIntent().getParcelableExtra("extra_user"));
    r.a(this).a(this.p, new IntentFilter("com.xueqiu.android.user.UPDATE_USER_INFO"));
    if (this.j != null)
    {
      long l = this.j.getUserId();
      u.a();
      if (l == UserLogonDataPrefs.getLogonUserId())
      {
        paramBundle = new android.support.v7.a.c(21, (byte)0);
        localObject = View.inflate(this, 2130903234, null);
        this.i.b().a((View)localObject, paramBundle);
        ((View)localObject).findViewById(2131624719).setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            paramAnonymousView = new Intent(UserInfoShowActivity.this, UpdateUserInfoActivity.class);
            Bundle localBundle = new Bundle();
            localBundle.putParcelable("user", UserInfoShowActivity.a(UserInfoShowActivity.this));
            paramAnonymousView.putExtras(localBundle);
            UserInfoShowActivity.this.startActivity(paramAnonymousView);
          }
        });
        this.i.b().d(true);
      }
      this.k = ba.b(this.j);
      j();
      k();
      paramBundle = (ViewGroup)findViewById(2131624587);
      if ((this.j.isVerified()) || (this.j.isVerifiedRealName()))
      {
        paramBundle.setVisibility(0);
        ((TextView)paramBundle.findViewById(2131624588)).setText(String.format(Locale.CHINA, "%s的认证", new Object[] { this.k }));
        if (this.j.isVerified())
        {
          paramBundle.findViewById(2131624589).setVisibility(0);
          localObject = ba.a(this.j);
          ((ImageView)paramBundle.findViewById(2131624590)).setImageDrawable((Drawable)localObject);
          ((TextView)paramBundle.findViewById(2131624591)).setText(this.j.getVerifiedDescription());
        }
        if (this.j.isVerifiedRealName()) {
          paramBundle.findViewById(2131624592).setVisibility(0);
        }
      }
      ((TextView)findViewById(2131624594)).setText(String.format(Locale.CHINA, "%s的微博", new Object[] { this.k }));
      paramBundle = com.xueqiu.android.base.q.a().b();
      l = this.j.getUserId();
      Object localObject = new p(this)
      {
        public final void a(y paramAnonymousy)
        {
          aa.a(paramAnonymousy);
        }
      };
      paramBundle.h.a("sina", l, (p)localObject);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\UserInfoShowActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */