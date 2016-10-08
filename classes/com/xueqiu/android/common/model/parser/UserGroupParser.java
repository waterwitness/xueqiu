package com.xueqiu.android.common.model.parser;

import com.xueqiu.android.community.model.UserGroup;
import org.json.JSONObject;

@Deprecated
public class UserGroupParser
  extends AbstractParser<UserGroup>
{
  public UserGroup parse(JSONObject paramJSONObject)
  {
    UserGroup localUserGroup = new UserGroup();
    if (hasKeyAndValueNotNull(paramJSONObject, "name")) {
      localUserGroup.setName(paramJSONObject.getString("name"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "id")) {
      localUserGroup.setGroupId(paramJSONObject.getLong("id"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "user_id")) {
      localUserGroup.setUserId(paramJSONObject.getLong("user_id"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "order_id")) {
      localUserGroup.setOrderId(paramJSONObject.getInt("order_id"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "member_count")) {
      localUserGroup.setMemberCount(paramJSONObject.getInt("member_count"));
    }
    return localUserGroup;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\model\parser\UserGroupParser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */