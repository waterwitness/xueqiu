package com.xueqiu.android.common.model.parser;

import android.text.TextUtils;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class AbstractParser<T>
  implements Parser<T>
{
  public static boolean getBoolean(JSONObject paramJSONObject, String paramString, boolean paramBoolean)
  {
    boolean bool = paramBoolean;
    try
    {
      if (hasKeyAndValueNotNull(paramJSONObject, paramString)) {
        bool = paramJSONObject.getBoolean(paramString);
      }
      return bool;
    }
    catch (JSONException paramJSONObject)
    {
      paramJSONObject.printStackTrace();
    }
    return paramBoolean;
  }
  
  public static double getDouble(JSONObject paramJSONObject, String paramString, double paramDouble)
  {
    double d = paramDouble;
    try
    {
      if (hasKeyAndValueNotNull(paramJSONObject, paramString)) {
        d = paramJSONObject.getDouble(paramString);
      }
      return d;
    }
    catch (JSONException paramJSONObject)
    {
      paramJSONObject.printStackTrace();
    }
    return paramDouble;
  }
  
  public static int getInt(JSONObject paramJSONObject, String paramString, int paramInt)
  {
    int i = paramInt;
    try
    {
      if (hasKeyAndValueNotNull(paramJSONObject, paramString)) {
        i = paramJSONObject.getInt(paramString);
      }
      return i;
    }
    catch (JSONException paramJSONObject)
    {
      paramJSONObject.printStackTrace();
    }
    return paramInt;
  }
  
  public static long getLong(JSONObject paramJSONObject, String paramString, long paramLong)
  {
    long l = paramLong;
    try
    {
      if (hasKeyAndValueNotNull(paramJSONObject, paramString)) {
        l = paramJSONObject.getLong(paramString);
      }
      return l;
    }
    catch (JSONException paramJSONObject)
    {
      paramJSONObject.printStackTrace();
    }
    return paramLong;
  }
  
  public static String getString(JSONObject paramJSONObject, String paramString1, String paramString2)
  {
    String str = paramString2;
    try
    {
      if (hasKeyAndValueNotNull(paramJSONObject, paramString1)) {
        str = paramJSONObject.getString(paramString1);
      }
      return str;
    }
    catch (JSONException paramJSONObject)
    {
      paramJSONObject.printStackTrace();
    }
    return paramString2;
  }
  
  public static boolean hasKeyAndValueNotNull(JSONObject paramJSONObject, String paramString)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramJSONObject.has(paramString))
    {
      bool1 = bool2;
      if (paramJSONObject.opt(paramString) != null)
      {
        bool1 = bool2;
        if (!paramJSONObject.isNull(paramString))
        {
          bool1 = bool2;
          if (!TextUtils.isEmpty(paramJSONObject.getString(paramString))) {
            bool1 = true;
          }
        }
      }
    }
    return bool1;
  }
  
  public abstract T parse(JSONObject paramJSONObject);
  
  public ArrayList parse(JSONArray paramJSONArray)
  {
    throw new JSONException("Unexpected JSONArray parse type encountered.");
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\model\parser\AbstractParser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */