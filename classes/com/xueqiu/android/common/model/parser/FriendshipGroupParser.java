package com.xueqiu.android.common.model.parser;

import com.xueqiu.android.community.model.FriendshipGroupInfo;
import org.json.JSONObject;

public class FriendshipGroupParser
  extends AbstractParser<FriendshipGroupInfo>
{
  public FriendshipGroupInfo parse(JSONObject paramJSONObject)
  {
    FriendshipGroupInfo localFriendshipGroupInfo = new FriendshipGroupInfo();
    if (hasKeyAndValueNotNull(paramJSONObject, "name")) {
      localFriendshipGroupInfo.setmName(paramJSONObject.getString("name"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "id")) {
      localFriendshipGroupInfo.setmId(paramJSONObject.getLong("id"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "user_id")) {
      localFriendshipGroupInfo.setmUser_id(paramJSONObject.getLong("user_id"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "order_id")) {
      localFriendshipGroupInfo.setmOrder_id(paramJSONObject.getInt("order_id"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "member_count")) {
      localFriendshipGroupInfo.setmMember_count(paramJSONObject.getInt("member_count"));
    }
    return localFriendshipGroupInfo;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\model\parser\FriendshipGroupParser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */