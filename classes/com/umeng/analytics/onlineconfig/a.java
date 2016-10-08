package com.umeng.analytics.onlineconfig;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.umeng.analytics.AnalyticsConfig;
import com.umeng.analytics.g;
import java.util.Iterator;
import org.json.JSONObject;
import u.aly.er;
import u.aly.es;
import u.aly.ex;

public class a
{
  public static final String a = "type";
  public static final String b = "package";
  public static final String c = "channel";
  public static final String d = "idmd5";
  public static final String e = "version_code";
  public static final String f = "appkey";
  public static final String g = "sdk_version";
  private final String h = "last_config_time";
  private final String i = "report_policy";
  private final String j = "online_config";
  private UmengOnlineConfigureListener k = null;
  private c l = null;
  private long m = 0L;
  
  private void a(Context paramContext, b paramb)
  {
    SharedPreferences.Editor localEditor = g.a(paramContext).g().edit();
    if (!TextUtils.isEmpty(paramb.e))
    {
      localEditor.putString("umeng_last_config_time", paramb.e);
      localEditor.commit();
    }
    if (paramb.c != -1) {
      g.a(paramContext).a(paramb.c, paramb.d);
    }
  }
  
  private void a(JSONObject paramJSONObject)
  {
    if (this.k != null) {
      this.k.onDataReceived(paramJSONObject);
    }
  }
  
  private JSONObject b(Context paramContext)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("type", "online_config");
      localJSONObject.put("appkey", AnalyticsConfig.getAppkey(paramContext));
      localJSONObject.put("version_code", er.a(paramContext));
      localJSONObject.put("package", er.o(paramContext));
      localJSONObject.put("sdk_version", "5.2.4");
      localJSONObject.put("idmd5", ex.b(er.c(paramContext)));
      localJSONObject.put("channel", AnalyticsConfig.getChannel(paramContext));
      localJSONObject.put("report_policy", g.a(paramContext).a()[0]);
      localJSONObject.put("last_config_time", c(paramContext));
      return localJSONObject;
    }
    catch (Exception paramContext)
    {
      es.b("MobclickAgent", "exception in onlineConfigInternal");
    }
    return null;
  }
  
  private void b(Context paramContext, b paramb)
  {
    if ((paramb.a == null) || (paramb.a.length() == 0)) {
      return;
    }
    paramContext = g.a(paramContext).g().edit();
    for (;;)
    {
      Iterator localIterator;
      try
      {
        paramb = paramb.a;
        localIterator = paramb.keys();
        if (!localIterator.hasNext())
        {
          paramContext.commit();
          es.a("MobclickAgent", "get online setting params: " + paramb);
          return;
        }
      }
      catch (Exception paramContext)
      {
        es.c("MobclickAgent", "save online config params", paramContext);
        return;
      }
      String str = (String)localIterator.next();
      paramContext.putString(str, paramb.getString(str));
    }
  }
  
  private String c(Context paramContext)
  {
    return g.a(paramContext).g().getString("umeng_last_config_time", "");
  }
  
  public void a()
  {
    this.k = null;
  }
  
  public void a(Context paramContext)
  {
    if (paramContext == null) {}
    try
    {
      es.b("MobclickAgent", "unexpected null context in updateOnlineConfig");
      return;
    }
    catch (Exception paramContext)
    {
      es.b("MobclickAgent", "exception in updateOnlineConfig");
      return;
    }
    if ((es.a) && (er.q(paramContext)))
    {
      new Thread(new a.b(this, paramContext.getApplicationContext())).start();
      return;
    }
    long l1 = System.currentTimeMillis();
    if (l1 - this.m > 3600000L)
    {
      this.m = l1;
      new Thread(new a.b(this, paramContext.getApplicationContext())).start();
    }
  }
  
  public void a(UmengOnlineConfigureListener paramUmengOnlineConfigureListener)
  {
    this.k = paramUmengOnlineConfigureListener;
  }
  
  public void a(c paramc)
  {
    this.l = paramc;
  }
  
  public void b()
  {
    this.l = null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\umeng\analytics\onlineconfig\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */