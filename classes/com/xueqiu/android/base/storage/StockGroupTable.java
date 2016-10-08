package com.xueqiu.android.base.storage;

import android.content.ContentValues;
import android.database.Cursor;
import android.provider.BaseColumns;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.stock.model.StockGroup;
import java.util.Date;

public final class StockGroupTable
  implements BaseColumns
{
  public static final String CREATE_AT = "create_at";
  public static final String CREATE_TABLE = "CREATE TABLE sn_stock_group(group_id INTEGER,name TEXT,create_at INTEGER,stock_codes TEXT,order_id TINYINT(1) DEFAULT 0, PRIMARY KEY(group_id))";
  public static final String GROUP_ID = "group_id";
  public static final String NAME = "name";
  public static final String ORDER_ID = "order_id";
  public static final String STOCK_CODES = "stock_codes";
  public static final String[] TABLE_COLUMNS = { "group_id", "name", "create_at", "stock_codes", "order_id" };
  public static final String TABLE_NAME = "sn_stock_group";
  private static final String TAG = "StockGroupTable";
  
  public static ContentValues contentValues(StockGroup paramStockGroup)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("group_id", Integer.valueOf(paramStockGroup.getGrouId()));
    localContentValues.put("name", paramStockGroup.getName());
    localContentValues.put("create_at", Long.valueOf(paramStockGroup.getCreateAt().getTime()));
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramStockGroup.getStockCodes() != null)
    {
      String[] arrayOfString = paramStockGroup.getStockCodes();
      int j = arrayOfString.length;
      int i = 0;
      while (i < j)
      {
        localStringBuilder.append(arrayOfString[i]);
        localStringBuilder.append(",");
        i += 1;
      }
    }
    if (localStringBuilder.indexOf(",") != -1) {
      localStringBuilder.deleteCharAt(localStringBuilder.lastIndexOf(","));
    }
    localContentValues.put("stock_codes", localStringBuilder.toString());
    localContentValues.put("order_id", Integer.valueOf(paramStockGroup.getOrderId()));
    return localContentValues;
  }
  
  public static StockGroup parseCursor(Cursor paramCursor)
  {
    if ((paramCursor == null) || (paramCursor.getCount() == 0))
    {
      v.d("StockGroupTable", "Cann't parse Cursor, bacause cursor is null or empty.");
      return null;
    }
    if (-1 == paramCursor.getPosition()) {
      paramCursor.moveToFirst();
    }
    StockGroup localStockGroup = new StockGroup();
    localStockGroup.setGrouId(paramCursor.getInt(paramCursor.getColumnIndex("group_id")));
    localStockGroup.setName(paramCursor.getString(paramCursor.getColumnIndex("name")));
    localStockGroup.setCreateAt(new Date(paramCursor.getLong(paramCursor.getColumnIndex("create_at"))));
    localStockGroup.setStockCodes(paramCursor.getString(paramCursor.getColumnIndex("stock_codes")).split(","));
    localStockGroup.setOrderId(paramCursor.getInt(paramCursor.getColumnIndex("order_id")));
    return localStockGroup;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\storage\StockGroupTable.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */