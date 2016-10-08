package com.alipay.a.a;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

public final class g
{
  public static e a(String paramString)
  {
    if (paramString == null) {
      paramString = null;
    }
    e locale;
    for (;;)
    {
      return paramString;
      Log.i("deviceid", "server response is" + paramString);
      locale = new e();
      try
      {
        localObject = new JSONObject(paramString);
        locale.h = ((JSONObject)localObject).getBoolean("success");
        paramString = locale;
        if (locale.h)
        {
          localObject = ((JSONObject)localObject).getJSONObject("data");
          paramString = locale;
          if (localObject != null)
          {
            locale.a = ((JSONObject)localObject).getString("version");
            locale.b = ((JSONObject)localObject).getString("apdid");
            locale.c = ((JSONObject)localObject).getString("apdtk");
            paramString = ((JSONObject)localObject).getJSONObject("rule");
            if (paramString != null) {
              locale.g = paramString.getString("function");
            }
            locale.d = paramString.toString();
            locale.e = ((JSONObject)localObject).getString("time");
            locale.f = ((JSONObject)localObject).getString("checkcode");
            return locale;
          }
        }
      }
      catch (JSONException paramString)
      {
        Object localObject = new ArrayList();
        ((List)localObject).add("");
        ((List)localObject).add("");
        ((List)localObject).add("");
        ((List)localObject).add(f.a(paramString));
        f.a((List)localObject);
      }
    }
    return locale;
  }
  
  static String a(Map<String, String> paramMap)
  {
    if ((paramMap != null) && (paramMap.size() > 0))
    {
      paramMap = paramMap.entrySet().iterator();
      JSONObject localJSONObject = new JSONObject();
      for (;;)
      {
        if (!paramMap.hasNext()) {
          return localJSONObject.toString();
        }
        Object localObject = (Map.Entry)paramMap.next();
        String str = (String)((Map.Entry)localObject).getKey();
        localObject = (String)((Map.Entry)localObject).getValue();
        try
        {
          localJSONObject.put(str, localObject);
        }
        catch (JSONException localJSONException) {}
      }
    }
    return null;
  }
  
  static void a(SharedPreferences paramSharedPreferences, Map<String, String> paramMap)
  {
    if (paramSharedPreferences != null)
    {
      paramSharedPreferences = paramSharedPreferences.edit();
      if (paramSharedPreferences != null)
      {
        paramSharedPreferences.clear();
        paramMap = paramMap.entrySet().iterator();
      }
    }
    for (;;)
    {
      if (!paramMap.hasNext())
      {
        paramSharedPreferences.commit();
        return;
      }
      Object localObject = (Map.Entry)paramMap.next();
      String str = (String)((Map.Entry)localObject).getKey();
      localObject = ((Map.Entry)localObject).getValue();
      if ((localObject instanceof String)) {
        paramSharedPreferences.putString(str, (String)localObject);
      } else if ((localObject instanceof Integer)) {
        paramSharedPreferences.putInt(str, ((Integer)localObject).intValue());
      } else if ((localObject instanceof Long)) {
        paramSharedPreferences.putLong(str, ((Long)localObject).longValue());
      } else if ((localObject instanceof Float)) {
        paramSharedPreferences.putFloat(str, ((Float)localObject).floatValue());
      } else if ((localObject instanceof Boolean)) {
        paramSharedPreferences.putBoolean(str, ((Boolean)localObject).booleanValue());
      }
    }
  }
  
  public static String b(Map<String, Object> paramMap)
  {
    JSONObject localJSONObject1 = new JSONObject();
    JSONObject localJSONObject2 = new JSONObject();
    JSONObject localJSONObject3 = new JSONObject();
    for (;;)
    {
      try
      {
        if (paramMap.size() > 0)
        {
          paramMap = paramMap.entrySet().iterator();
          if (paramMap.hasNext()) {
            continue;
          }
        }
        localJSONObject2.put("os", "android");
        localJSONObject2.put("data", localJSONObject3);
        localJSONObject1.put("type", "deviceinfo");
        localJSONObject1.put("model", localJSONObject2);
      }
      catch (JSONException paramMap)
      {
        Map.Entry localEntry;
        String str;
        continue;
      }
      return localJSONObject1.toString();
      localEntry = (Map.Entry)paramMap.next();
      str = (String)localEntry.getKey();
      if (str.equals("deviceInfo")) {
        localJSONObject3.put(str, new JSONObject(a((Map)localEntry.getValue())));
      } else {
        localJSONObject3.put(str, (String)localEntry.getValue());
      }
    }
  }
  
  public static Map<String, String> b(String paramString)
  {
    try
    {
      paramString = new JSONObject(paramString);
      Iterator localIterator = paramString.keys();
      HashMap localHashMap = new HashMap();
      for (;;)
      {
        if (!localIterator.hasNext()) {
          return localHashMap;
        }
        String str = (String)localIterator.next();
        localHashMap.put(str, (String)paramString.get(str));
      }
      return null;
    }
    catch (JSONException paramString)
    {
      paramString.printStackTrace();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\alipay\a\a\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */