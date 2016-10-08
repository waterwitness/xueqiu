package com.xueqiu.android.message.model;

import com.xueqiu.android.common.model.parser.AbstractParser;
import org.json.JSONObject;

public class ApplyCount$Parser
  extends AbstractParser<ApplyCount>
{
  public ApplyCount parse(JSONObject paramJSONObject)
  {
    ApplyCount localApplyCount = new ApplyCount();
    localApplyCount.setCount(getInt(paramJSONObject, "count", 0));
    localApplyCount.setUnread(getInt(paramJSONObject, "unread", 0));
    localApplyCount.setSummary(getString(paramJSONObject, "last_join_summary", ""));
    return localApplyCount;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\model\ApplyCount$Parser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */