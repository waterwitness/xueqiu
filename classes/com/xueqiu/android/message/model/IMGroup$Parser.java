package com.xueqiu.android.message.model;

import com.xueqiu.android.base.util.h;
import com.xueqiu.android.common.model.parser.AbstractParser;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

public class IMGroup$Parser
  extends AbstractParser<IMGroup>
{
  public IMGroup parse(JSONObject paramJSONObject)
  {
    IMGroup localIMGroup = new IMGroup();
    if (hasKeyAndValueNotNull(paramJSONObject, "id")) {
      localIMGroup.setId(paramJSONObject.getLong("id"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "name")) {
      localIMGroup.setName(paramJSONObject.getString("name"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "description")) {
      localIMGroup.setDescription(paramJSONObject.getString("description"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "profile_image_url_100")) {
      localIMGroup.setProfileImageUrl(paramJSONObject.getString("profile_image_url_100"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "count")) {
      localIMGroup.setCount(paramJSONObject.getInt("count"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "owner_id")) {
      localIMGroup.setMasterId(paramJSONObject.getLong("owner_id"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "ispublic")) {
      localIMGroup.setPub(paramJSONObject.getBoolean("ispublic"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "truncated")) {
      localIMGroup.setTruncated(paramJSONObject.getBoolean("truncated"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "joined")) {
      localIMGroup.setJoined(paramJSONObject.getBoolean("joined"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "empty_name")) {
      localIMGroup.setEmptyName(paramJSONObject.getBoolean("empty_name"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "limit_count")) {
      localIMGroup.setLimitCount(paramJSONObject.getInt("limit_count"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "allow_invite_user")) {
      localIMGroup.setAllowInviteUser(paramJSONObject.getBoolean("allow_invite_user"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "created_at")) {
      localIMGroup.setCreatedAt(h.a(paramJSONObject.getString("created_at")));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "star")) {
      localIMGroup.setStar(paramJSONObject.getInt("star"));
    }
    return localIMGroup;
  }
  
  public ArrayList<IMGroup> parse(JSONArray paramJSONArray)
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < paramJSONArray.length())
    {
      JSONObject localJSONObject = paramJSONArray.getJSONObject(i);
      if ((localJSONObject != null) && ((localJSONObject instanceof JSONObject))) {
        localArrayList.add(parse(localJSONObject));
      }
      i += 1;
    }
    return localArrayList;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\model\IMGroup$Parser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */