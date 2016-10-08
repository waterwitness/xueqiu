package net.sqlcipher.database;

import android.os.SystemClock;

public class SQLiteStatement
  extends SQLiteProgram
{
  SQLiteStatement(SQLiteDatabase paramSQLiteDatabase, String paramString)
  {
    super(paramSQLiteDatabase, paramString);
  }
  
  private final native long native_1x1_long();
  
  private final native String native_1x1_string();
  
  private final native void native_execute();
  
  public void execute()
  {
    if (!this.mDatabase.isOpen()) {
      throw new IllegalStateException("database " + this.mDatabase.getPath() + " already closed");
    }
    long l = SystemClock.uptimeMillis();
    this.mDatabase.lock();
    acquireReference();
    try
    {
      native_execute();
      this.mDatabase.logTimeStat(this.mSql, l);
      return;
    }
    finally
    {
      releaseReference();
      this.mDatabase.unlock();
    }
  }
  
  /* Error */
  public long executeInsert()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 20	net/sqlcipher/database/SQLiteStatement:mDatabase	Lnet/sqlcipher/database/SQLiteDatabase;
    //   4: invokevirtual 26	net/sqlcipher/database/SQLiteDatabase:isOpen	()Z
    //   7: ifne +38 -> 45
    //   10: new 28	java/lang/IllegalStateException
    //   13: dup
    //   14: new 30	java/lang/StringBuilder
    //   17: dup
    //   18: ldc 32
    //   20: invokespecial 35	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   23: aload_0
    //   24: getfield 20	net/sqlcipher/database/SQLiteStatement:mDatabase	Lnet/sqlcipher/database/SQLiteDatabase;
    //   27: invokevirtual 38	net/sqlcipher/database/SQLiteDatabase:getPath	()Ljava/lang/String;
    //   30: invokevirtual 42	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   33: ldc 44
    //   35: invokevirtual 42	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   38: invokevirtual 47	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   41: invokespecial 48	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   44: athrow
    //   45: invokestatic 53	android/os/SystemClock:uptimeMillis	()J
    //   48: lstore_2
    //   49: aload_0
    //   50: getfield 20	net/sqlcipher/database/SQLiteStatement:mDatabase	Lnet/sqlcipher/database/SQLiteDatabase;
    //   53: invokevirtual 56	net/sqlcipher/database/SQLiteDatabase:lock	()V
    //   56: aload_0
    //   57: invokevirtual 59	net/sqlcipher/database/SQLiteStatement:acquireReference	()V
    //   60: aload_0
    //   61: invokespecial 61	net/sqlcipher/database/SQLiteStatement:native_execute	()V
    //   64: aload_0
    //   65: getfield 20	net/sqlcipher/database/SQLiteStatement:mDatabase	Lnet/sqlcipher/database/SQLiteDatabase;
    //   68: aload_0
    //   69: getfield 65	net/sqlcipher/database/SQLiteStatement:mSql	Ljava/lang/String;
    //   72: lload_2
    //   73: invokevirtual 69	net/sqlcipher/database/SQLiteDatabase:logTimeStat	(Ljava/lang/String;J)V
    //   76: aload_0
    //   77: getfield 20	net/sqlcipher/database/SQLiteStatement:mDatabase	Lnet/sqlcipher/database/SQLiteDatabase;
    //   80: invokevirtual 80	net/sqlcipher/database/SQLiteDatabase:lastChangeCount	()I
    //   83: ifle +24 -> 107
    //   86: aload_0
    //   87: getfield 20	net/sqlcipher/database/SQLiteStatement:mDatabase	Lnet/sqlcipher/database/SQLiteDatabase;
    //   90: invokevirtual 83	net/sqlcipher/database/SQLiteDatabase:lastInsertRow	()J
    //   93: lstore_2
    //   94: aload_0
    //   95: invokevirtual 72	net/sqlcipher/database/SQLiteStatement:releaseReference	()V
    //   98: aload_0
    //   99: getfield 20	net/sqlcipher/database/SQLiteStatement:mDatabase	Lnet/sqlcipher/database/SQLiteDatabase;
    //   102: invokevirtual 75	net/sqlcipher/database/SQLiteDatabase:unlock	()V
    //   105: lload_2
    //   106: lreturn
    //   107: ldc2_w 84
    //   110: lstore_2
    //   111: goto -17 -> 94
    //   114: astore_1
    //   115: aload_0
    //   116: invokevirtual 72	net/sqlcipher/database/SQLiteStatement:releaseReference	()V
    //   119: aload_0
    //   120: getfield 20	net/sqlcipher/database/SQLiteStatement:mDatabase	Lnet/sqlcipher/database/SQLiteDatabase;
    //   123: invokevirtual 75	net/sqlcipher/database/SQLiteDatabase:unlock	()V
    //   126: aload_1
    //   127: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	128	0	this	SQLiteStatement
    //   114	13	1	localObject	Object
    //   48	63	2	l	long
    // Exception table:
    //   from	to	target	type
    //   60	94	114	finally
  }
  
  public long executeUpdateDelete()
  {
    if (!this.mDatabase.isOpen()) {
      throw new IllegalStateException("database " + this.mDatabase.getPath() + " already closed");
    }
    long l = SystemClock.uptimeMillis();
    this.mDatabase.lock();
    acquireReference();
    try
    {
      native_execute();
      this.mDatabase.logTimeStat(this.mSql, l);
      int i = this.mDatabase.lastChangeCount();
      l = i;
      return l;
    }
    finally
    {
      releaseReference();
      this.mDatabase.unlock();
    }
  }
  
  public long simpleQueryForLong()
  {
    if (!this.mDatabase.isOpen()) {
      throw new IllegalStateException("database " + this.mDatabase.getPath() + " already closed");
    }
    long l1 = SystemClock.uptimeMillis();
    this.mDatabase.lock();
    acquireReference();
    try
    {
      long l2 = native_1x1_long();
      this.mDatabase.logTimeStat(this.mSql, l1);
      return l2;
    }
    finally
    {
      releaseReference();
      this.mDatabase.unlock();
    }
  }
  
  public String simpleQueryForString()
  {
    if (!this.mDatabase.isOpen()) {
      throw new IllegalStateException("database " + this.mDatabase.getPath() + " already closed");
    }
    long l = SystemClock.uptimeMillis();
    this.mDatabase.lock();
    acquireReference();
    try
    {
      String str = native_1x1_string();
      this.mDatabase.logTimeStat(this.mSql, l);
      return str;
    }
    finally
    {
      releaseReference();
      this.mDatabase.unlock();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\net\sqlcipher\database\SQLiteStatement.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */