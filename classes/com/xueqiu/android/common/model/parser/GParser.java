package com.xueqiu.android.common.model.parser;

import java.lang.reflect.Type;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

public class GParser<T>
  implements Parser<T>
{
  private String name;
  private Type type;
  
  public GParser(String paramString, Type paramType)
  {
    this.name = paramString;
    this.type = paramType;
  }
  
  public GParser(Type paramType)
  {
    this.type = paramType;
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public Type getType()
  {
    return this.type;
  }
  
  public T parse(JSONObject paramJSONObject)
  {
    return null;
  }
  
  public ArrayList parse(JSONArray paramJSONArray)
  {
    return null;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void setType(Type paramType)
  {
    this.type = paramType;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\model\parser\GParser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */