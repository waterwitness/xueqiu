package com.xueqiu.android.base.h5;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.webkit.WebView;
import com.xueqiu.android.base.util.v;

public final class m
  extends BroadcastReceiver
{
  private WebView b;
  private String c;
  private String d;
  private String e;
  private String f;
  
  public m(l paraml, WebView paramWebView, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    this.b = paramWebView;
    this.c = paramString1;
    this.d = paramString2;
    this.e = paramString3;
    this.f = paramString4;
  }
  
  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = paramIntent.getStringExtra("state_key");
    v.a("solory", "state  : " + paramContext);
    if ("success".equals(paramContext)) {
      l.a(this.b, this.c, null);
    }
    for (;;)
    {
      l.a(this.b, this.f, null);
      return;
      if ("erro".equals(paramContext)) {
        l.a(this.b, this.d, null);
      } else if ("cancel".equals(paramContext)) {
        l.a(this.b, this.e, null);
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\h5\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */