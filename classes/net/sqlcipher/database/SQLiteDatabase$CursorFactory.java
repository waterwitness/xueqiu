package net.sqlcipher.database;

import net.sqlcipher.Cursor;

public abstract interface SQLiteDatabase$CursorFactory
{
  public abstract Cursor newCursor(SQLiteDatabase paramSQLiteDatabase, SQLiteCursorDriver paramSQLiteCursorDriver, String paramString, SQLiteQuery paramSQLiteQuery);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\net\sqlcipher\database\SQLiteDatabase$CursorFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */