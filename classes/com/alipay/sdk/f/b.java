package com.alipay.sdk.f;

import android.text.TextUtils;
import org.json.JSONObject;

public final class b
{
  String a;
  String b;
  String c;
  String d;
  String e;
  boolean f;
  boolean g = true;
  boolean h = true;
  String i;
  String j;
  String k;
  JSONObject l;
  
  private b(String paramString)
  {
    this.a = paramString;
  }
  
  public static b a(JSONObject paramJSONObject, String paramString)
  {
    boolean bool4 = true;
    Object localObject4 = null;
    JSONObject localJSONObject = paramJSONObject.optJSONObject(paramString);
    if ((localJSONObject != null) && (localJSONObject.has("name"))) {}
    for (paramJSONObject = localJSONObject.optString("name");; paramJSONObject = null)
    {
      if ((localJSONObject != null) && (localJSONObject.has("host"))) {}
      for (paramString = localJSONObject.optString("host");; paramString = null)
      {
        if ((localJSONObject != null) && (localJSONObject.has("params"))) {}
        for (String str1 = localJSONObject.optString("params");; str1 = null)
        {
          if ((localJSONObject != null) && (localJSONObject.has("enctype"))) {}
          for (String str2 = localJSONObject.optString("enctype");; str2 = null)
          {
            if ((localJSONObject != null) && (localJSONObject.has("request_param"))) {}
            for (String str3 = localJSONObject.optString("request_param");; str3 = null)
            {
              if ((localJSONObject != null) && (localJSONObject.has("validate"))) {}
              for (boolean bool2 = localJSONObject.optBoolean("validate", true);; bool2 = true)
              {
                boolean bool1;
                if ((localJSONObject != null) && (localJSONObject.has("https"))) {
                  if (!localJSONObject.optBoolean("https")) {
                    bool1 = true;
                  }
                }
                for (;;)
                {
                  boolean bool3 = bool4;
                  if (localJSONObject != null)
                  {
                    bool3 = bool4;
                    if (localJSONObject.has("formSubmit")) {
                      bool3 = localJSONObject.optBoolean("formSubmit");
                    }
                  }
                  Object localObject2 = "";
                  Object localObject1 = localObject2;
                  if (localJSONObject != null)
                  {
                    localObject1 = localObject2;
                    if (localJSONObject.has("namespace")) {
                      localObject1 = localJSONObject.optString("namespace");
                    }
                  }
                  Object localObject3 = "";
                  localObject2 = localObject3;
                  if (localJSONObject != null)
                  {
                    localObject2 = localObject3;
                    if (localJSONObject.has("apiVersion")) {
                      localObject2 = localJSONObject.optString("apiVersion");
                    }
                  }
                  Object localObject5 = "";
                  localObject3 = localObject5;
                  if (localJSONObject != null)
                  {
                    localObject3 = localObject5;
                    if (localJSONObject.has("apiName")) {
                      localObject3 = localJSONObject.optString("apiName");
                    }
                  }
                  if (TextUtils.isEmpty(paramJSONObject))
                  {
                    return null;
                    bool1 = false;
                  }
                  else
                  {
                    localObject5 = new b(paramJSONObject);
                    ((b)localObject5).a = paramJSONObject;
                    if (TextUtils.isEmpty(paramString)) {}
                    for (paramJSONObject = (JSONObject)localObject4;; paramJSONObject = paramString.trim())
                    {
                      ((b)localObject5).b = paramJSONObject;
                      ((b)localObject5).c = str1;
                      ((b)localObject5).d = str2;
                      ((b)localObject5).e = str3;
                      ((b)localObject5).f = bool2;
                      ((b)localObject5).g = bool1;
                      ((b)localObject5).h = bool3;
                      ((b)localObject5).i = ((String)localObject1);
                      ((b)localObject5).j = ((String)localObject2);
                      ((b)localObject5).k = ((String)localObject3);
                      ((b)localObject5).l = localJSONObject;
                      return (b)localObject5;
                    }
                    bool1 = true;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
  
  public final JSONObject a()
  {
    try
    {
      JSONObject localJSONObject = new JSONObject(this.c);
      return localJSONObject;
    }
    catch (Exception localException) {}
    return null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\alipay\sdk\f\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */