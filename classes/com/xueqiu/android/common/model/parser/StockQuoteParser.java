package com.xueqiu.android.common.model.parser;

import com.google.gson.Gson;
import com.xueqiu.android.base.util.m;
import com.xueqiu.android.stock.model.StockQuote;
import org.json.JSONObject;

public class StockQuoteParser
  extends AbstractParser<StockQuote>
{
  public StockQuote parse(JSONObject paramJSONObject)
  {
    StockQuote localStockQuote = (StockQuote)m.a().fromJson(paramJSONObject.toString(), StockQuote.class);
    localStockQuote.setOriginalJson(paramJSONObject);
    return localStockQuote;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\model\parser\StockQuoteParser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */