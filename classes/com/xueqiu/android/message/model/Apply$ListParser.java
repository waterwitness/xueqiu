package com.xueqiu.android.message.model;

import com.xueqiu.android.common.model.PagedGroup;
import com.xueqiu.android.common.model.parser.GroupParser;
import com.xueqiu.android.common.model.parser.Parser;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

public class Apply$ListParser
  implements Parser<ArrayList<Apply>>
{
  public ArrayList parse(JSONArray paramJSONArray)
  {
    return new GroupParser(new Apply.Parser()).parse(paramJSONArray);
  }
  
  public ArrayList<Apply> parse(JSONObject paramJSONObject)
  {
    ArrayList localArrayList = null;
    if (paramJSONObject.has("list")) {
      localArrayList = parse(paramJSONObject.getJSONArray("list"));
    }
    Object localObject = localArrayList;
    if (paramJSONObject.has("maxpage"))
    {
      localObject = localArrayList;
      if (paramJSONObject.has("page"))
      {
        localObject = new PagedGroup(localArrayList);
        ((PagedGroup)localObject).setMaxPage(paramJSONObject.getInt("maxpage"));
        ((PagedGroup)localObject).setCurrentPage(paramJSONObject.getInt("page"));
      }
    }
    return (ArrayList<Apply>)localObject;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\model\Apply$ListParser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */