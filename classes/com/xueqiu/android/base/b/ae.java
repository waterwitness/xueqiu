package com.xueqiu.android.base.b;

import android.text.TextUtils;
import com.android.volley.h;
import com.android.volley.p;
import com.xueqiu.android.base.storage.prefs.UserLogonDataPrefs;
import com.xueqiu.android.base.t;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.ac;
import com.xueqiu.android.base.util.y;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class ae
  extends p
{
  y e = null;
  private String f = null;
  
  public ae(String paramString, com.android.volley.b paramb, h paramh)
  {
    super(paramb, paramh, (byte)0);
    this.f = paramString;
  }
  
  public ae(String paramString, com.android.volley.b paramb, h paramh, y paramy)
  {
    this(paramString, paramb, paramh);
    this.e = paramy;
  }
  
  public final x<?> a(x<?> paramx)
  {
    int j = 1;
    Object localObject1 = paramx.a();
    try
    {
      Object localObject2 = new URL((String)localObject1);
      localObject1 = ((URL)localObject2).getProtocol();
      String str1 = ((URL)localObject2).getHost();
      if (((String)localObject1).equals("https"))
      {
        i = j;
        if (!Pattern.matches("(\\w+\\.)*xueqiu\\.com", str1)) {
          if (!str1.equals("xueqiu.yun.pingan.com")) {
            break label339;
          }
        }
      }
      label339:
      for (int i = j;; i = 0)
      {
        if ((i != 0) || (ac.a.matcher(str1).find()))
        {
          localObject1 = new HashMap();
          if (paramx.c() != null) {
            localObject1 = paramx.c();
          }
          HashMap localHashMap = new HashMap();
          if (!((Map)localObject1).containsKey("User-Agent")) {
            localHashMap.put("User-Agent", String.format("Xueqiu Android %s", new Object[] { this.f }));
          }
          if (!((Map)localObject1).containsKey("Accept-Encoding")) {
            localHashMap.put("Accept-Encoding", "gzip");
          }
          if (!((Map)localObject1).containsKey("Accept-Language")) {
            localHashMap.put("Accept-Language", "en-US,en;q=0.8,zh-CN;q=0.6,zh;q=0.4");
          }
          if ((!((Map)localObject1).containsKey("Cookie")) && (!TextUtils.isEmpty(u.a().a)))
          {
            String str2 = u.a().a;
            u.a();
            localHashMap.put("Cookie", String.format("xq_a_token=%s;u=%s", new Object[] { str2, Long.valueOf(UserLogonDataPrefs.getLogonUserId()) }));
          }
          ((Map)localObject1).putAll(localHashMap);
          if (ac.a.matcher(str1).find())
          {
            localObject2 = ((URL)localObject2).getPath();
            ((Map)localObject1).put("host", com.xueqiu.android.base.c.b.a().c((String)localObject2));
          }
          paramx.a((Map)localObject1);
        }
        if (this.e != null) {
          paramx.m = new aa()
          {
            public final void a(String paramAnonymousString, int paramAnonymousInt)
            {
              ae.this.e.a("API_DOWN", paramAnonymousString, paramAnonymousInt, System.currentTimeMillis());
            }
          };
        }
        a(paramx);
        return paramx;
      }
      return paramx;
    }
    catch (MalformedURLException localMalformedURLException)
    {
      localMalformedURLException.printStackTrace();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\b\ae.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */