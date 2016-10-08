package com.xueqiu.android.common.model.parser;

import com.xueqiu.android.stock.model.StockGroup;
import java.util.Date;
import org.json.JSONObject;

public class StockGroupParser
  extends AbstractParser<StockGroup>
{
  public StockGroup parse(JSONObject paramJSONObject)
  {
    StockGroup localStockGroup = new StockGroup();
    if (hasKeyAndValueNotNull(paramJSONObject, "name")) {
      localStockGroup.setName(paramJSONObject.getString("name"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "id")) {
      localStockGroup.setGrouId(paramJSONObject.getInt("id"));
    }
    if ((hasKeyAndValueNotNull(paramJSONObject, "stocks")) && (!"".equals(paramJSONObject.getString("stocks")))) {
      localStockGroup.setStockCodes(paramJSONObject.getString("stocks").split(","));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "createAt")) {
      localStockGroup.setCreateAt(new Date(paramJSONObject.getLong("createAt")));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "orderId")) {
      localStockGroup.setOrderId(paramJSONObject.getInt("orderId"));
    }
    return localStockGroup;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\model\parser\StockGroupParser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */