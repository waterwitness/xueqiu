package com.xueqiu.android.base.util;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import java.util.ArrayList;
import java.util.List;

public final class r
{
  public static String a(JsonObject paramJsonObject, String paramString1, String paramString2)
  {
    if (a(paramJsonObject, paramString1)) {
      return paramString2;
    }
    return paramJsonObject.get(paramString1).getAsString();
  }
  
  public static List<String> a(JsonArray paramJsonArray)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramJsonArray == null) {
      return localArrayList;
    }
    int i = 0;
    while (i < paramJsonArray.size())
    {
      localArrayList.add(paramJsonArray.get(i).getAsString());
      i += 1;
    }
    return localArrayList;
  }
  
  public static boolean a(JsonObject paramJsonObject, String paramString)
  {
    if ((paramJsonObject == null) || (paramString == null)) {}
    while ((!paramJsonObject.has(paramString)) || (paramJsonObject.get(paramString) == null) || (paramJsonObject.get(paramString).isJsonNull())) {
      return true;
    }
    return false;
  }
  
  public static boolean a(String paramString)
  {
    if (au.a(paramString)) {
      return false;
    }
    try
    {
      m.a().fromJson(paramString, JsonObject.class);
      return true;
    }
    catch (Exception paramString) {}
    return false;
  }
  
  public static int b(JsonObject paramJsonObject, String paramString)
  {
    if (a(paramJsonObject, paramString)) {
      return 0;
    }
    return paramJsonObject.get(paramString).getAsInt();
  }
  
  public static long c(JsonObject paramJsonObject, String paramString)
  {
    if (a(paramJsonObject, paramString)) {
      return 0L;
    }
    return paramJsonObject.get(paramString).getAsLong();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\util\r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */