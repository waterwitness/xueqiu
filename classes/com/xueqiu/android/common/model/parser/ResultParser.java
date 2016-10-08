package com.xueqiu.android.common.model.parser;

import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

public class ResultParser
  implements Parser<Object>
{
  public Object parse(JSONObject paramJSONObject)
  {
    if (paramJSONObject.has("success")) {
      return Boolean.valueOf(paramJSONObject.getBoolean("success"));
    }
    return Boolean.valueOf(false);
  }
  
  public ArrayList parse(JSONArray paramJSONArray)
  {
    return null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\model\parser\ResultParser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */