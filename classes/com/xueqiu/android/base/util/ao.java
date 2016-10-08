package com.xueqiu.android.base.util;

import android.content.Context;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;

public final class ao
{
  public static void a(Context paramContext)
  {
    CookieManager localCookieManager = CookieManager.getInstance();
    if ((localCookieManager.getCookie("xueqiu.com") != null) || (localCookieManager.getCookie(".xueqiu.com") != null)) {}
    for (int i = 1; i == 0; i = 0) {
      return;
    }
    String[] arrayOfString1 = localCookieManager.getCookie("xueqiu.com").split(";");
    i = 0;
    while (i < arrayOfString1.length)
    {
      String[] arrayOfString2 = arrayOfString1[i].split("=");
      localCookieManager.setCookie("xueqiu.com", arrayOfString2[0].trim() + "=;" + "Expires=Wed, 31 Dec 2001 23:59:59 GMT");
      localCookieManager.setCookie(".xueqiu.com", arrayOfString2[0].trim() + "=;" + "Expires=Wed, 31 Dec 2001 23:59:59 GMT");
      i += 1;
    }
    CookieManager.getInstance().removeExpiredCookie();
    CookieSyncManager.createInstance(paramContext);
    CookieSyncManager.getInstance().sync();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\util\ao.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */