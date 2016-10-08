package com.xueqiu.android.base.storage;

import android.content.ContentValues;
import android.database.Cursor;
import android.provider.BaseColumns;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.stock.model.InvestmentCalendar;

public final class InvestmentCalendarTable
  implements BaseColumns
{
  public static final String AUTHOR_ID = "author_id";
  public static final String COLOR = "color";
  public static final String CREATED_AT = "created_at";
  public static final String CREATE_TABLE = "CREATE TABLE t_investment_calendar_table(investment_calendar_id INTEGER PRIMARY KEY AUTOINCREMENT, author_id INTEGER,url TEXT,color TEXT,timezone TEXT,title TEXT,description TEXT,location TEXT,followers_count INTEGER,created_at INTEGER,symbol TEXT,type INTEGER,privacy_read TEXT,privacy_write TEXT,stat TEXT,stat_color TEXT,stat_alert TEXT,stat_sort INTEGER,stat_show TINYINT(1) DEFAULT 0,is_mine TINYINT(1) DEFAULT 0)";
  public static final String DESCRIPTION = "description";
  public static final String FOLLOWERS_COUNT = "followers_count";
  public static final String INVESTMENT_CALENDAR_ID = "investment_calendar_id";
  public static final String IS_MINE = "is_mine";
  public static final String LOCATION = "location";
  public static final String PRIVACY_READ = "privacy_read";
  public static final String PRIVACY_WRITE = "privacy_write";
  public static final String STAT = "stat";
  public static final String STAT_ALERT = "stat_alert";
  public static final String STAT_COLOR = "stat_color";
  public static final String STAT_SHOW = "stat_show";
  public static final String STAT_SORT = "stat_sort";
  public static final String SYMBOL = "symbol";
  public static final String[] TABLE_COLUMNS = { "investment_calendar_id", "author_id", "url", "color", "timezone", "title", "description", "location", "followers_count", "created_at", "symbol", "type", "privacy_read", "privacy_write", "stat", "stat_color", "stat_alert", "stat_sort", "stat_show", "is_mine" };
  public static final String TABLE_NAME = "t_investment_calendar_table";
  private static final String TAG = "InvestmentCalendar";
  public static final String TIMEZONE = "timezone";
  public static final String TITLE = "title";
  public static final String TYPE = "type";
  public static final String URL = "url";
  
  public static ContentValues contentValues(InvestmentCalendar paramInvestmentCalendar)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("investment_calendar_id", Long.valueOf(paramInvestmentCalendar.mId));
    localContentValues.put("author_id", Long.valueOf(paramInvestmentCalendar.mAuthor_id));
    localContentValues.put("url", paramInvestmentCalendar.mUrl);
    localContentValues.put("color", paramInvestmentCalendar.mColor);
    localContentValues.put("timezone", paramInvestmentCalendar.mTimezone);
    localContentValues.put("title", paramInvestmentCalendar.mTitle);
    localContentValues.put("description", paramInvestmentCalendar.mDescription);
    localContentValues.put("location", paramInvestmentCalendar.mLocation);
    localContentValues.put("followers_count", Integer.valueOf(paramInvestmentCalendar.mFollowers_count));
    localContentValues.put("created_at", Long.valueOf(paramInvestmentCalendar.mCreated_at));
    localContentValues.put("symbol", paramInvestmentCalendar.mSymbol);
    localContentValues.put("type", Integer.valueOf(paramInvestmentCalendar.mType));
    localContentValues.put("privacy_read", paramInvestmentCalendar.mPrivacy_read);
    localContentValues.put("privacy_read", paramInvestmentCalendar.mPrivacy_write);
    localContentValues.put("stat", paramInvestmentCalendar.mStat);
    localContentValues.put("color", paramInvestmentCalendar.mColor);
    localContentValues.put("stat_alert", paramInvestmentCalendar.mStatAlert);
    localContentValues.put("stat_sort", Integer.valueOf(paramInvestmentCalendar.mStatSort));
    localContentValues.put("stat_show", Boolean.valueOf(paramInvestmentCalendar.mStatShow));
    localContentValues.put("is_mine", Boolean.valueOf(paramInvestmentCalendar.mIsMine));
    return localContentValues;
  }
  
  public static InvestmentCalendar parseCursor(Cursor paramCursor)
  {
    boolean bool2 = false;
    if ((paramCursor == null) || (paramCursor.getCount() == 0))
    {
      v.d("InvestmentCalendar", "Cann't parse Cursor, bacause cursor is null or empty.");
      return null;
    }
    if (-1 == paramCursor.getPosition()) {
      paramCursor.moveToFirst();
    }
    InvestmentCalendar localInvestmentCalendar = new InvestmentCalendar();
    localInvestmentCalendar.mId = paramCursor.getLong(paramCursor.getColumnIndex("investment_calendar_id"));
    localInvestmentCalendar.mAuthor_id = paramCursor.getLong(paramCursor.getColumnIndex("author_id"));
    localInvestmentCalendar.mUrl = paramCursor.getString(paramCursor.getColumnIndex("url"));
    localInvestmentCalendar.mColor = paramCursor.getString(paramCursor.getColumnIndex("color"));
    localInvestmentCalendar.mTimezone = paramCursor.getString(paramCursor.getColumnIndex("timezone"));
    localInvestmentCalendar.mTitle = paramCursor.getString(paramCursor.getColumnIndex("title"));
    localInvestmentCalendar.mDescription = paramCursor.getString(paramCursor.getColumnIndex("description"));
    localInvestmentCalendar.mLocation = paramCursor.getString(paramCursor.getColumnIndex("location"));
    localInvestmentCalendar.mFollowers_count = paramCursor.getInt(paramCursor.getColumnIndex("followers_count"));
    localInvestmentCalendar.mCreated_at = paramCursor.getLong(paramCursor.getColumnIndex("created_at"));
    localInvestmentCalendar.mSymbol = paramCursor.getString(paramCursor.getColumnIndex("symbol"));
    localInvestmentCalendar.mType = paramCursor.getInt(paramCursor.getColumnIndex("type"));
    localInvestmentCalendar.mPrivacy_read = paramCursor.getString(paramCursor.getColumnIndex("privacy_read"));
    localInvestmentCalendar.mPrivacy_write = paramCursor.getString(paramCursor.getColumnIndex("privacy_write"));
    localInvestmentCalendar.mStat = paramCursor.getString(paramCursor.getColumnIndex("stat"));
    localInvestmentCalendar.mColor = paramCursor.getString(paramCursor.getColumnIndex("stat_color"));
    localInvestmentCalendar.mStatAlert = paramCursor.getString(paramCursor.getColumnIndex("stat_alert"));
    localInvestmentCalendar.mStatSort = paramCursor.getInt(paramCursor.getColumnIndex("stat_sort"));
    if (paramCursor.getInt(paramCursor.getColumnIndex("stat_show")) == 0)
    {
      bool1 = false;
      localInvestmentCalendar.mStatShow = bool1;
      if (paramCursor.getInt(paramCursor.getColumnIndex("is_mine")) != 0) {
        break label428;
      }
    }
    label428:
    for (boolean bool1 = bool2;; bool1 = true)
    {
      localInvestmentCalendar.mIsMine = bool1;
      return localInvestmentCalendar;
      bool1 = true;
      break;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\storage\InvestmentCalendarTable.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */