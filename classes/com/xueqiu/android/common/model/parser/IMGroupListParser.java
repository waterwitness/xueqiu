package com.xueqiu.android.common.model.parser;

import com.xueqiu.android.common.model.PagedGroup;
import com.xueqiu.android.community.model.FollowerUserGroup;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.message.model.IMGroup.Parser;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

public class IMGroupListParser
  implements Parser
{
  public Object parse(JSONObject paramJSONObject)
  {
    if ((paramJSONObject.has("list")) && (paramJSONObject.getJSONArray("list") != null)) {}
    for (Object localObject1 = parse(paramJSONObject.getJSONArray("list"));; localObject1 = new ArrayList())
    {
      Object localObject2 = localObject1;
      if (paramJSONObject.has("maxPage"))
      {
        localObject2 = localObject1;
        if (paramJSONObject.has("page"))
        {
          if (!(localObject1 instanceof FollowerUserGroup)) {
            break;
          }
          localObject2 = (FollowerUserGroup)localObject1;
          ((FollowerUserGroup)localObject2).setCurrentPage(paramJSONObject.getInt("page"));
          ((FollowerUserGroup)localObject2).setMaxPage(paramJSONObject.getInt("maxPage"));
          ((FollowerUserGroup)localObject2).setTotalCount(paramJSONObject.getInt("count"));
        }
      }
      return localObject2;
    }
    localObject1 = new PagedGroup((ArrayList)localObject1);
    ((PagedGroup)localObject1).setCurrentPage(paramJSONObject.getInt("page"));
    ((PagedGroup)localObject1).setMaxPage(paramJSONObject.getInt("maxPage"));
    ((PagedGroup)localObject1).setTotalCount(paramJSONObject.getInt("count"));
    return localObject1;
  }
  
  public ArrayList<User> parse(JSONArray paramJSONArray)
  {
    return new GroupParser(new IMGroup.Parser()).parse(paramJSONArray);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\model\parser\IMGroupListParser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */