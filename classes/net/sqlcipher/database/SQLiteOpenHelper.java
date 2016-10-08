package net.sqlcipher.database;

import android.content.Context;
import android.util.Log;
import java.io.File;

public abstract class SQLiteOpenHelper
{
  private static final String TAG = SQLiteOpenHelper.class.getSimpleName();
  private final Context mContext;
  private SQLiteDatabase mDatabase = null;
  private final SQLiteDatabase.CursorFactory mFactory;
  private final SQLiteDatabaseHook mHook;
  private boolean mIsInitializing = false;
  private final String mName;
  private final int mNewVersion;
  
  public SQLiteOpenHelper(Context paramContext, String paramString, SQLiteDatabase.CursorFactory paramCursorFactory, int paramInt)
  {
    this(paramContext, paramString, paramCursorFactory, paramInt, null);
  }
  
  public SQLiteOpenHelper(Context paramContext, String paramString, SQLiteDatabase.CursorFactory paramCursorFactory, int paramInt, SQLiteDatabaseHook paramSQLiteDatabaseHook)
  {
    if (paramInt <= 0) {
      throw new IllegalArgumentException("Version must be >= 1, was " + paramInt);
    }
    this.mContext = paramContext;
    this.mName = paramString;
    this.mFactory = paramCursorFactory;
    this.mNewVersion = paramInt;
    this.mHook = paramSQLiteDatabaseHook;
  }
  
  public void close()
  {
    try
    {
      if (this.mIsInitializing) {
        throw new IllegalStateException("Closed during initialization");
      }
    }
    finally {}
    if ((this.mDatabase != null) && (this.mDatabase.isOpen()))
    {
      this.mDatabase.close();
      this.mDatabase = null;
    }
  }
  
  public SQLiteDatabase getReadableDatabase(String paramString)
  {
    try
    {
      paramString = getReadableDatabase(paramString.toCharArray());
      return paramString;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public SQLiteDatabase getReadableDatabase(char[] paramArrayOfChar)
  {
    for (;;)
    {
      try
      {
        if ((this.mDatabase != null) && (this.mDatabase.isOpen()))
        {
          paramArrayOfChar = this.mDatabase;
          return paramArrayOfChar;
        }
        if (this.mIsInitializing) {
          throw new IllegalStateException("getReadableDatabase called recursively");
        }
      }
      finally {}
      SQLiteDatabase localSQLiteDatabase3;
      SQLiteDatabase localSQLiteDatabase2;
      try
      {
        SQLiteDatabase localSQLiteDatabase1 = getWritableDatabase(paramArrayOfChar);
        paramArrayOfChar = localSQLiteDatabase1;
      }
      catch (SQLiteException localSQLiteException)
      {
        if (this.mName == null) {
          throw localSQLiteException;
        }
        Log.e(TAG, "Couldn't open " + this.mName + " for writing (will try read-only):", localSQLiteException);
        localSQLiteDatabase3 = null;
        localSQLiteDatabase2 = null;
        Object localObject = localSQLiteDatabase3;
        try
        {
          this.mIsInitializing = true;
          localObject = localSQLiteDatabase3;
          String str = this.mContext.getDatabasePath(this.mName).getPath();
          localObject = localSQLiteDatabase3;
          File localFile1 = new File(str);
          localObject = localSQLiteDatabase3;
          File localFile2 = new File(this.mContext.getDatabasePath(this.mName).getParent());
          localObject = localSQLiteDatabase3;
          if (!localFile2.exists())
          {
            localObject = localSQLiteDatabase3;
            localFile2.mkdirs();
          }
          localObject = localSQLiteDatabase3;
          if (!localFile1.exists())
          {
            localObject = localSQLiteDatabase3;
            this.mIsInitializing = false;
            localObject = localSQLiteDatabase3;
            localSQLiteDatabase2 = getWritableDatabase(paramArrayOfChar);
            localObject = localSQLiteDatabase2;
            this.mIsInitializing = true;
            localObject = localSQLiteDatabase2;
            localSQLiteDatabase2.close();
          }
          localObject = localSQLiteDatabase2;
          localSQLiteDatabase2 = SQLiteDatabase.openDatabase(str, paramArrayOfChar, this.mFactory, 1);
          localObject = localSQLiteDatabase2;
          if (localSQLiteDatabase2.getVersion() != this.mNewVersion)
          {
            localObject = localSQLiteDatabase2;
            throw new SQLiteException("Can't upgrade read-only database from version " + localSQLiteDatabase2.getVersion() + " to " + this.mNewVersion + ": " + str);
          }
        }
        finally
        {
          this.mIsInitializing = false;
          if ((localObject != null) && (localObject != this.mDatabase)) {
            ((SQLiteDatabase)localObject).close();
          }
        }
        localObject = localSQLiteDatabase2;
        onOpen(localSQLiteDatabase2);
        localObject = localSQLiteDatabase2;
        Log.w(TAG, "Opened " + this.mName + " in read-only mode");
        localObject = localSQLiteDatabase2;
        this.mDatabase = localSQLiteDatabase2;
        localObject = localSQLiteDatabase2;
        localSQLiteDatabase3 = this.mDatabase;
        this.mIsInitializing = false;
        paramArrayOfChar = localSQLiteDatabase3;
      }
      if (localSQLiteDatabase2 != null)
      {
        paramArrayOfChar = localSQLiteDatabase3;
        if (localSQLiteDatabase2 != this.mDatabase)
        {
          localSQLiteDatabase2.close();
          paramArrayOfChar = localSQLiteDatabase3;
        }
      }
    }
  }
  
  public SQLiteDatabase getWritableDatabase(String paramString)
  {
    try
    {
      paramString = getWritableDatabase(paramString.toCharArray());
      return paramString;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  /* Error */
  public SQLiteDatabase getWritableDatabase(char[] paramArrayOfChar)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_0
    //   3: monitorenter
    //   4: aload_0
    //   5: getfield 39	net/sqlcipher/database/SQLiteOpenHelper:mDatabase	Lnet/sqlcipher/database/SQLiteDatabase;
    //   8: ifnull +32 -> 40
    //   11: aload_0
    //   12: getfield 39	net/sqlcipher/database/SQLiteOpenHelper:mDatabase	Lnet/sqlcipher/database/SQLiteDatabase;
    //   15: invokevirtual 80	net/sqlcipher/database/SQLiteDatabase:isOpen	()Z
    //   18: ifeq +22 -> 40
    //   21: aload_0
    //   22: getfield 39	net/sqlcipher/database/SQLiteOpenHelper:mDatabase	Lnet/sqlcipher/database/SQLiteDatabase;
    //   25: invokevirtual 166	net/sqlcipher/database/SQLiteDatabase:isReadOnly	()Z
    //   28: ifne +12 -> 40
    //   31: aload_0
    //   32: getfield 39	net/sqlcipher/database/SQLiteOpenHelper:mDatabase	Lnet/sqlcipher/database/SQLiteDatabase;
    //   35: astore_1
    //   36: aload_0
    //   37: monitorexit
    //   38: aload_1
    //   39: areturn
    //   40: aload_0
    //   41: getfield 41	net/sqlcipher/database/SQLiteOpenHelper:mIsInitializing	Z
    //   44: ifeq +18 -> 62
    //   47: new 71	java/lang/IllegalStateException
    //   50: dup
    //   51: ldc -88
    //   53: invokespecial 74	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   56: athrow
    //   57: astore_1
    //   58: aload_0
    //   59: monitorexit
    //   60: aload_1
    //   61: athrow
    //   62: aload_0
    //   63: getfield 39	net/sqlcipher/database/SQLiteOpenHelper:mDatabase	Lnet/sqlcipher/database/SQLiteDatabase;
    //   66: ifnull +10 -> 76
    //   69: aload_0
    //   70: getfield 39	net/sqlcipher/database/SQLiteOpenHelper:mDatabase	Lnet/sqlcipher/database/SQLiteDatabase;
    //   73: invokevirtual 171	net/sqlcipher/database/SQLiteDatabase:lock	()V
    //   76: aload_0
    //   77: iconst_1
    //   78: putfield 41	net/sqlcipher/database/SQLiteOpenHelper:mIsInitializing	Z
    //   81: aload_0
    //   82: getfield 62	net/sqlcipher/database/SQLiteOpenHelper:mName	Ljava/lang/String;
    //   85: ifnonnull +95 -> 180
    //   88: aconst_null
    //   89: aload_1
    //   90: invokestatic 175	net/sqlcipher/database/SQLiteDatabase:create	(Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;[C)Lnet/sqlcipher/database/SQLiteDatabase;
    //   93: astore_1
    //   94: aload_1
    //   95: invokevirtual 142	net/sqlcipher/database/SQLiteDatabase:getVersion	()I
    //   98: istore 5
    //   100: iload 5
    //   102: aload_0
    //   103: getfield 66	net/sqlcipher/database/SQLiteOpenHelper:mNewVersion	I
    //   106: if_icmpeq +33 -> 139
    //   109: aload_1
    //   110: invokevirtual 178	net/sqlcipher/database/SQLiteDatabase:beginTransaction	()V
    //   113: iload 5
    //   115: ifne +124 -> 239
    //   118: aload_0
    //   119: aload_1
    //   120: invokevirtual 181	net/sqlcipher/database/SQLiteOpenHelper:onCreate	(Lnet/sqlcipher/database/SQLiteDatabase;)V
    //   123: aload_1
    //   124: aload_0
    //   125: getfield 66	net/sqlcipher/database/SQLiteOpenHelper:mNewVersion	I
    //   128: invokevirtual 185	net/sqlcipher/database/SQLiteDatabase:setVersion	(I)V
    //   131: aload_1
    //   132: invokevirtual 188	net/sqlcipher/database/SQLiteDatabase:setTransactionSuccessful	()V
    //   135: aload_1
    //   136: invokevirtual 191	net/sqlcipher/database/SQLiteDatabase:endTransaction	()V
    //   139: aload_0
    //   140: aload_1
    //   141: invokevirtual 153	net/sqlcipher/database/SQLiteOpenHelper:onOpen	(Lnet/sqlcipher/database/SQLiteDatabase;)V
    //   144: aload_0
    //   145: iconst_0
    //   146: putfield 41	net/sqlcipher/database/SQLiteOpenHelper:mIsInitializing	Z
    //   149: aload_0
    //   150: getfield 39	net/sqlcipher/database/SQLiteOpenHelper:mDatabase	Lnet/sqlcipher/database/SQLiteDatabase;
    //   153: astore_2
    //   154: aload_2
    //   155: ifnull +17 -> 172
    //   158: aload_0
    //   159: getfield 39	net/sqlcipher/database/SQLiteOpenHelper:mDatabase	Lnet/sqlcipher/database/SQLiteDatabase;
    //   162: invokevirtual 82	net/sqlcipher/database/SQLiteDatabase:close	()V
    //   165: aload_0
    //   166: getfield 39	net/sqlcipher/database/SQLiteOpenHelper:mDatabase	Lnet/sqlcipher/database/SQLiteDatabase;
    //   169: invokevirtual 194	net/sqlcipher/database/SQLiteDatabase:unlock	()V
    //   172: aload_0
    //   173: aload_1
    //   174: putfield 39	net/sqlcipher/database/SQLiteOpenHelper:mDatabase	Lnet/sqlcipher/database/SQLiteDatabase;
    //   177: goto -141 -> 36
    //   180: aload_0
    //   181: getfield 60	net/sqlcipher/database/SQLiteOpenHelper:mContext	Landroid/content/Context;
    //   184: aload_0
    //   185: getfield 62	net/sqlcipher/database/SQLiteOpenHelper:mName	Ljava/lang/String;
    //   188: invokevirtual 119	android/content/Context:getDatabasePath	(Ljava/lang/String;)Ljava/io/File;
    //   191: invokevirtual 124	java/io/File:getPath	()Ljava/lang/String;
    //   194: astore_2
    //   195: new 121	java/io/File
    //   198: dup
    //   199: aload_2
    //   200: invokespecial 125	java/io/File:<init>	(Ljava/lang/String;)V
    //   203: astore 4
    //   205: aload 4
    //   207: invokevirtual 131	java/io/File:exists	()Z
    //   210: ifne +12 -> 222
    //   213: aload 4
    //   215: invokevirtual 198	java/io/File:getParentFile	()Ljava/io/File;
    //   218: invokevirtual 134	java/io/File:mkdirs	()Z
    //   221: pop
    //   222: aload_2
    //   223: aload_1
    //   224: aload_0
    //   225: getfield 64	net/sqlcipher/database/SQLiteOpenHelper:mFactory	Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;
    //   228: aload_0
    //   229: getfield 68	net/sqlcipher/database/SQLiteOpenHelper:mHook	Lnet/sqlcipher/database/SQLiteDatabaseHook;
    //   232: invokestatic 202	net/sqlcipher/database/SQLiteDatabase:openOrCreateDatabase	(Ljava/lang/String;[CLnet/sqlcipher/database/SQLiteDatabase$CursorFactory;Lnet/sqlcipher/database/SQLiteDatabaseHook;)Lnet/sqlcipher/database/SQLiteDatabase;
    //   235: astore_1
    //   236: goto -142 -> 94
    //   239: aload_0
    //   240: aload_1
    //   241: iload 5
    //   243: aload_0
    //   244: getfield 66	net/sqlcipher/database/SQLiteOpenHelper:mNewVersion	I
    //   247: invokevirtual 206	net/sqlcipher/database/SQLiteOpenHelper:onUpgrade	(Lnet/sqlcipher/database/SQLiteDatabase;II)V
    //   250: goto -127 -> 123
    //   253: astore_2
    //   254: aload_1
    //   255: invokevirtual 191	net/sqlcipher/database/SQLiteDatabase:endTransaction	()V
    //   258: aload_2
    //   259: athrow
    //   260: astore_2
    //   261: aload_0
    //   262: iconst_0
    //   263: putfield 41	net/sqlcipher/database/SQLiteOpenHelper:mIsInitializing	Z
    //   266: aload_0
    //   267: getfield 39	net/sqlcipher/database/SQLiteOpenHelper:mDatabase	Lnet/sqlcipher/database/SQLiteDatabase;
    //   270: ifnull +10 -> 280
    //   273: aload_0
    //   274: getfield 39	net/sqlcipher/database/SQLiteOpenHelper:mDatabase	Lnet/sqlcipher/database/SQLiteDatabase;
    //   277: invokevirtual 194	net/sqlcipher/database/SQLiteDatabase:unlock	()V
    //   280: aload_1
    //   281: ifnull +7 -> 288
    //   284: aload_1
    //   285: invokevirtual 82	net/sqlcipher/database/SQLiteDatabase:close	()V
    //   288: aload_2
    //   289: athrow
    //   290: astore_2
    //   291: aload_3
    //   292: astore_1
    //   293: goto -32 -> 261
    //   296: astore_2
    //   297: goto -132 -> 165
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	300	0	this	SQLiteOpenHelper
    //   0	300	1	paramArrayOfChar	char[]
    //   153	70	2	localObject1	Object
    //   253	6	2	localObject2	Object
    //   260	29	2	localObject3	Object
    //   290	1	2	localObject4	Object
    //   296	1	2	localException	Exception
    //   1	291	3	localObject5	Object
    //   203	11	4	localFile	File
    //   98	144	5	i	int
    // Exception table:
    //   from	to	target	type
    //   4	36	57	finally
    //   40	57	57	finally
    //   62	76	57	finally
    //   144	154	57	finally
    //   158	165	57	finally
    //   165	172	57	finally
    //   172	177	57	finally
    //   261	280	57	finally
    //   284	288	57	finally
    //   288	290	57	finally
    //   118	123	253	finally
    //   123	135	253	finally
    //   239	250	253	finally
    //   94	113	260	finally
    //   135	139	260	finally
    //   139	144	260	finally
    //   254	260	260	finally
    //   76	94	290	finally
    //   180	222	290	finally
    //   222	236	290	finally
    //   158	165	296	java/lang/Exception
  }
  
  public abstract void onCreate(SQLiteDatabase paramSQLiteDatabase);
  
  public void onOpen(SQLiteDatabase paramSQLiteDatabase) {}
  
  public abstract void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\net\sqlcipher\database\SQLiteOpenHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */