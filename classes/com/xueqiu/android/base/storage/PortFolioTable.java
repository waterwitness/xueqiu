package com.xueqiu.android.base.storage;

import android.content.ContentValues;
import android.database.Cursor;
import android.provider.BaseColumns;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.stock.model.OldPortFolio;

public final class PortFolioTable
  implements BaseColumns
{
  public static final String ALIAS = "alias";
  public static final String CHANGE = "change";
  public static final String CLOSE = "close";
  public static final String CREATE_TABLE = "CREATE TABLE sn_portfolio(rowidINTEGER PRIMARY KEY,symbol TEXT,name TEXT,alias TEXT,current INTEGER,change INTEGER,percentage INTEGER,open INTEGER,close INTEGER,marketCapital INTEGER,showMarketCapital TEXT,volume INTEGER,volumeAverage INTEGER,pe_ttm TEXT,pe_lyr TEXT,dividend INTEGER,peRatio INTEGER,high INTEGER,low INTEGER,week52High INTEGER,week52Low INTEGER,following INTEGER,type TEXT,flag INTEGER,holding INTEGER)";
  public static final String CURRENT = "current";
  public static final String DIVID_END = "dividend";
  public static final String FLAG = "flag";
  public static final String FOLLOWING = "following";
  public static final String HIGH = "high";
  public static final String HOLDING = "holding";
  public static final String LOW = "low";
  public static final String MARKET_CAPITAL = "marketCapital";
  public static final String NAME = "name";
  public static final String OPEN = "open";
  public static final String PERCENTAGE = "percentage";
  public static final String PE_LYR = "pe_lyr";
  public static final String PE_RATIO = "peRatio";
  public static final String PE_TTM = "pe_ttm";
  public static final String ROWID = "rowid";
  public static final String SHOW_MARKET_CAPITAL = "showMarketCapital";
  public static final String SYMBOL = "symbol";
  public static final String[] TABLE_COLUMNS = { "rowid", "symbol", "name", "alias", "current", "change", "percentage", "open", "close", "marketCapital", "showMarketCapital", "volume", "volumeAverage", "pe_ttm", "pe_lyr", "dividend", "peRatio", "high", "low", "week52High", "week52Low", "following", "type", "flag", "holding" };
  public static final String TABLE_NAME = "sn_portfolio";
  private static final String TAG = "PortFolioTable";
  public static final String TYPE = "type";
  public static final String VOLUME = "volume";
  public static final String VOLUME_AVERAGE = "volumeAverage";
  public static final String WEEK_52_HIGH = "week52High";
  public static final String WEEK_52_LOW = "week52Low";
  
  public static ContentValues contentValues(OldPortFolio paramOldPortFolio)
  {
    int j = 1;
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("symbol", paramOldPortFolio.getSymbol());
    localContentValues.put("name", paramOldPortFolio.getName());
    localContentValues.put("alias", paramOldPortFolio.getAlias());
    localContentValues.put("current", Double.valueOf(paramOldPortFolio.getCurrent()));
    localContentValues.put("change", Double.valueOf(paramOldPortFolio.getChange()));
    localContentValues.put("percentage", Double.valueOf(paramOldPortFolio.getPercentage()));
    localContentValues.put("open", Double.valueOf(paramOldPortFolio.getOpen()));
    localContentValues.put("close", Double.valueOf(paramOldPortFolio.getClose()));
    localContentValues.put("marketCapital", Double.valueOf(paramOldPortFolio.getMarketCapital()));
    localContentValues.put("showMarketCapital", paramOldPortFolio.getShowMarketCapital());
    localContentValues.put("volume", Double.valueOf(paramOldPortFolio.getVolume()));
    localContentValues.put("volumeAverage", Double.valueOf(paramOldPortFolio.getVolumeAverage()));
    localContentValues.put("pe_ttm", paramOldPortFolio.getPe_ttm());
    localContentValues.put("pe_lyr", Double.valueOf(paramOldPortFolio.getPe_lyr()));
    localContentValues.put("dividend", Double.valueOf(paramOldPortFolio.getDividend()));
    localContentValues.put("peRatio", Double.valueOf(paramOldPortFolio.getPeRatio()));
    localContentValues.put("high", Double.valueOf(paramOldPortFolio.getHigh()));
    localContentValues.put("low", Double.valueOf(paramOldPortFolio.getLow()));
    localContentValues.put("week52High", Double.valueOf(paramOldPortFolio.getWeek52High()));
    localContentValues.put("week52Low", Double.valueOf(paramOldPortFolio.getWeek52Low()));
    if (paramOldPortFolio.isFollowing())
    {
      i = 1;
      localContentValues.put("following", Integer.valueOf(i));
      localContentValues.put("type", paramOldPortFolio.getType());
      localContentValues.put("flag", Integer.valueOf(paramOldPortFolio.getFlag()));
      if (!paramOldPortFolio.isHolding()) {
        break label323;
      }
    }
    label323:
    for (int i = j;; i = 0)
    {
      localContentValues.put("holding", Integer.valueOf(i));
      return localContentValues;
      i = 0;
      break;
    }
  }
  
  public static OldPortFolio parseCursor(Cursor paramCursor)
  {
    boolean bool2 = false;
    if ((paramCursor == null) || (paramCursor.getCount() == 0))
    {
      v.d("PortFolioTable", "Cann't parse Cursor, bacause cursor is null or empty.");
      return null;
    }
    if (-1 == paramCursor.getPosition()) {
      paramCursor.moveToFirst();
    }
    OldPortFolio localOldPortFolio = new OldPortFolio();
    localOldPortFolio.setSymbol(paramCursor.getString(paramCursor.getColumnIndex("symbol")));
    localOldPortFolio.setName(paramCursor.getString(paramCursor.getColumnIndex("name")));
    localOldPortFolio.setAlias(paramCursor.getString(paramCursor.getColumnIndex("alias")));
    localOldPortFolio.setCurrent(paramCursor.getDouble(paramCursor.getColumnIndex("current")));
    localOldPortFolio.setChange(paramCursor.getDouble(paramCursor.getColumnIndex("change")));
    localOldPortFolio.setPercentage(paramCursor.getDouble(paramCursor.getColumnIndex("percentage")));
    localOldPortFolio.setOpen(paramCursor.getDouble(paramCursor.getColumnIndex("open")));
    localOldPortFolio.setClose(paramCursor.getDouble(paramCursor.getColumnIndex("close")));
    localOldPortFolio.setMarketCapital(paramCursor.getDouble(paramCursor.getColumnIndex("marketCapital")));
    localOldPortFolio.setShowMarketCapital(paramCursor.getString(paramCursor.getColumnIndex("showMarketCapital")));
    localOldPortFolio.setVolume(paramCursor.getInt(paramCursor.getColumnIndex("volume")));
    localOldPortFolio.setVolumeAverage(paramCursor.getInt(paramCursor.getColumnIndex("volumeAverage")));
    localOldPortFolio.setPe_ttm(paramCursor.getString(paramCursor.getColumnIndex("pe_ttm")));
    localOldPortFolio.setPe_lyr(paramCursor.getDouble(paramCursor.getColumnIndex("pe_lyr")));
    localOldPortFolio.setDividend(paramCursor.getDouble(paramCursor.getColumnIndex("dividend")));
    localOldPortFolio.setPeRatio(paramCursor.getDouble(paramCursor.getColumnIndex("peRatio")));
    localOldPortFolio.setHigh(paramCursor.getDouble(paramCursor.getColumnIndex("high")));
    localOldPortFolio.setLow(paramCursor.getDouble(paramCursor.getColumnIndex("low")));
    localOldPortFolio.setWeek52High(paramCursor.getDouble(paramCursor.getColumnIndex("week52High")));
    localOldPortFolio.setWeek52Low(paramCursor.getDouble(paramCursor.getColumnIndex("week52Low")));
    if (paramCursor.getInt(paramCursor.getColumnIndex("following")) == 0)
    {
      bool1 = false;
      localOldPortFolio.setFollowing(bool1);
      localOldPortFolio.setType(paramCursor.getString(paramCursor.getColumnIndex("type")));
      localOldPortFolio.setFlag(paramCursor.getInt(paramCursor.getColumnIndex("flag")));
      if (paramCursor.getInt(paramCursor.getColumnIndex("holding")) != 0) {
        break label502;
      }
    }
    label502:
    for (boolean bool1 = bool2;; bool1 = true)
    {
      localOldPortFolio.setHolding(bool1);
      return localOldPortFolio;
      bool1 = true;
      break;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\storage\PortFolioTable.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */