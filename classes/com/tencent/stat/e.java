package com.tencent.stat;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.tencent.stat.common.StatCommonHelper;
import com.tencent.stat.common.StatLogger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class e
  extends SQLiteOpenHelper
{
  private static String a = "tencent_analysis.db";
  private static int b = 3;
  
  public e(Context paramContext)
  {
    super(paramContext, a, null, b);
  }
  
  private static void a(SQLiteDatabase paramSQLiteDatabase)
  {
    String str = null;
    Cursor localCursor = paramSQLiteDatabase.query("user", null, null, null, null, null, null);
    ContentValues localContentValues = new ContentValues();
    if (localCursor.moveToNext())
    {
      str = localCursor.getString(0);
      localCursor.getInt(1);
      localCursor.getString(2);
      localCursor.getLong(3);
      localContentValues.put("uid", StatCommonHelper.encode(str));
    }
    if (str != null) {
      paramSQLiteDatabase.update("user", localContentValues, "uid=?", new String[] { str });
    }
  }
  
  private static void b(SQLiteDatabase paramSQLiteDatabase)
  {
    Object localObject1 = paramSQLiteDatabase.query("events", null, null, null, null, null, null);
    Object localObject2 = new ArrayList();
    while (((Cursor)localObject1).moveToNext()) {
      ((List)localObject2).add(new f(((Cursor)localObject1).getLong(0), ((Cursor)localObject1).getString(1), ((Cursor)localObject1).getInt(2), ((Cursor)localObject1).getInt(3)));
    }
    localObject1 = new ContentValues();
    localObject2 = ((List)localObject2).iterator();
    while (((Iterator)localObject2).hasNext())
    {
      f localf = (f)((Iterator)localObject2).next();
      ((ContentValues)localObject1).put("content", StatCommonHelper.encode(localf.b));
      paramSQLiteDatabase.update("events", (ContentValues)localObject1, "event_id=?", new String[] { Long.toString(localf.a) });
    }
  }
  
  public final void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("create table if not exists events(event_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, content TEXT, status INTEGER, send_count INTEGER, timestamp LONG)");
    paramSQLiteDatabase.execSQL("create table if not exists user(uid TEXT PRIMARY KEY, user_type INTEGER, app_ver TEXT, ts INTEGER)");
    paramSQLiteDatabase.execSQL("create table if not exists config(type INTEGER PRIMARY KEY NOT NULL, content TEXT, md5sum TEXT, version INTEGER)");
    paramSQLiteDatabase.execSQL("create table if not exists keyvalues(key TEXT PRIMARY KEY NOT NULL, value TEXT)");
  }
  
  public final void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    StatStore.access$400().debug("upgrade DB from oldVersion " + paramInt1 + " to newVersion " + paramInt2);
    if (paramInt1 == 1)
    {
      paramSQLiteDatabase.execSQL("create table if not exists keyvalues(key TEXT PRIMARY KEY NOT NULL, value TEXT)");
      a(paramSQLiteDatabase);
      b(paramSQLiteDatabase);
    }
    if (paramInt1 == 2)
    {
      a(paramSQLiteDatabase);
      b(paramSQLiteDatabase);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\stat\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */