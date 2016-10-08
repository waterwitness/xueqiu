package com.xiaomi.push.service;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;

public final class an
{
  private static an c = null;
  Context a;
  List<String> b = new ArrayList();
  
  private an(Context paramContext)
  {
    this.a = paramContext.getApplicationContext();
    if (this.a == null) {
      this.a = paramContext;
    }
    paramContext = this.a.getSharedPreferences("mipush_app_info", 0).getString("unregistered_pkg_names", "").split(",");
    int j = paramContext.length;
    while (i < j)
    {
      CharSequence localCharSequence = paramContext[i];
      if (TextUtils.isEmpty(localCharSequence)) {
        this.b.add(localCharSequence);
      }
      i += 1;
    }
  }
  
  public static an a(Context paramContext)
  {
    if (c == null) {
      c = new an(paramContext);
    }
    return c;
  }
  
  public final boolean a(String paramString)
  {
    synchronized (this.b)
    {
      boolean bool = this.b.contains(paramString);
      return bool;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\push\service\an.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */