package com.xueqiu.android.base.storage;

import android.content.Context;
import android.database.sqlite.SQLiteOpenHelper;
import com.xueqiu.android.base.util.v;

public class DroidDatabaseHelper
  extends SQLiteOpenHelper
{
  private Context mContext = null;
  
  public DroidDatabaseHelper(Context paramContext, String paramString)
  {
    super(paramContext, String.format("%s_%s", new Object[] { paramString, "snowball.db" }), null, 81);
    this.mContext = paramContext;
  }
  
  public void onCreate(android.database.sqlite.SQLiteDatabase paramSQLiteDatabase)
  {
    v.a("DroidDatabaseHelper", "DroidDatabaseHelper onCreate");
    DatabaseHelperSupport.createTable(new SQLiteDatabase(paramSQLiteDatabase));
  }
  
  public void onUpgrade(android.database.sqlite.SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    v.a("DroidDatabaseHelper", "DroidDatabaseHelper onUpgrade");
    DatabaseHelperSupport.upgrade(this.mContext, new SQLiteDatabase(paramSQLiteDatabase), paramInt1, paramInt2);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\storage\DroidDatabaseHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */