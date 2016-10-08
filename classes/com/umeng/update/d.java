package com.umeng.update;

import android.content.Context;
import com.umeng.update.util.DeltaUpdate;
import org.json.JSONObject;
import u.a.a;
import u.a.b;
import u.a.h;
import u.a.m;

public class d
  extends h
{
  private final String d = d.class.getName();
  private final String e = "update";
  private JSONObject f = a(paramContext);
  
  public d(Context paramContext)
  {
    super(null);
  }
  
  private JSONObject a(Context paramContext)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("type", "update");
      localJSONObject.put("appkey", UpdateConfig.getAppkey(paramContext));
      localJSONObject.put("version_code", a.a(paramContext));
      localJSONObject.put("package", a.g(paramContext));
      localJSONObject.put("idmd5", m.b(a.b(paramContext)));
      localJSONObject.put("channel", UpdateConfig.getChannel(paramContext));
      localJSONObject.put("proto_ver", "1.4");
      localJSONObject.put("sdk_version", "2.4.2.20140520");
      localJSONObject.put("old_md5", DeltaUpdate.b(paramContext));
      if ((DeltaUpdate.a()) && (UpdateConfig.isDeltaUpdate())) {}
      for (boolean bool = true;; bool = false)
      {
        localJSONObject.put("delta", bool);
        return localJSONObject;
      }
      return null;
    }
    catch (Exception paramContext)
    {
      b.b(this.d, "exception in updateInternal", paramContext);
    }
  }
  
  public JSONObject a()
  {
    return this.f;
  }
  
  public String b()
  {
    return this.c;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\umeng\update\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */