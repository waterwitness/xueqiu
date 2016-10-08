package com.xiaomi.push.service;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.xiaomi.a.a.b.c;
import com.xiaomi.a.a.c.a;
import com.xiaomi.a.a.d.b;
import java.util.Map;
import java.util.TreeMap;
import org.json.JSONObject;

public final class am
{
  private static al a;
  
  public static al a(Context paramContext)
  {
    Object localObject3 = null;
    for (;;)
    {
      Object localObject1;
      try
      {
        if (a != null)
        {
          localObject1 = a;
          return (al)localObject1;
        }
        SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("mipush_account", 0);
        String str1 = localSharedPreferences.getString("uuid", null);
        String str2 = localSharedPreferences.getString("token", null);
        String str3 = localSharedPreferences.getString("security", null);
        String str4 = localSharedPreferences.getString("app_id", null);
        String str5 = localSharedPreferences.getString("app_token", null);
        String str6 = localSharedPreferences.getString("package_name", null);
        localObject1 = localSharedPreferences.getString("device_id", null);
        int i = localSharedPreferences.getInt("env_type", 1);
        Object localObject2 = localObject1;
        if (!TextUtils.isEmpty((CharSequence)localObject1))
        {
          localObject2 = localObject1;
          if (((String)localObject1).startsWith("a-"))
          {
            localObject2 = ak.c(paramContext);
            localSharedPreferences.edit().putString("device_id", (String)localObject2).commit();
          }
        }
        localObject1 = localObject3;
        if (TextUtils.isEmpty(str1)) {
          continue;
        }
        localObject1 = localObject3;
        if (TextUtils.isEmpty(str2)) {
          continue;
        }
        localObject1 = localObject3;
        if (TextUtils.isEmpty(str3)) {
          continue;
        }
        localObject1 = ak.c(paramContext);
        if ((!"com.xiaomi.xmsf".equals(paramContext.getPackageName())) && (!TextUtils.isEmpty((CharSequence)localObject1)) && (!TextUtils.isEmpty((CharSequence)localObject2)) && (!((String)localObject2).equals(localObject1)))
        {
          c.d("erase the old account.");
          b(paramContext);
          localObject1 = localObject3;
          continue;
        }
        localObject1 = new al(str1, str2, str3, str4, str5, str6, i);
      }
      finally {}
      a = (al)localObject1;
    }
  }
  
  public static al a(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    Object localObject3 = null;
    for (;;)
    {
      try
      {
        Object localObject2 = new TreeMap();
        ((Map)localObject2).put("devid", ak.a(paramContext));
        if (c(paramContext))
        {
          paramString2 = "1000271";
          if (!c(paramContext)) {
            continue;
          }
          paramString3 = "420100086271";
          if (!c(paramContext)) {
            continue;
          }
          paramString1 = "com.xiaomi.xmsf";
          ((Map)localObject2).put("appid", paramString2);
          ((Map)localObject2).put("apptoken", paramString3);
        }
        StringBuilder localStringBuilder;
        try
        {
          Object localObject1 = paramContext.getPackageManager().getPackageInfo(paramString1, 16384);
          if (localObject1 == null) {
            break label611;
          }
          localObject1 = String.valueOf(((PackageInfo)localObject1).versionCode);
          ((Map)localObject2).put("appversion", localObject1);
          ((Map)localObject2).put("'sdkversion", Integer.toString(8));
          ((Map)localObject2).put("packagename", paramString1);
          ((Map)localObject2).put("model", Build.MODEL);
          ((Map)localObject2).put("imei_md5", com.xiaomi.a.a.f.d.a(ak.b(paramContext)));
          ((Map)localObject2).put("os", Build.VERSION.RELEASE + "-" + Build.VERSION.INCREMENTAL);
          if (a.b())
          {
            localObject1 = "http://10.237.12.17:9085/pass/register";
            localObject2 = com.xiaomi.a.a.d.d.a(paramContext, (String)localObject1, (Map)localObject2);
            localObject1 = "";
            if (localObject2 != null) {
              localObject1 = ((b)localObject2).c;
            }
            localObject2 = localObject3;
            if (!TextUtils.isEmpty((CharSequence)localObject1))
            {
              localObject2 = new JSONObject((String)localObject1);
              if (((JSONObject)localObject2).getInt("code") != 0) {
                continue;
              }
              localObject3 = ((JSONObject)localObject2).getJSONObject("data");
              localObject1 = ((JSONObject)localObject3).getString("ssecurity");
              localObject2 = ((JSONObject)localObject3).getString("token");
              localObject3 = ((JSONObject)localObject3).getString("userId");
              localObject2 = new al((String)localObject3 + "@xiaomi.com/an" + com.xiaomi.a.a.f.d.a(6), (String)localObject2, (String)localObject1, paramString2, paramString3, paramString1, a.c());
              paramString1 = paramContext.getSharedPreferences("mipush_account", 0).edit();
              paramString1.putString("uuid", ((al)localObject2).a);
              paramString1.putString("security", ((al)localObject2).c);
              paramString1.putString("token", ((al)localObject2).b);
              paramString1.putString("app_id", ((al)localObject2).d);
              paramString1.putString("package_name", ((al)localObject2).f);
              paramString1.putString("app_token", ((al)localObject2).e);
              paramString1.putString("device_id", ak.c(paramContext));
              paramString1.putInt("env_type", ((al)localObject2).g);
              paramString1.commit();
              a = (al)localObject2;
            }
            return (al)localObject2;
            continue;
            continue;
          }
        }
        catch (Exception localException)
        {
          c.a(localException);
          str = null;
          continue;
          localStringBuilder = new StringBuilder("https://");
          if (!a.a()) {
            break label619;
          }
        }
        str = "sandbox.xmpush.xiaomi.com";
        str = str + "/pass/register";
        continue;
        ap.a(paramContext, ((JSONObject)localObject2).getInt("code"), ((JSONObject)localObject2).optString("description"));
        c.a(str);
        localObject2 = localObject3;
        continue;
        str = "0";
      }
      finally {}
      label611:
      continue;
      label619:
      String str = "register.xmpush.xiaomi.com";
    }
  }
  
  public static void b(Context paramContext)
  {
    paramContext.getSharedPreferences("mipush_account", 0).edit().clear().commit();
    a = null;
  }
  
  private static boolean c(Context paramContext)
  {
    return paramContext.getPackageName().equals("com.xiaomi.xmsf");
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\push\service\am.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */