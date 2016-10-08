package com.xueqiu.android.common.model.parser;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
import com.xueqiu.android.base.util.m;
import com.xueqiu.android.community.model.PublicTimeline;
import com.xueqiu.android.community.model.PublicTimelineGroup;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class PublicTimelineParser
  implements Parser<ArrayList<PublicTimeline>>
{
  public ArrayList parse(JSONArray paramJSONArray)
  {
    return null;
  }
  
  public ArrayList<PublicTimeline> parse(JSONObject paramJSONObject)
  {
    PublicTimelineGroup localPublicTimelineGroup = new PublicTimelineGroup();
    if ((paramJSONObject.has("list")) && (!paramJSONObject.isNull("list")))
    {
      JsonArray localJsonArray = (JsonArray)m.a().fromJson(paramJSONObject.get("list").toString(), JsonArray.class);
      int i = 0;
      while (i < localJsonArray.size())
      {
        Object localObject = localJsonArray.get(i).getAsJsonObject();
        List localList = (List)m.a().fromJson(((JsonObject)localObject).get("list").getAsJsonArray(), new TypeToken() {}.getType());
        String str1;
        String str2;
        if (((JsonObject)localObject).get("column").isJsonNull())
        {
          str1 = "";
          if (!((JsonObject)localObject).get("icon").isJsonNull()) {
            break label221;
          }
          str2 = "";
          label138:
          if (!((JsonObject)localObject).get("target").isJsonNull()) {
            break label235;
          }
        }
        label221:
        label235:
        for (localObject = null;; localObject = ((JsonObject)localObject).get("target").getAsString())
        {
          Iterator localIterator = localList.iterator();
          while (localIterator.hasNext())
          {
            PublicTimeline localPublicTimeline = (PublicTimeline)localIterator.next();
            localPublicTimeline.setHeaderText(str1);
            localPublicTimeline.setHeaderIcon(str2);
            localPublicTimeline.setTarget((String)localObject);
          }
          str1 = ((JsonObject)localObject).get("column").getAsString();
          break;
          str2 = ((JsonObject)localObject).get("icon").getAsString();
          break label138;
        }
        localPublicTimelineGroup.addAll(localList);
        i += 1;
      }
    }
    if (paramJSONObject.has("next_max_id")) {
      localPublicTimelineGroup.setNextMaxId(paramJSONObject.getLong("next_max_id"));
    }
    if (paramJSONObject.has("next_id")) {
      localPublicTimelineGroup.setNextId(paramJSONObject.getLong("next_id"));
    }
    if ((paramJSONObject.has("addition")) && (!paramJSONObject.isNull("addition"))) {
      localPublicTimelineGroup.setAddition((JsonArray)m.a().fromJson(paramJSONObject.get("addition").toString(), JsonArray.class));
    }
    return localPublicTimelineGroup;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\model\parser\PublicTimelineParser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */