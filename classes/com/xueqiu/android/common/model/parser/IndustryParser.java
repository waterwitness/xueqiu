package com.xueqiu.android.common.model.parser;

import com.xueqiu.android.community.model.IndustryOfUser;
import org.json.JSONObject;

public class IndustryParser
  extends AbstractParser<IndustryOfUser>
{
  public IndustryOfUser parse(JSONObject paramJSONObject)
  {
    IndustryOfUser localIndustryOfUser = new IndustryOfUser();
    if (hasKeyAndValueNotNull(paramJSONObject, "name")) {
      localIndustryOfUser.setName(paramJSONObject.getString("name"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "id")) {
      localIndustryOfUser.setId(paramJSONObject.getInt("id"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "order_id")) {
      localIndustryOfUser.setOrderId(paramJSONObject.getInt("order_id"));
    }
    return localIndustryOfUser;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\model\parser\IndustryParser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */