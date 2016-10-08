package com.xueqiu.android.common.model.parser;

import com.xueqiu.android.common.model.PagedGroup;
import com.xueqiu.android.community.model.FollowerUserGroup;
import com.xueqiu.android.community.model.User;
import java.util.ArrayList;
import java.util.Collection;
import org.json.JSONArray;
import org.json.JSONObject;

public class UserListParser
  implements Parser
{
  public Object parse(JSONObject paramJSONObject)
  {
    if ((paramJSONObject.has("users")) && (paramJSONObject.getJSONArray("users") != null)) {
      localObject1 = parse(paramJSONObject.getJSONArray("users"));
    }
    for (;;)
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
      if ((paramJSONObject.has("followers")) && (paramJSONObject.getJSONArray("followers") != null))
      {
        localObject2 = parse(paramJSONObject.getJSONArray("followers"));
        int i = paramJSONObject.getInt("anonymous_count");
        localObject1 = new FollowerUserGroup();
        ((FollowerUserGroup)localObject1).addAll((Collection)localObject2);
        ((FollowerUserGroup)localObject1).setAnonymousCount(i);
      }
      else if ((paramJSONObject.has("friends")) && (paramJSONObject.getJSONArray("friends") != null))
      {
        localObject1 = parse(paramJSONObject.getJSONArray("friends"));
      }
      else
      {
        localObject1 = new ArrayList();
      }
    }
    Object localObject1 = new PagedGroup((ArrayList)localObject1);
    ((PagedGroup)localObject1).setCurrentPage(paramJSONObject.getInt("page"));
    ((PagedGroup)localObject1).setMaxPage(paramJSONObject.getInt("maxPage"));
    if (paramJSONObject.has("count")) {
      ((PagedGroup)localObject1).setTotalCount(paramJSONObject.getInt("count"));
    }
    for (;;)
    {
      return localObject1;
      if (paramJSONObject.has("totalcount")) {
        ((PagedGroup)localObject1).setTotalCount(paramJSONObject.getInt("totalcount"));
      }
    }
  }
  
  public ArrayList<User> parse(JSONArray paramJSONArray)
  {
    return new UserListParser.UserListGroupParser(new UserParser()).parse(paramJSONArray);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\model\parser\UserListParser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */