package net.sqlcipher.database;

import android.util.Log;

class SQLiteCompiledSql
{
  private static final String TAG = "SQLiteCompiledSql";
  SQLiteDatabase mDatabase;
  private boolean mInUse = false;
  private String mSqlStmt = null;
  private Throwable mStackTrace = null;
  int nHandle = 0;
  int nStatement = 0;
  
  SQLiteCompiledSql(SQLiteDatabase paramSQLiteDatabase, String paramString)
  {
    if (!paramSQLiteDatabase.isOpen()) {
      throw new IllegalStateException("database " + paramSQLiteDatabase.getPath() + " already closed");
    }
    this.mDatabase = paramSQLiteDatabase;
    this.mSqlStmt = paramString;
    this.mStackTrace = new DatabaseObjectNotClosedException().fillInStackTrace();
    this.nHandle = paramSQLiteDatabase.mNativeHandle;
    compile(paramString, true);
  }
  
  private void compile(String paramString, boolean paramBoolean)
  {
    if (!this.mDatabase.isOpen()) {
      throw new IllegalStateException("database " + this.mDatabase.getPath() + " already closed");
    }
    if (paramBoolean) {
      this.mDatabase.lock();
    }
    try
    {
      native_compile(paramString);
      return;
    }
    finally
    {
      this.mDatabase.unlock();
    }
  }
  
  private final native void native_compile(String paramString);
  
  private final native void native_finalize();
  
  /* Error */
  boolean acquire()
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_3
    //   2: aload_0
    //   3: monitorenter
    //   4: aload_0
    //   5: getfield 33	net/sqlcipher/database/SQLiteCompiledSql:mInUse	Z
    //   8: istore_2
    //   9: iload_2
    //   10: ifeq +9 -> 19
    //   13: iconst_0
    //   14: istore_2
    //   15: aload_0
    //   16: monitorexit
    //   17: iload_2
    //   18: ireturn
    //   19: aload_0
    //   20: iconst_1
    //   21: putfield 33	net/sqlcipher/database/SQLiteCompiledSql:mInUse	Z
    //   24: iload_3
    //   25: istore_2
    //   26: getstatic 95	net/sqlcipher/database/SQLiteDebug:DEBUG_ACTIVE_CURSOR_FINALIZATION	Z
    //   29: ifeq -14 -> 15
    //   32: ldc 8
    //   34: new 43	java/lang/StringBuilder
    //   37: dup
    //   38: ldc 97
    //   40: invokespecial 48	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   43: aload_0
    //   44: getfield 27	net/sqlcipher/database/SQLiteCompiledSql:nStatement	I
    //   47: invokevirtual 100	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   50: ldc 102
    //   52: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   55: invokevirtual 61	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   58: invokestatic 108	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   61: pop
    //   62: iload_3
    //   63: istore_2
    //   64: goto -49 -> 15
    //   67: astore_1
    //   68: aload_0
    //   69: monitorexit
    //   70: aload_1
    //   71: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	72	0	this	SQLiteCompiledSql
    //   67	4	1	localObject	Object
    //   8	56	2	bool1	boolean
    //   1	62	3	bool2	boolean
    // Exception table:
    //   from	to	target	type
    //   4	9	67	finally
    //   19	24	67	finally
    //   26	62	67	finally
  }
  
  /* Error */
  protected void finalize()
  {
    // Byte code:
    //   0: bipush 100
    //   2: istore_3
    //   3: aload_0
    //   4: getfield 27	net/sqlcipher/database/SQLiteCompiledSql:nStatement	I
    //   7: istore 4
    //   9: iload 4
    //   11: ifne +8 -> 19
    //   14: aload_0
    //   15: invokespecial 111	java/lang/Object:finalize	()V
    //   18: return
    //   19: getstatic 95	net/sqlcipher/database/SQLiteDebug:DEBUG_ACTIVE_CURSOR_FINALIZATION	Z
    //   22: ifeq +33 -> 55
    //   25: ldc 8
    //   27: new 43	java/lang/StringBuilder
    //   30: dup
    //   31: ldc 113
    //   33: invokespecial 48	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   36: aload_0
    //   37: getfield 27	net/sqlcipher/database/SQLiteCompiledSql:nStatement	I
    //   40: invokevirtual 100	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   43: ldc 115
    //   45: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   48: invokevirtual 61	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   51: invokestatic 108	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   54: pop
    //   55: aload_0
    //   56: getfield 29	net/sqlcipher/database/SQLiteCompiledSql:mSqlStmt	Ljava/lang/String;
    //   59: invokevirtual 121	java/lang/String:length	()I
    //   62: istore 4
    //   64: new 43	java/lang/StringBuilder
    //   67: dup
    //   68: ldc 123
    //   70: invokespecial 48	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   73: astore_1
    //   74: aload_0
    //   75: getfield 29	net/sqlcipher/database/SQLiteCompiledSql:mSqlStmt	Ljava/lang/String;
    //   78: astore_2
    //   79: iload 4
    //   81: bipush 100
    //   83: if_icmple +35 -> 118
    //   86: ldc 8
    //   88: aload_1
    //   89: aload_2
    //   90: iconst_0
    //   91: iload_3
    //   92: invokevirtual 127	java/lang/String:substring	(II)Ljava/lang/String;
    //   95: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   98: invokevirtual 61	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   101: aload_0
    //   102: getfield 31	net/sqlcipher/database/SQLiteCompiledSql:mStackTrace	Ljava/lang/Throwable;
    //   105: invokestatic 131	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   108: pop
    //   109: aload_0
    //   110: invokevirtual 134	net/sqlcipher/database/SQLiteCompiledSql:releaseSqlStatement	()V
    //   113: aload_0
    //   114: invokespecial 111	java/lang/Object:finalize	()V
    //   117: return
    //   118: iload 4
    //   120: istore_3
    //   121: goto -35 -> 86
    //   124: astore_1
    //   125: aload_0
    //   126: invokespecial 111	java/lang/Object:finalize	()V
    //   129: aload_1
    //   130: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	131	0	this	SQLiteCompiledSql
    //   73	16	1	localStringBuilder	StringBuilder
    //   124	6	1	localObject	Object
    //   78	12	2	str	String
    //   2	119	3	i	int
    //   7	112	4	j	int
    // Exception table:
    //   from	to	target	type
    //   3	9	124	finally
    //   19	55	124	finally
    //   55	79	124	finally
    //   86	113	124	finally
  }
  
  void release()
  {
    try
    {
      if (SQLiteDebug.DEBUG_ACTIVE_CURSOR_FINALIZATION) {
        Log.v("SQLiteCompiledSql", "Released DbObj (id#" + this.nStatement + ") back to DB cache");
      }
      this.mInUse = false;
      return;
    }
    finally {}
  }
  
  void releaseSqlStatement()
  {
    if (this.nStatement != 0) {
      if (SQLiteDebug.DEBUG_ACTIVE_CURSOR_FINALIZATION) {
        Log.v("SQLiteCompiledSql", "closed and deallocated DbObj (id#" + this.nStatement + ")");
      }
    }
    try
    {
      this.mDatabase.lock();
      native_finalize();
      this.nStatement = 0;
      return;
    }
    finally
    {
      this.mDatabase.unlock();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\net\sqlcipher\database\SQLiteCompiledSql.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */