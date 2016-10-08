package com.xueqiu.android.common;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.d.a.b.f;
import com.google.gson.JsonObject;
import com.xueqiu.android.base.a;
import com.xueqiu.android.base.util.v;
import java.io.File;

public class e
  extends c
{
  private static final String b = e.class.getSimpleName();
  public String a = "all";
  private BroadcastReceiver c = new BroadcastReceiver()
  {
    public final void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      if (paramAnonymousIntent == null) {
        return;
      }
      paramAnonymousContext = paramAnonymousIntent.getStringExtra("extra_page_id");
      e.this.b(paramAnonymousContext);
    }
  };
  
  public void a(@Nullable Bundle paramBundle)
  {
    super.a(paramBundle);
    paramBundle = new IntentFilter("action_pull_down_ad_synced");
    android.support.v4.content.r.a(v()).a(this.c, paramBundle);
  }
  
  public void b(String paramString) {}
  
  public void o()
  {
    int m = 0;
    int j = 0;
    super.o();
    v.a(b, "onResume fragment = " + this + " pageId = " + this.a);
    Object localObject1 = a.a();
    Object localObject2 = this.a;
    Object localObject3 = ((a)localObject1).b;
    if (localObject3 == null) {}
    long l;
    label121:
    do
    {
      if (j != 0)
      {
        v.a(b, "show general notice mPageId = " + this.a);
        localObject1 = new Intent(g(), GeneralNoticeActivity.class);
        a.a();
        localObject2 = a.g();
        if (localObject2 != null) {
          break;
        }
        l = 0L;
        ((Intent)localObject1).putExtra("extra_notice_id", l);
        a((Intent)localObject1, 2130968583, 2130968584);
      }
      return;
      localObject4 = com.xueqiu.android.base.util.r.a((JsonObject)localObject3, "image", null);
    } while (TextUtils.isEmpty((CharSequence)localObject4));
    com.xueqiu.android.base.b.a();
    Object localObject4 = com.xueqiu.android.base.b.j().d().a((String)localObject4);
    if (com.xueqiu.android.base.util.r.c((JsonObject)localObject3, "cut_off_at") - System.currentTimeMillis() > 0L) {}
    for (j = 1;; j = 0)
    {
      localObject3 = com.xueqiu.android.base.util.r.a((JsonObject)localObject3, "page", null);
      if (localObject2 == null) {
        if (localObject3 != null) {
          break label293;
        }
      }
      label210:
      label293:
      for (int k = 1;; k = 0)
      {
        int i = m;
        if (localObject4 != null)
        {
          i = m;
          if (((File)localObject4).exists())
          {
            i = m;
            if (j != 0)
            {
              i = m;
              if (k != 0) {
                i = 1;
              }
            }
          }
        }
        j = i;
        if (i == 0) {
          break;
        }
        ((a)localObject1).b = null;
        j = i;
        break;
        if ((((String)localObject2).equals(localObject3)) || ("all".equals(localObject3))) {
          break label210;
        }
      }
      l = com.xueqiu.android.base.util.r.c((JsonObject)localObject2, "id");
      break label121;
    }
  }
  
  public void q()
  {
    super.q();
    android.support.v4.content.r.a(v()).a(this.c);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */