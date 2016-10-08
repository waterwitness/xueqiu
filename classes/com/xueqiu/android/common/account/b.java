package com.xueqiu.android.common.account;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.v4.content.r;
import com.android.volley.y;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.q;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.common.model.LoginResult;
import com.xueqiu.android.common.model.RequestResult;

public final class b
{
  LoginActivity a;
  String b = null;
  public boolean c = false;
  public String d = null;
  public boolean e = false;
  BroadcastReceiver f = new BroadcastReceiver()
  {
    public final void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      r.a(b.this.a).a(this);
      b.this.a.finish();
    }
  };
  
  public b(LoginActivity paramLoginActivity)
  {
    this.a = paramLoginActivity;
    q.a().b().d(null, null, null, new p()
    {
      public final void a(y paramAnonymousy)
      {
        aa.a(paramAnonymousy);
      }
    });
    r.a(this.a).a(this.f, new IntentFilter("action_regist_successed"));
  }
  
  final void a(final String paramString1, final String paramString2, String paramString3, final boolean paramBoolean)
  {
    p local2 = new p()
    {
      public final void a(y paramAnonymousy)
      {
        b.this.a.i();
        aa.a(paramAnonymousy);
      }
    };
    if (paramBoolean)
    {
      q.a().b().c(paramString1, paramString2, paramString3, local2);
      return;
    }
    q.a().b().b(paramString1, paramString2, paramString3, local2);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\account\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */