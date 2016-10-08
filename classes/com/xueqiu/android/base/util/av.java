package com.xueqiu.android.base.util;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.support.v4.content.r;
import com.android.volley.y;
import com.google.gson.JsonObject;
import com.google.gson.internal.LinkedTreeMap;
import com.xueqiu.android.base.b;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.am;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.q;
import com.xueqiu.android.base.storage.prefs.DefaultPrefs;
import com.xueqiu.android.base.t;
import com.xueqiu.android.base.u;
import com.xueqiu.android.common.model.RequestResult;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
import rx.c.a;
import rx.h;

public final class av
{
  Context a;
  SharedPreferences b;
  
  public av()
  {
    b.a();
    this.a = b.d();
    this.b = DefaultPrefs.getPreferences(this.a);
  }
  
  public final void a()
  {
    if (!u.a().c)
    {
      ag.d.a(new a()
      {
        public final void a()
        {
          av.this.a();
        }
      }, 1L, TimeUnit.SECONDS);
      return;
    }
    ag.d.a(new a()
    {
      public final void a()
      {
        av.a(av.this);
      }
    }, 5L, TimeUnit.SECONDS);
    b();
  }
  
  final void b()
  {
    if ((!i.e()) || (u.a().e)) {
      ag.d.a(new a()
      {
        public final void a()
        {
          av.this.b();
        }
      }, 1L, TimeUnit.SECONDS);
    }
    while ((this.a == null) || (this.b == null) || (u.a().a == null) || (u.a().d)) {
      return;
    }
    ai localai = q.a().b();
    Object localObject = new p()
    {
      public final void a(y paramAnonymousy) {}
    };
    localai.m.b((p)localObject);
    localai = q.a().b();
    localObject = new p()
    {
      public final void a(y paramAnonymousy) {}
    };
    localai.m.d((p)localObject);
    localai = q.a().b();
    localObject = new p()
    {
      public final void a(y paramAnonymousy) {}
    };
    localai.m.c((p)localObject);
    b.a();
    r.a(b.d()).a(new Intent("com.xueqiu.android.action.updateBrokerList"));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\util\av.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */