package com.xueqiu.android.common.model.parser;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.xueqiu.android.base.a.a;
import com.xueqiu.android.base.b.a.c;
import com.xueqiu.android.base.util.m;
import com.xueqiu.android.common.model.SNBJSONObject;
import com.xueqiu.android.common.model.SNBJsonArray;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class JSONUtils
{
  private static final String TAG = "JSONUtils";
  
  public static Object consume(Parser<?> paramParser, String paramString)
  {
    if (paramParser == null) {
      return null;
    }
    try
    {
      if ((paramParser instanceof GPagedParser)) {
        return ((GPagedParser)paramParser).parse(paramString);
      }
      if ((paramParser instanceof InTradeParser)) {
        return parseInTrade((InTradeParser)paramParser, paramString);
      }
      if ((paramParser instanceof GParser))
      {
        GParser localGParser = (GParser)paramParser;
        if ((localGParser.getName() != null) && (localGParser.getName().length() > 0))
        {
          paramParser = (JsonObject)m.a().fromJson(paramString, JsonObject.class);
          return m.a().fromJson(paramParser.get(localGParser.getName()), localGParser.getType());
        }
        return m.a().fromJson(paramString, ((GParser)paramParser).getType());
      }
      if ((paramParser instanceof PagedGroupParser)) {
        return paramParser.parse(new JSONObject(paramString));
      }
      if ((paramParser instanceof GroupParser)) {
        return paramParser.parse(new JSONArray(paramString));
      }
      if ((paramParser instanceof SNBJsonObjectPaser))
      {
        paramParser = new SNBJSONObject(paramString);
        return paramParser;
      }
    }
    catch (JSONException paramParser)
    {
      throw new RuntimeException(paramParser);
    }
    if ((paramParser instanceof SNBJsonArrayPaser)) {
      return new SNBJsonArray(paramString);
    }
    paramParser = paramParser.parse(new JSONObject(paramString));
    return paramParser;
  }
  
  public static double getDouble(JSONObject paramJSONObject, String paramString)
  {
    try
    {
      if (paramJSONObject.isNull(paramString)) {
        return 0.0D;
      }
      double d = paramJSONObject.getDouble(paramString);
      return d;
    }
    catch (JSONException paramJSONObject)
    {
      paramJSONObject.printStackTrace();
    }
    return 0.0D;
  }
  
  public static String getString(String paramString1, String paramString2)
  {
    try
    {
      paramString1 = getString(new JSONObject(paramString1), paramString2);
      return paramString1;
    }
    catch (JSONException paramString1)
    {
      paramString1.printStackTrace();
    }
    return "";
  }
  
  public static String getString(JSONObject paramJSONObject, String paramString)
  {
    try
    {
      if (paramJSONObject.isNull(paramString)) {
        return "";
      }
      paramJSONObject = paramJSONObject.getString(paramString);
      return paramJSONObject;
    }
    catch (JSONException paramJSONObject)
    {
      paramJSONObject.printStackTrace();
    }
    return "";
  }
  
  private static Object parseInTrade(GParser paramGParser, String paramString)
  {
    paramString = (JsonObject)m.a().fromJson(paramString, JsonObject.class);
    if ("60000".equals(paramString.get("result_code").getAsString()))
    {
      if ((paramGParser.getName() != null) && (paramGParser.getName().length() > 0))
      {
        paramString = paramString.get("result_data").getAsJsonObject();
        return m.a().fromJson(paramString.get(paramGParser.getName()), paramGParser.getType());
      }
      return m.a().fromJson(paramString.get("result_data"), paramGParser.getType());
    }
    if (!c.a(paramString.get("msg").getAsString()))
    {
      paramGParser = new a();
      paramGParser.errorCode = paramString.get("result_code").getAsString();
      paramGParser.errorDescription = paramString.get("msg").getAsString();
      if ((paramString.get("result_data") != null) && (!paramString.get("result_data").isJsonNull())) {
        paramGParser.data = paramString.get("result_data").getAsJsonObject();
      }
      throw paramGParser;
    }
    return null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\model\parser\JSONUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */