package com.xueqiu.android.common.model.parser;

import com.xueqiu.android.stock.model.Stock;
import com.xueqiu.android.stock.model.StockStatus;
import org.json.JSONObject;

public class StockParser
  extends AbstractParser<Stock>
{
  public Stock parse(JSONObject paramJSONObject)
  {
    Stock localStock = new Stock();
    if (hasKeyAndValueNotNull(paramJSONObject, "stock_id")) {
      localStock.setStockId(paramJSONObject.getLong("stock_id"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "ind_id")) {
      localStock.setIndId(paramJSONObject.getLong("ind_id"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "ind_name")) {
      localStock.setIndName(paramJSONObject.getString("ind_name"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "name")) {
      localStock.setName(paramJSONObject.getString("name"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "code")) {
      localStock.setCode(paramJSONObject.getString("code"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "symbol")) {
      localStock.setCode(paramJSONObject.getString("symbol"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "enName")) {
      localStock.setEnName(paramJSONObject.getString("enName"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "hasexist")) {
      localStock.setHasExist(paramJSONObject.getBoolean("hasexist"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "type")) {
      localStock.setType(paramJSONObject.getString("type"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "flag")) {
      localStock.setFlag(StockStatus.fromInt(paramJSONObject.getInt("flag")));
    }
    return localStock;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\model\parser\StockParser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */