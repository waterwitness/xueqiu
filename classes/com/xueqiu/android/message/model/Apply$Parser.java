package com.xueqiu.android.message.model;

import com.xueqiu.android.common.model.parser.AbstractParser;
import java.util.Date;
import org.json.JSONObject;

public class Apply$Parser
  extends AbstractParser<Apply>
{
  public Apply parse(JSONObject paramJSONObject)
  {
    Apply localApply = new Apply();
    localApply.setId(getLong(paramJSONObject, "id", 0L));
    localApply.setUserId(getLong(paramJSONObject, "user_id", 0L));
    localApply.setGroupId(getLong(paramJSONObject, "imgroup_id", 0L));
    localApply.setOwnerId(getLong(paramJSONObject, "owner_id", 0L));
    localApply.setJoined(getBoolean(paramJSONObject, "joined", false));
    localApply.setSmallProfileImage(getString(paramJSONObject, "profileImage30", ""));
    localApply.setMediumProfileImage(getString(paramJSONObject, "profileImage50", ""));
    localApply.setLargeProfileImage(getString(paramJSONObject, "profileImage180", ""));
    localApply.setScreenName(getString(paramJSONObject, "screen_name", ""));
    localApply.setGroupName(getString(paramJSONObject, "imgroup_name", ""));
    localApply.setDescription(getString(paramJSONObject, "description", ""));
    localApply.setCreatedAt(new Date(getLong(paramJSONObject, "created_at", System.currentTimeMillis())));
    return localApply;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\model\Apply$Parser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */