package com.tencent.tauth.http;

import org.json.JSONObject;

public class ParseResoneJson
{
  public static JSONObject parseJson(String paramString)
  {
    if (paramString.equals("false")) {
      throw new CommonException("request failed");
    }
    String str = paramString;
    if (paramString.equals("true")) {
      str = "{value : true}";
    }
    paramString = str;
    if (str.endsWith(");")) {
      paramString = str.replaceAll("([a-z]*)\\(([^\\)]*)\\);", "$2").trim();
    }
    return new JSONObject(paramString);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\tauth\http\ParseResoneJson.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */