package com.xueqiu.android.base.storage;

import android.content.ContentValues;
import android.database.Cursor;
import android.provider.BaseColumns;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.trade.model.TakingPosition;

public final class TakingPositionTable
  implements BaseColumns
{
  public static final String ACCUM_AMOUNT = "accumamount";
  public static final String ACCUM_RATE = "accumrate";
  public static final String AVG_PRICE = "avgprice";
  public static final String COST = "cost";
  public static final String CREATE_TABLE = "CREATE TABLE t_taking_pos_table(_id INTEGER PRIMARY KEY AUTOINCREMENT, t_name STRING,symbol STRING,shares INTEGER,avgprice INTEGER,floatamount INTEGER,floatrate INTEGER,accumrate INTEGER,accumamount INTEGER,marketvalue INTEGER,quoteprice INTEGER,cost INTEGER,type TINYINT(1) DEFAULT 0)";
  public static final String FLOAT_AMOUNT = "floatamount";
  public static final String FLOAT_RATE = "floatrate";
  public static final String MARKET_VALUE = "marketvalue";
  public static final String NAME = "t_name";
  public static final String QUOTE_PRICE = "quoteprice";
  public static final String SHARES = "shares";
  public static final String SYMBOL = "symbol";
  public static final String[] TABLE_COLUMNS = { "t_name", "symbol", "shares", "avgprice", "floatamount", "floatrate", "accumrate", "accumamount", "marketvalue", "cost", "quoteprice", "type" };
  public static final String TABLE_NAME = "t_taking_pos_table";
  private static final String TAG = "TakingPositionTable";
  public static final String TYPE = "type";
  public static final int TYPE_MARKET = 2;
  public static final int TYPE_STOCK = 1;
  
  public static ContentValues contentValues(TakingPosition paramTakingPosition)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("t_name", paramTakingPosition.getName());
    localContentValues.put("symbol", paramTakingPosition.getSymbol());
    localContentValues.put("shares", Double.valueOf(paramTakingPosition.getShares()));
    localContentValues.put("avgprice", Double.valueOf(paramTakingPosition.getAvgPricel()));
    localContentValues.put("floatamount", Double.valueOf(paramTakingPosition.getFloatAmount()));
    localContentValues.put("floatrate", Double.valueOf(paramTakingPosition.getFloatRate()));
    localContentValues.put("accumrate", Double.valueOf(paramTakingPosition.getAccumRate()));
    localContentValues.put("accumamount", Double.valueOf(paramTakingPosition.getAccumAmount()));
    localContentValues.put("marketvalue", Double.valueOf(paramTakingPosition.getMarketValue()));
    localContentValues.put("quoteprice", Double.valueOf(paramTakingPosition.getQuotePrice()));
    localContentValues.put("cost", Double.valueOf(paramTakingPosition.getCost()));
    return localContentValues;
  }
  
  public static TakingPosition parseCursor(Cursor paramCursor)
  {
    if ((paramCursor == null) || (paramCursor.getCount() == 0))
    {
      v.d("TakingPositionTable", "Cann't parse Cursor, bacause cursor is null or empty.");
      return null;
    }
    if (-1 == paramCursor.getPosition()) {
      paramCursor.moveToFirst();
    }
    TakingPosition localTakingPosition = new TakingPosition();
    localTakingPosition.setName(paramCursor.getString(paramCursor.getColumnIndex("t_name")));
    localTakingPosition.setSymbol(paramCursor.getString(paramCursor.getColumnIndex("symbol")));
    localTakingPosition.setShares(paramCursor.getLong(paramCursor.getColumnIndex("shares")));
    localTakingPosition.setAvgPrice(paramCursor.getLong(paramCursor.getColumnIndex("avgprice")));
    localTakingPosition.setFloatAmount(paramCursor.getLong(paramCursor.getColumnIndex("floatamount")));
    localTakingPosition.setFloatRate(paramCursor.getLong(paramCursor.getColumnIndex("floatrate")));
    localTakingPosition.setAccumRate(paramCursor.getLong(paramCursor.getColumnIndex("accumrate")));
    localTakingPosition.setAccumRate(paramCursor.getLong(paramCursor.getColumnIndex("accumamount")));
    localTakingPosition.setMarketValue(paramCursor.getLong(paramCursor.getColumnIndex("marketvalue")));
    localTakingPosition.setQuotePrice(paramCursor.getLong(paramCursor.getColumnIndex("quoteprice")));
    localTakingPosition.setCost(paramCursor.getLong(paramCursor.getColumnIndex("cost")));
    return localTakingPosition;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\storage\TakingPositionTable.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */