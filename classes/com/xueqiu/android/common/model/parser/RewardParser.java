package com.xueqiu.android.common.model.parser;

import com.xueqiu.android.base.util.h;
import com.xueqiu.android.community.model.Reward;
import org.json.JSONObject;

public class RewardParser
  extends AbstractParser<Reward>
{
  public Reward parse(JSONObject paramJSONObject)
  {
    Reward localReward = new Reward();
    if (hasKeyAndValueNotNull(paramJSONObject, "id")) {
      localReward.setId(paramJSONObject.getLong("id"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "user_id")) {
      localReward.setUserId(paramJSONObject.getLong("user_id"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "to_user_id")) {
      localReward.setToUserId(paramJSONObject.getLong("to_user_id"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "to_id")) {
      localReward.setToId(paramJSONObject.getLong("to_id"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "to_type")) {
      localReward.setToType(paramJSONObject.getString("to_type"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "snow_coin")) {
      localReward.setSnowCoin(paramJSONObject.getInt("snow_coin"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "message")) {
      localReward.setMessage(paramJSONObject.getString("message"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "pay_trade_id")) {
      localReward.setPayTradeId(paramJSONObject.getLong("pay_trade_id"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "created_at")) {
      localReward.setCreateAt(h.a(paramJSONObject.getString("created_at")));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "user")) {
      localReward.setUser(new UserParser().parse(paramJSONObject.getJSONObject("user")));
    }
    return localReward;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\model\parser\RewardParser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */