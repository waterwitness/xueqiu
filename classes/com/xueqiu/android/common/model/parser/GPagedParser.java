package com.xueqiu.android.common.model.parser;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.xueqiu.android.base.util.m;
import com.xueqiu.android.common.model.PagedGroup;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import org.json.JSONArray;
import org.json.JSONObject;

public class GPagedParser
  implements Parser
{
  private String objectKey;
  private Type type;
  
  public GPagedParser(String paramString, Type paramType)
  {
    this.objectKey = paramString;
    this.type = paramType;
  }
  
  public PagedGroup parse(String paramString)
  {
    paramString = (JsonObject)m.a().fromJson(paramString, JsonObject.class);
    PagedGroup localPagedGroup = new PagedGroup();
    if ((this.objectKey != null) && (paramString.has(this.objectKey)) && (!paramString.get(this.objectKey).isJsonNull())) {
      localPagedGroup.addAll((Collection)m.a().fromJson(paramString.get(this.objectKey), this.type));
    }
    if ((paramString.has("event")) && (paramString.get("event") != null)) {
      localPagedGroup.mContent = paramString.get("event").toString();
    }
    if (paramString.has("maxPage")) {
      localPagedGroup.setMaxPage(paramString.get("maxPage").getAsInt());
    }
    if (paramString.has("max_page")) {
      localPagedGroup.setMaxPage(paramString.get("max_page").getAsInt());
    }
    if (paramString.has("page")) {
      localPagedGroup.setCurrentPage(paramString.get("page").getAsInt());
    }
    if (paramString.has("count")) {
      localPagedGroup.setTotalCount(paramString.get("count").getAsInt());
    }
    if (paramString.has("total")) {
      localPagedGroup.setTotalCount(paramString.get("total").getAsInt());
    }
    if (paramString.has("totalCount")) {
      localPagedGroup.setTotalCount(paramString.get("totalCount").getAsInt());
    }
    return localPagedGroup;
  }
  
  public Object parse(JSONObject paramJSONObject)
  {
    return null;
  }
  
  public ArrayList parse(JSONArray paramJSONArray)
  {
    return null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\model\parser\GPagedParser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */