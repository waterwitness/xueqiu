package com.tencent.stat.common;

import android.content.Context;
import android.util.DisplayMetrics;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONObject;

public class Env
{
  private static JSONObject attr_json = null;
  static a basicEnv;
  String conn = null;
  Integer tel_network = null;
  
  public Env(Context paramContext)
  {
    getBasicEnv(paramContext);
    this.tel_network = StatCommonHelper.getTelephonyNetworkType(paramContext.getApplicationContext());
    this.conn = StatCommonHelper.getLinkedWay(paramContext);
  }
  
  public static void appendEnvAttr(Context paramContext, Map<String, String> paramMap)
  {
    if (paramMap == null) {}
    for (;;)
    {
      return;
      if (attr_json == null) {
        attr_json = new JSONObject();
      }
      paramContext = paramMap.entrySet().iterator();
      while (paramContext.hasNext())
      {
        paramMap = (Map.Entry)paramContext.next();
        attr_json.put((String)paramMap.getKey(), paramMap.getValue());
      }
    }
  }
  
  static a getBasicEnv(Context paramContext)
  {
    if (basicEnv == null) {
      basicEnv = new a(paramContext.getApplicationContext(), (byte)0);
    }
    return basicEnv;
  }
  
  public void encode(JSONObject paramJSONObject)
  {
    JSONObject localJSONObject = new JSONObject();
    if (basicEnv != null)
    {
      a locala = basicEnv;
      localJSONObject.put("sr", locala.c.widthPixels + "*" + locala.c.heightPixels);
      StatCommonHelper.jsonPut(localJSONObject, "av", locala.a);
      StatCommonHelper.jsonPut(localJSONObject, "ch", locala.h);
      StatCommonHelper.jsonPut(localJSONObject, "mf", locala.f);
      StatCommonHelper.jsonPut(localJSONObject, "sv", locala.b);
      StatCommonHelper.jsonPut(localJSONObject, "ov", Integer.toString(locala.d));
      localJSONObject.put("os", 1);
      StatCommonHelper.jsonPut(localJSONObject, "op", locala.i);
      StatCommonHelper.jsonPut(localJSONObject, "lg", locala.g);
      StatCommonHelper.jsonPut(localJSONObject, "md", locala.e);
      StatCommonHelper.jsonPut(localJSONObject, "tz", locala.j);
      if (locala.l != 0) {
        localJSONObject.put("jb", locala.l);
      }
      StatCommonHelper.jsonPut(localJSONObject, "sd", locala.k);
    }
    StatCommonHelper.jsonPut(localJSONObject, "cn", this.conn);
    if (this.tel_network != null) {
      localJSONObject.put("tn", this.tel_network);
    }
    paramJSONObject.put("ev", localJSONObject);
    if ((attr_json != null) && (attr_json.length() > 0)) {
      paramJSONObject.put("eva", attr_json);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\stat\common\Env.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */