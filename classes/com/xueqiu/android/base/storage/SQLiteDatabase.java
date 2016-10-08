package com.xueqiu.android.base.storage;

import android.annotation.TargetApi;
import android.content.ContentValues;
import android.database.Cursor;

public class SQLiteDatabase
{
  net.sqlcipher.database.SQLiteDatabase cipherDatabase;
  android.database.sqlite.SQLiteDatabase droidDatabase;
  
  @TargetApi(11)
  public SQLiteDatabase(android.database.sqlite.SQLiteDatabase paramSQLiteDatabase)
  {
    this.droidDatabase = paramSQLiteDatabase;
    this.droidDatabase.enableWriteAheadLogging();
  }
  
  public SQLiteDatabase(net.sqlcipher.database.SQLiteDatabase paramSQLiteDatabase)
  {
    this.cipherDatabase = paramSQLiteDatabase;
    this.cipherDatabase.setLockingEnabled(false);
  }
  
  public void beginTransaction()
  {
    if (this.cipherDatabase != null) {
      this.cipherDatabase.beginTransaction();
    }
    if (this.droidDatabase != null) {
      this.droidDatabase.beginTransaction();
    }
  }
  
  public void close()
  {
    if (this.cipherDatabase != null) {
      this.cipherDatabase.close();
    }
    if (this.droidDatabase != null) {
      this.droidDatabase.close();
    }
  }
  
  public int delete(String paramString1, String paramString2, String[] paramArrayOfString)
  {
    if (this.cipherDatabase != null) {
      return this.cipherDatabase.delete(paramString1, paramString2, paramArrayOfString);
    }
    if (this.droidDatabase != null) {
      return this.droidDatabase.delete(paramString1, paramString2, paramArrayOfString);
    }
    return -1;
  }
  
  public void endTransaction()
  {
    if (this.cipherDatabase != null) {
      this.cipherDatabase.endTransaction();
    }
    if (this.droidDatabase != null) {
      this.droidDatabase.endTransaction();
    }
  }
  
  public void execSQL(String paramString)
  {
    if (this.cipherDatabase != null) {
      this.cipherDatabase.execSQL(paramString);
    }
    if (this.droidDatabase != null) {
      this.droidDatabase.execSQL(paramString);
    }
  }
  
  public void execSQL(String paramString, Object[] paramArrayOfObject)
  {
    if (this.cipherDatabase != null) {
      this.cipherDatabase.execSQL(paramString, paramArrayOfObject);
    }
    if (this.droidDatabase != null) {
      this.droidDatabase.execSQL(paramString, paramArrayOfObject);
    }
  }
  
  public boolean inTransaction()
  {
    if (this.cipherDatabase != null) {
      return this.cipherDatabase.inTransaction();
    }
    if (this.droidDatabase != null) {
      return this.droidDatabase.inTransaction();
    }
    return false;
  }
  
  public long insert(String paramString1, String paramString2, ContentValues paramContentValues)
  {
    if (this.cipherDatabase != null) {
      return this.cipherDatabase.insert(paramString1, paramString2, paramContentValues);
    }
    if (this.droidDatabase != null) {
      return this.droidDatabase.insert(paramString1, paramString2, paramContentValues);
    }
    return -1L;
  }
  
  public Cursor query(String paramString1, String[] paramArrayOfString1, String paramString2, String[] paramArrayOfString2, String paramString3, String paramString4, String paramString5)
  {
    if (this.cipherDatabase != null) {
      return this.cipherDatabase.query(paramString1, paramArrayOfString1, paramString2, paramArrayOfString2, paramString3, paramString4, paramString5);
    }
    if (this.droidDatabase != null) {
      return this.droidDatabase.query(paramString1, paramArrayOfString1, paramString2, paramArrayOfString2, paramString3, paramString4, paramString5);
    }
    return null;
  }
  
  public Cursor query(String paramString1, String[] paramArrayOfString1, String paramString2, String[] paramArrayOfString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    if (this.cipherDatabase != null) {
      return this.cipherDatabase.query(paramString1, paramArrayOfString1, paramString2, paramArrayOfString2, paramString3, paramString4, paramString5, paramString6);
    }
    if (this.droidDatabase != null) {
      return this.droidDatabase.query(paramString1, paramArrayOfString1, paramString2, paramArrayOfString2, paramString3, paramString4, paramString5, paramString6);
    }
    return null;
  }
  
  public Cursor query(boolean paramBoolean, String paramString1, String[] paramArrayOfString1, String paramString2, String[] paramArrayOfString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    if (this.cipherDatabase != null) {
      return this.cipherDatabase.query(paramBoolean, paramString1, paramArrayOfString1, paramString2, paramArrayOfString2, paramString3, paramString4, paramString5, paramString6);
    }
    if (this.droidDatabase != null) {
      return this.droidDatabase.query(paramBoolean, paramString1, paramArrayOfString1, paramString2, paramArrayOfString2, paramString3, paramString4, paramString5, paramString6);
    }
    return null;
  }
  
  public Cursor rawQuery(String paramString, String[] paramArrayOfString)
  {
    if (this.cipherDatabase != null) {
      return this.cipherDatabase.rawQuery(paramString, paramArrayOfString);
    }
    if (this.droidDatabase != null) {
      return this.droidDatabase.rawQuery(paramString, paramArrayOfString);
    }
    return null;
  }
  
  public long replace(String paramString1, String paramString2, ContentValues paramContentValues)
  {
    if (this.cipherDatabase != null) {
      return this.cipherDatabase.replace(paramString1, paramString2, paramContentValues);
    }
    if (this.droidDatabase != null) {
      return this.droidDatabase.replace(paramString1, paramString2, paramContentValues);
    }
    return -1L;
  }
  
  public void setTransactionSuccessful()
  {
    if (this.cipherDatabase != null) {
      this.cipherDatabase.setTransactionSuccessful();
    }
    if (this.droidDatabase != null) {
      this.droidDatabase.setTransactionSuccessful();
    }
  }
  
  public int update(String paramString1, ContentValues paramContentValues, String paramString2, String[] paramArrayOfString)
  {
    if (this.cipherDatabase != null) {
      return this.cipherDatabase.update(paramString1, paramContentValues, paramString2, paramArrayOfString);
    }
    if (this.droidDatabase != null) {
      return this.droidDatabase.update(paramString1, paramContentValues, paramString2, paramArrayOfString);
    }
    return -1;
  }
  
  public boolean yieldIfContendedSafely()
  {
    if (this.cipherDatabase != null) {
      return this.cipherDatabase.yieldIfContendedSafely();
    }
    if (this.droidDatabase != null) {
      return this.droidDatabase.yieldIfContendedSafely();
    }
    return false;
  }
  
  public boolean yieldIfContendedSafely(long paramLong)
  {
    if (this.cipherDatabase != null) {
      return this.cipherDatabase.yieldIfContendedSafely(paramLong);
    }
    if (this.droidDatabase != null) {
      return this.droidDatabase.yieldIfContendedSafely(paramLong);
    }
    return false;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\storage\SQLiteDatabase.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */