package com.xueqiu.android.base.storage;

import android.content.Context;
import com.xueqiu.android.base.util.v;
import net.sqlcipher.database.SQLiteDatabaseHook;
import net.sqlcipher.database.SQLiteOpenHelper;

public class CipherDatabaseHelper
  extends SQLiteOpenHelper
{
  private Context mContext = null;
  
  public CipherDatabaseHelper(Context paramContext, String paramString)
  {
    super(paramContext, String.format("%s_%s", new Object[] { paramString, "snowball.db" }), null, 81, new SQLiteDatabaseHook()
    {
      public void postKey(net.sqlcipher.database.SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        paramAnonymousSQLiteDatabase.execSQL("PRAGMA cipher_default_kdf_iter = 4000;");
      }
      
      public void preKey(net.sqlcipher.database.SQLiteDatabase paramAnonymousSQLiteDatabase) {}
    });
    this.mContext = paramContext;
  }
  
  public void onCreate(net.sqlcipher.database.SQLiteDatabase paramSQLiteDatabase)
  {
    v.a("DroidDatabaseHelper", "CipherDatabaseHelper onCreate");
    DatabaseHelperSupport.createTable(new SQLiteDatabase(paramSQLiteDatabase));
  }
  
  public void onUpgrade(net.sqlcipher.database.SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    v.a("DroidDatabaseHelper", "CipherDatabaseHelper onUpgrade");
    DatabaseHelperSupport.upgrade(this.mContext, new SQLiteDatabase(paramSQLiteDatabase), paramInt1, paramInt2);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\storage\CipherDatabaseHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */