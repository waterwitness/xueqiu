package com.xueqiu.android.common.account;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.tencent.tauth.TencentOpenAPI;
import com.tencent.tauth.bean.OpenId;
import com.tencent.tauth.http.Callback;
import com.tencent.tauth.http.TDebug;
import com.xueqiu.android.base.b;
import com.xueqiu.android.base.r;

public final class f
  extends BroadcastReceiver
{
  public f(c paramc) {}
  
  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = paramIntent.getExtras().getString("raw");
    paramContext = paramContext.substring(paramContext.indexOf("#") + 1).split("&");
    int j = paramContext.length;
    int i = 0;
    if (i < j)
    {
      paramIntent = paramContext[i];
      if (paramIntent.startsWith("access_token=")) {
        this.a.e = paramIntent.split("=")[1].trim();
      }
      while (!paramIntent.startsWith("expires_in="))
      {
        i += 1;
        break;
      }
      this.a.f = Long.parseLong(paramIntent.split("=")[1].trim());
    }
    if (this.a.e != null)
    {
      this.a.a(r.d(2131165718));
      TencentOpenAPI.openid(this.a.e, new Callback()
      {
        public final void onFail(int paramAnonymousInt, final String paramAnonymousString)
        {
          c.a(f.this.a, new Runnable()
          {
            public final void run()
            {
              f.this.a.k.i();
              String str = paramAnonymousString;
              b.a();
              TDebug.msg(str, b.d());
            }
          });
        }
        
        public final void onSuccess(final Object paramAnonymousObject)
        {
          c.a(f.this.a, new Runnable()
          {
            public final void run()
            {
              f.this.a.d = ((OpenId)paramAnonymousObject).getOpenId();
              f.this.a.c = "qq";
              c.a(f.this.a);
            }
          });
        }
      });
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\account\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */