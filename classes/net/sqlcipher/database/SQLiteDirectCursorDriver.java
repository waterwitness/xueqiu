package net.sqlcipher.database;

public class SQLiteDirectCursorDriver
  implements SQLiteCursorDriver
{
  private net.sqlcipher.Cursor mCursor;
  private SQLiteDatabase mDatabase;
  private String mEditTable;
  private SQLiteQuery mQuery;
  private String mSql;
  
  public SQLiteDirectCursorDriver(SQLiteDatabase paramSQLiteDatabase, String paramString1, String paramString2)
  {
    this.mDatabase = paramSQLiteDatabase;
    this.mEditTable = paramString2;
    this.mSql = paramString1;
  }
  
  public void cursorClosed()
  {
    this.mCursor = null;
  }
  
  public void cursorDeactivated() {}
  
  public void cursorRequeried(android.database.Cursor paramCursor) {}
  
  public net.sqlcipher.Cursor query(SQLiteDatabase.CursorFactory paramCursorFactory, String[] paramArrayOfString)
  {
    int j = 0;
    SQLiteQuery localSQLiteQuery = new SQLiteQuery(this.mDatabase, this.mSql, 0, paramArrayOfString);
    if (paramArrayOfString == null) {}
    for (int i = 0; j < i; i = paramArrayOfString.length) {
      try
      {
        label28:
        localSQLiteQuery.bindString(j + 1, paramArrayOfString[j]);
        j += 1;
        break label28;
      }
      finally
      {
        paramArrayOfString = localSQLiteQuery;
      }
    }
    if (paramCursorFactory == null) {}
    for (this.mCursor = new SQLiteCursor(this.mDatabase, this, this.mEditTable, localSQLiteQuery);; this.mCursor = paramCursorFactory.newCursor(this.mDatabase, this, this.mEditTable, localSQLiteQuery))
    {
      this.mQuery = localSQLiteQuery;
      paramArrayOfString = null;
      try
      {
        paramCursorFactory = this.mCursor;
        return paramCursorFactory;
      }
      finally {}
    }
    if (paramArrayOfString != null) {
      paramArrayOfString.close();
    }
    throw paramCursorFactory;
  }
  
  public void setBindArguments(String[] paramArrayOfString)
  {
    int j = paramArrayOfString.length;
    int i = 0;
    while (i < j)
    {
      this.mQuery.bindString(i + 1, paramArrayOfString[i]);
      i += 1;
    }
  }
  
  public String toString()
  {
    return "SQLiteDirectCursorDriver: " + this.mSql;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\net\sqlcipher\database\SQLiteDirectCursorDriver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */