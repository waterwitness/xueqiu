package com.xueqiu.android.common.model.parser;

import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

public abstract interface Parser<T>
{
  public abstract T parse(JSONObject paramJSONObject);
  
  public abstract ArrayList parse(JSONArray paramJSONArray);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\model\parser\Parser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */