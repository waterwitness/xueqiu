package com.xueqiu.android.common.model.parser;

import com.xueqiu.android.trade.model.TakingPosition;
import org.json.JSONObject;

public class TakingPositionParser
  extends AbstractParser<TakingPosition>
{
  public TakingPosition parse(JSONObject paramJSONObject)
  {
    TakingPosition localTakingPosition = new TakingPosition();
    if (hasKeyAndValueNotNull(paramJSONObject, "name")) {
      localTakingPosition.setName(paramJSONObject.getString("name"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "symbol")) {
      localTakingPosition.setSymbol(paramJSONObject.getString("symbol"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "avgPrice")) {
      localTakingPosition.setAvgPrice(paramJSONObject.getDouble("avgPrice"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "shares")) {
      localTakingPosition.setShares(paramJSONObject.getDouble("shares"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "floatAmount")) {
      localTakingPosition.setFloatAmount(paramJSONObject.getDouble("floatAmount"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "dayfloatAmount")) {
      localTakingPosition.setFloatAmount(paramJSONObject.getDouble("dayfloatAmount"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "floatRate")) {
      localTakingPosition.setFloatRate(paramJSONObject.getDouble("floatRate"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "accumRate")) {
      localTakingPosition.setAccumRate(paramJSONObject.getDouble("accumRate"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "accumAmount")) {
      localTakingPosition.setAccumAmount(paramJSONObject.getDouble("accumAmount"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "marketValue")) {
      localTakingPosition.setMarketValue(paramJSONObject.getDouble("marketValue"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "cost")) {
      localTakingPosition.setCost(paramJSONObject.getDouble("cost"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "quotePrice")) {
      localTakingPosition.setQuotePrice(paramJSONObject.getDouble("quotePrice"));
    }
    return localTakingPosition;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\model\parser\TakingPositionParser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */