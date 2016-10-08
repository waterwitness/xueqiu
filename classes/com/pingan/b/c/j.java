package com.pingan.b.c;

import android.util.Base64;
import org.json.JSONException;
import org.json.JSONObject;

public final class j
{
  public final String a;
  private String b = null;
  
  private j(JSONObject paramJSONObject, String paramString)
  {
    this.b = paramJSONObject.optString("returnUrl");
    this.a = paramString;
  }
  
  public static j a(String paramString)
  {
    try
    {
      Object localObject = paramString.split(":");
      if (localObject.length != 3) {}
      for (;;)
      {
        return null;
        localObject = Base64.decode(localObject[2], 10);
        try
        {
          localObject = new JSONObject(new String((byte[])localObject));
          if ((!((JSONObject)localObject).optString("scope").equals("")) && (((JSONObject)localObject).optInt("deadline") != 0)) {
            return new j((JSONObject)localObject, paramString);
          }
        }
        catch (JSONException paramString)
        {
          return null;
        }
      }
      return null;
    }
    catch (Exception paramString) {}
  }
  
  public final boolean a()
  {
    return !this.b.equals("");
  }
  
  public final String toString()
  {
    return this.a;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\pingan\b\c\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */