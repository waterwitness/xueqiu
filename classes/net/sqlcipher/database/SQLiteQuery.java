package net.sqlcipher.database;

import net.sqlcipher.CursorWindow;

public class SQLiteQuery
  extends SQLiteProgram
{
  private static final String TAG = "Cursor";
  private String[] mBindArgs;
  private boolean mClosed = false;
  private int mOffsetIndex;
  
  SQLiteQuery(SQLiteDatabase paramSQLiteDatabase, String paramString, int paramInt, String[] paramArrayOfString)
  {
    super(paramSQLiteDatabase, paramString);
    this.mOffsetIndex = paramInt;
    this.mBindArgs = paramArrayOfString;
  }
  
  private final native int native_column_count();
  
  private final native String native_column_name(int paramInt);
  
  private final native int native_fill_window(CursorWindow paramCursorWindow, int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  
  public void bindDouble(int paramInt, double paramDouble)
  {
    this.mBindArgs[(paramInt - 1)] = Double.toString(paramDouble);
    if (!this.mClosed) {
      super.bindDouble(paramInt, paramDouble);
    }
  }
  
  public void bindLong(int paramInt, long paramLong)
  {
    this.mBindArgs[(paramInt - 1)] = Long.toString(paramLong);
    if (!this.mClosed) {
      super.bindLong(paramInt, paramLong);
    }
  }
  
  public void bindNull(int paramInt)
  {
    this.mBindArgs[(paramInt - 1)] = null;
    if (!this.mClosed) {
      super.bindNull(paramInt);
    }
  }
  
  public void bindString(int paramInt, String paramString)
  {
    this.mBindArgs[(paramInt - 1)] = paramString;
    if (!this.mClosed) {
      super.bindString(paramInt, paramString);
    }
  }
  
  public void close()
  {
    super.close();
    this.mClosed = true;
  }
  
  int columnCountLocked()
  {
    acquireReference();
    try
    {
      int i = native_column_count();
      return i;
    }
    finally
    {
      releaseReference();
    }
  }
  
  String columnNameLocked(int paramInt)
  {
    acquireReference();
    try
    {
      String str = native_column_name(paramInt);
      return str;
    }
    finally
    {
      releaseReference();
    }
  }
  
  /* Error */
  int fillWindow(CursorWindow paramCursorWindow, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: invokestatic 87	android/os/SystemClock:uptimeMillis	()J
    //   3: lstore 5
    //   5: aload_0
    //   6: getfield 91	net/sqlcipher/database/SQLiteQuery:mDatabase	Lnet/sqlcipher/database/SQLiteDatabase;
    //   9: invokevirtual 96	net/sqlcipher/database/SQLiteDatabase:lock	()V
    //   12: aload_0
    //   13: getfield 91	net/sqlcipher/database/SQLiteQuery:mDatabase	Lnet/sqlcipher/database/SQLiteDatabase;
    //   16: aload_0
    //   17: getfield 99	net/sqlcipher/database/SQLiteQuery:mSql	Ljava/lang/String;
    //   20: lload 5
    //   22: ldc 101
    //   24: invokevirtual 105	net/sqlcipher/database/SQLiteDatabase:logTimeStat	(Ljava/lang/String;JLjava/lang/String;)V
    //   27: aload_0
    //   28: invokevirtual 67	net/sqlcipher/database/SQLiteQuery:acquireReference	()V
    //   31: aload_1
    //   32: invokevirtual 108	net/sqlcipher/CursorWindow:acquireReference	()V
    //   35: aload_0
    //   36: aload_1
    //   37: aload_1
    //   38: invokevirtual 111	net/sqlcipher/CursorWindow:getStartPosition	()I
    //   41: aload_0
    //   42: getfield 23	net/sqlcipher/database/SQLiteQuery:mOffsetIndex	I
    //   45: iload_2
    //   46: iload_3
    //   47: invokespecial 113	net/sqlcipher/database/SQLiteQuery:native_fill_window	(Lnet/sqlcipher/CursorWindow;IIII)I
    //   50: istore_2
    //   51: getstatic 118	net/sqlcipher/database/SQLiteDebug:DEBUG_SQL_STATEMENTS	Z
    //   54: ifeq +28 -> 82
    //   57: ldc 8
    //   59: new 120	java/lang/StringBuilder
    //   62: dup
    //   63: ldc 122
    //   65: invokespecial 125	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   68: aload_0
    //   69: getfield 99	net/sqlcipher/database/SQLiteQuery:mSql	Ljava/lang/String;
    //   72: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   75: invokevirtual 132	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   78: invokestatic 138	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   81: pop
    //   82: aload_0
    //   83: getfield 91	net/sqlcipher/database/SQLiteQuery:mDatabase	Lnet/sqlcipher/database/SQLiteDatabase;
    //   86: aload_0
    //   87: getfield 99	net/sqlcipher/database/SQLiteQuery:mSql	Ljava/lang/String;
    //   90: lload 5
    //   92: invokevirtual 141	net/sqlcipher/database/SQLiteDatabase:logTimeStat	(Ljava/lang/String;J)V
    //   95: aload_1
    //   96: invokevirtual 142	net/sqlcipher/CursorWindow:releaseReference	()V
    //   99: aload_0
    //   100: invokevirtual 72	net/sqlcipher/database/SQLiteQuery:releaseReference	()V
    //   103: aload_0
    //   104: getfield 91	net/sqlcipher/database/SQLiteQuery:mDatabase	Lnet/sqlcipher/database/SQLiteDatabase;
    //   107: invokevirtual 145	net/sqlcipher/database/SQLiteDatabase:unlock	()V
    //   110: iload_2
    //   111: ireturn
    //   112: astore 4
    //   114: aload_1
    //   115: invokevirtual 142	net/sqlcipher/CursorWindow:releaseReference	()V
    //   118: aload_0
    //   119: invokevirtual 72	net/sqlcipher/database/SQLiteQuery:releaseReference	()V
    //   122: aload_0
    //   123: getfield 91	net/sqlcipher/database/SQLiteQuery:mDatabase	Lnet/sqlcipher/database/SQLiteDatabase;
    //   126: invokevirtual 145	net/sqlcipher/database/SQLiteDatabase:unlock	()V
    //   129: iconst_0
    //   130: ireturn
    //   131: astore 4
    //   133: aload_0
    //   134: getfield 91	net/sqlcipher/database/SQLiteQuery:mDatabase	Lnet/sqlcipher/database/SQLiteDatabase;
    //   137: invokevirtual 148	net/sqlcipher/database/SQLiteDatabase:onCorruption	()V
    //   140: aload 4
    //   142: athrow
    //   143: astore 4
    //   145: aload_1
    //   146: invokevirtual 142	net/sqlcipher/CursorWindow:releaseReference	()V
    //   149: aload 4
    //   151: athrow
    //   152: astore_1
    //   153: aload_0
    //   154: invokevirtual 72	net/sqlcipher/database/SQLiteQuery:releaseReference	()V
    //   157: aload_0
    //   158: getfield 91	net/sqlcipher/database/SQLiteQuery:mDatabase	Lnet/sqlcipher/database/SQLiteDatabase;
    //   161: invokevirtual 145	net/sqlcipher/database/SQLiteDatabase:unlock	()V
    //   164: aload_1
    //   165: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	166	0	this	SQLiteQuery
    //   0	166	1	paramCursorWindow	CursorWindow
    //   0	166	2	paramInt1	int
    //   0	166	3	paramInt2	int
    //   112	1	4	localIllegalStateException	IllegalStateException
    //   131	10	4	localSQLiteDatabaseCorruptException	SQLiteDatabaseCorruptException
    //   143	7	4	localObject	Object
    //   3	88	5	l	long
    // Exception table:
    //   from	to	target	type
    //   31	82	112	java/lang/IllegalStateException
    //   82	95	112	java/lang/IllegalStateException
    //   31	82	131	net/sqlcipher/database/SQLiteDatabaseCorruptException
    //   82	95	131	net/sqlcipher/database/SQLiteDatabaseCorruptException
    //   31	82	143	finally
    //   82	95	143	finally
    //   133	143	143	finally
    //   27	31	152	finally
    //   95	99	152	finally
    //   114	118	152	finally
    //   145	152	152	finally
  }
  
  void requery()
  {
    int j = 0;
    if (this.mBindArgs != null)
    {
      int k = this.mBindArgs.length;
      int i = 0;
      while (i < k) {
        try
        {
          super.bindString(i + 1, this.mBindArgs[i]);
          i += 1;
        }
        catch (SQLiteMisuseException localSQLiteMisuseException)
        {
          StringBuilder localStringBuilder = new StringBuilder("mSql " + this.mSql);
          i = j;
          while (i < k)
          {
            localStringBuilder.append(" ");
            localStringBuilder.append(this.mBindArgs[i]);
            i += 1;
          }
          localStringBuilder.append(" ");
          throw new IllegalStateException(localStringBuilder.toString(), localSQLiteMisuseException);
        }
      }
    }
  }
  
  public String toString()
  {
    return "SQLiteQuery: " + this.mSql;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\net\sqlcipher\database\SQLiteQuery.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */