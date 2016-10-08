package com.xueqiu.android.common.model.parser;

import com.xueqiu.android.stock.model.StockSearchKeyword;
import org.json.JSONObject;

public class StockSearchKeywordParser
  extends AbstractParser<StockSearchKeyword>
{
  public StockSearchKeyword parse(JSONObject paramJSONObject)
  {
    StockSearchKeyword localStockSearchKeyword = new StockSearchKeyword();
    if (hasKeyAndValueNotNull(paramJSONObject, "symbol")) {
      localStockSearchKeyword.setSymbol(paramJSONObject.getString("symbol"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "code")) {
      localStockSearchKeyword.setCode(paramJSONObject.getString("code"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "exchange")) {
      localStockSearchKeyword.setExchange(paramJSONObject.getString("exchange"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "name")) {
      localStockSearchKeyword.setName(paramJSONObject.getString("name"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "enName")) {
      localStockSearchKeyword.setEnName(paramJSONObject.getString("enName"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "searchName")) {
      localStockSearchKeyword.setSearchName(paramJSONObject.getString("searchName").replaceAll(" ", "|"));
    }
    return localStockSearchKeyword;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\model\parser\StockSearchKeywordParser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */