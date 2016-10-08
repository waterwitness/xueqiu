package com.xueqiu.android.base.storage;

import android.content.Context;
import android.database.Cursor;
import com.xueqiu.android.base.storage.prefs.DefaultPrefs;
import com.xueqiu.android.base.storage.prefs.UserLogonDataPrefs;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.message.model.SystemEvent.Table;
import com.xueqiu.android.message.model.Talk.Table;

public class DatabaseHelperSupport
{
  public static final String DATABASE_NAME = "snowball.db";
  public static final int DATABASE_VERSION = 81;
  public static final String TAG = "DroidDatabaseHelper";
  private static String[] createTableSqls;
  private static String[] dropTableNames;
  
  static
  {
    if (!DatabaseHelperSupport.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      createTableSqls = new String[] { "CREATE TABLE sn_status(status_id INTEGER,created_at INTEGER,text TEXT,source STRING,target STRING,source_url STRING,favorited TINYINT(1) DEFAULT 0,truncated TINYINT(1) DEFAULT 0,latitude FLOAT,longitude FLOAT,in_reply_to_status_id INTEGER,in_reply_to_user_id INTEGER,in_reply_to_screen_name STRING,thumbnail_pic STRING,bmiddle_pic STRING,original_pic STRING,user_screen_name STRING,comments_count INTEGER,retweets_count INTEGER,retweeted_status_id INTEGER,has_reply TINYINT(1) DEFAULT 0,description TEXT,title STRING,type TINYINT(1) DEFAULT 0,andthumb_pic STRING,user_id INTEGER,topic_title STRING,topic_desc STRING,topic_pic STRING,topic_pic_head STRING,reward_count INTEGER,reward_snowcoin INTEGER,status_card STRING,PRIMARY KEY(status_id, type))", "CREATE TABLE sn_user (userId INTEGER,type INTEGER,screenName STRING,province STRING,city STRING,location STRING,description TEXT,url STRING,profileImageUrl STRING,domain STRING,gender TEXT,followersCount INTEGER,friendsCount INTEGER,statusesCount INTEGER,favoritesCount INTEGER,createdAt INTEGER,following TINYINT(1) DEFAULT 0,verified TINYINT(1) DEFAULT 0,allowAllActMsg TINYINT(1) DEFAULT 0,geoEnabled TINYINT(1) DEFAULT 0,stocksCount INTEGER,verifiedDescription TEXT,step TEXT,verifyType INTEGER,remark STRING,follow_me TINYINT(1) DEFAULT 0,pinyin_screename TEXT,pinyin_remark TEXT,PRIMARY KEY(userId, screenName))", "CREATE TABLE t_draft_table(draft_id INTEGER PRIMARY KEY AUTOINCREMENT,title STRING,text TEXT,type INTEGER,img_name STRING,timestamp INTEGER)", "CREATE TABLE sn_comment(comment_id INTEGER,text TEXT,created_at INTEGER,source STRING,favorited TINYINT(1) DEFAULT 0,truncated TINYINT(1) DEFAULT 0,user_id INTEGER,status_id INTEGER,retweet_status_id INTEGER,reply_comment_id INTEGER,reply_screen_name STRING,type TINYINT(1) DEFAULT 0, PRIMARY KEY(comment_id, type))", "CREATE TABLE sn_portfolio(rowidINTEGER PRIMARY KEY,symbol TEXT,name TEXT,alias TEXT,current INTEGER,change INTEGER,percentage INTEGER,open INTEGER,close INTEGER,marketCapital INTEGER,showMarketCapital TEXT,volume INTEGER,volumeAverage INTEGER,pe_ttm TEXT,pe_lyr TEXT,dividend INTEGER,peRatio INTEGER,high INTEGER,low INTEGER,week52High INTEGER,week52Low INTEGER,following INTEGER,type TEXT,flag INTEGER,holding INTEGER)", "CREATE TABLE t_investment_calendar_table(investment_calendar_id INTEGER PRIMARY KEY AUTOINCREMENT, author_id INTEGER,url TEXT,color TEXT,timezone TEXT,title TEXT,description TEXT,location TEXT,followers_count INTEGER,created_at INTEGER,symbol TEXT,type INTEGER,privacy_read TEXT,privacy_write TEXT,stat TEXT,stat_color TEXT,stat_alert TEXT,stat_sort INTEGER,stat_show TINYINT(1) DEFAULT 0,is_mine TINYINT(1) DEFAULT 0)", "CREATE TABLE sn_organize (id INTEGER,name STRING,description TEXT,profileImageUrl STRING,count INTEGER,limit_count INTEGER,masterId INTEGER,pub TINYINT(1) DEFAULT 0,truncated TINYINT(1) DEFAULT 0,joined TINYINT(1) DEFAULT 0,empty_name TINYINT(1) DEFAULT 0,allow_invite_user TINYINT(1) DEFAULT 0,createdAt INTEGER,PRIMARY KEY(id))", Talk.Table.CREATE_TABLE, "CREATE TABLE t_taking_pos_table(_id INTEGER PRIMARY KEY AUTOINCREMENT, t_name STRING,symbol STRING,shares INTEGER,avgprice INTEGER,floatamount INTEGER,floatrate INTEGER,accumrate INTEGER,accumamount INTEGER,marketvalue INTEGER,quoteprice INTEGER,cost INTEGER,type TINYINT(1) DEFAULT 0)", SystemEvent.Table.CREATE_TABLE, "CREATE TABLE IF NOT EXISTS secret(`id` INTEGER PRIMARY KEY AUTOINCREMENT, `name` TEXT, `secret` TEXT, `version` INTEGER)" };
      dropTableNames = new String[] { "sn_status", "sn_user", "t_draft_table", "sn_comment", "sn_portfolio", "t_investment_calendar_table", "sn_organize", "im_talk", "im_message", "t_taking_pos_table", "system_event" };
      return;
    }
  }
  
  public static void createTable(SQLiteDatabase paramSQLiteDatabase)
  {
    try
    {
      paramSQLiteDatabase.beginTransaction();
      String[] arrayOfString = createTableSqls;
      int j = arrayOfString.length;
      int i = 0;
      while (i < j)
      {
        paramSQLiteDatabase.execSQL(arrayOfString[i]);
        i += 1;
      }
      paramSQLiteDatabase.setTransactionSuccessful();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return;
    }
    finally
    {
      if (paramSQLiteDatabase.inTransaction()) {
        paramSQLiteDatabase.endTransaction();
      }
    }
  }
  
  public static void dropTables(SQLiteDatabase paramSQLiteDatabase)
  {
    try
    {
      paramSQLiteDatabase.beginTransaction();
      String[] arrayOfString = dropTableNames;
      int j = arrayOfString.length;
      int i = 0;
      while (i < j)
      {
        String str = arrayOfString[i];
        paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + str);
        i += 1;
      }
      paramSQLiteDatabase.setTransactionSuccessful();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return;
    }
    finally
    {
      if (paramSQLiteDatabase.inTransaction()) {
        paramSQLiteDatabase.endTransaction();
      }
    }
  }
  
  private static void insertNewUser(SQLiteDatabase paramSQLiteDatabase, User paramUser)
  {
    assert (paramUser != null);
    try
    {
      paramSQLiteDatabase.beginTransaction();
      paramSQLiteDatabase.replace("sn_user", null, UserTable.contentValues(paramUser));
      paramSQLiteDatabase.setTransactionSuccessful();
      return;
    }
    catch (Exception paramUser)
    {
      paramUser.printStackTrace();
      return;
    }
    finally
    {
      if (paramSQLiteDatabase.inTransaction()) {
        paramSQLiteDatabase.endTransaction();
      }
    }
  }
  
  public static void recreateTables(SQLiteDatabase paramSQLiteDatabase, Context paramContext)
  {
    Object localObject2 = null;
    long l = UserLogonDataPrefs.getLogonUserId();
    String[] arrayOfString = new String[4];
    arrayOfString[0] = "userId";
    arrayOfString[1] = "screenName";
    arrayOfString[2] = "profileImageUrl";
    arrayOfString[3] = "step";
    Cursor localCursor = paramSQLiteDatabase.query("sn_user", arrayOfString, "userId= ?", new String[] { String.valueOf(l) }, null, null, null);
    Object localObject1 = localObject2;
    if (localCursor != null)
    {
      localObject1 = localObject2;
      if (localCursor.getCount() != 0)
      {
        if (-1 == localCursor.getPosition()) {
          localCursor.moveToFirst();
        }
        localObject1 = new User();
        ((User)localObject1).setUserId(localCursor.getLong(localCursor.getColumnIndex(arrayOfString[0])));
        ((User)localObject1).setScreenName(localCursor.getString(localCursor.getColumnIndex(arrayOfString[1])));
        ((User)localObject1).setProfileImageUrl(localCursor.getString(localCursor.getColumnIndex(arrayOfString[2])));
        ((User)localObject1).setStep(localCursor.getString(localCursor.getColumnIndex(arrayOfString[3])));
        localCursor.close();
      }
    }
    dropTables(paramSQLiteDatabase);
    createTable(paramSQLiteDatabase);
    if (localObject1 != null) {
      insertNewUser(paramSQLiteDatabase, (User)localObject1);
    }
    DefaultPrefs.putLong("last_update_friends_time", 0L, paramContext);
  }
  
  public static void upgrade(Context paramContext, SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    if (paramInt1 < paramInt2) {
      recreateTables(paramSQLiteDatabase, paramContext);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\storage\DatabaseHelperSupport.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */