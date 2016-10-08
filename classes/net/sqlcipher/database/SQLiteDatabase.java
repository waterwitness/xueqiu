package net.sqlcipher.database;

import android.content.ContentValues;
import android.content.Context;
import android.content.res.AssetManager;
import android.os.Debug;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Random;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipInputStream;
import net.sqlcipher.CrossProcessCursorWrapper;
import net.sqlcipher.Cursor;
import net.sqlcipher.CursorWrapper;
import net.sqlcipher.DatabaseUtils;
import net.sqlcipher.SQLException;

public class SQLiteDatabase
  extends SQLiteClosable
{
  private static final String COMMIT_SQL = "COMMIT;";
  public static final int CONFLICT_ABORT = 2;
  public static final int CONFLICT_FAIL = 3;
  public static final int CONFLICT_IGNORE = 4;
  public static final int CONFLICT_NONE = 0;
  public static final int CONFLICT_REPLACE = 5;
  public static final int CONFLICT_ROLLBACK = 1;
  private static final String[] CONFLICT_VALUES = { "", " OR ROLLBACK ", " OR ABORT ", " OR FAIL ", " OR IGNORE ", " OR REPLACE " };
  public static final int CREATE_IF_NECESSARY = 268435456;
  private static final Pattern EMAIL_IN_DB_PATTERN = Pattern.compile("[\\w\\.\\-]+@[\\w\\.\\-]+");
  private static final int EVENT_DB_CORRUPT = 75004;
  private static final int EVENT_DB_OPERATION = 52000;
  static final String GET_LOCK_LOG_PREFIX = "GETLOCK:";
  private static final int LOCK_ACQUIRED_WARNING_THREAD_TIME_IN_MS = 100;
  private static final int LOCK_ACQUIRED_WARNING_TIME_IN_MS = 300;
  private static final int LOCK_ACQUIRED_WARNING_TIME_IN_MS_ALWAYS_PRINT = 2000;
  private static final int LOCK_WARNING_WINDOW_IN_MS = 20000;
  private static final String LOG_SLOW_QUERIES_PROPERTY = "db.log.slow_query_threshold";
  public static final int MAX_SQL_CACHE_SIZE = 250;
  private static final int MAX_WARNINGS_ON_CACHESIZE_CONDITION = 1;
  public static final int NO_LOCALIZED_COLLATORS = 16;
  public static final int OPEN_READONLY = 1;
  public static final int OPEN_READWRITE = 0;
  private static final int OPEN_READ_MASK = 1;
  private static final int QUERY_LOG_SQL_LENGTH = 64;
  private static final int SLEEP_AFTER_YIELD_QUANTUM = 1000;
  public static final int SQLITE_MAX_LIKE_PATTERN_LENGTH = 50000;
  private static final String TAG = "Database";
  private static int sQueryLogTimeInMillis = 0;
  private int mCacheFullWarnings;
  Map<String, SQLiteCompiledSql> mCompiledQueries = new HashMap();
  private SQLiteDatabase.CursorFactory mFactory;
  private int mFlags;
  private boolean mInnerTransactionIsSuccessful;
  private long mLastLockMessageTime = 0L;
  private String mLastSqlStatement = null;
  private final ReentrantLock mLock = new ReentrantLock(true);
  private long mLockAcquiredThreadTime = 0L;
  private long mLockAcquiredWallTime = 0L;
  private boolean mLockingEnabled = true;
  private int mMaxSqlCacheSize = 250;
  int mNativeHandle = 0;
  private int mNumCacheHits;
  private int mNumCacheMisses;
  private String mPath;
  private String mPathForLogs = null;
  private WeakHashMap<SQLiteClosable, Object> mPrograms;
  private final Random mRandom = new Random();
  private final int mSlowQueryThreshold;
  private Throwable mStackTrace = null;
  private final Map<String, SQLiteDatabase.SyncUpdateInfo> mSyncUpdateInfo = new HashMap();
  int mTempTableSequence = 0;
  private String mTimeClosed = null;
  private String mTimeOpened = null;
  private boolean mTransactionIsSuccessful;
  private SQLiteTransactionListener mTransactionListener;
  
  public SQLiteDatabase(String paramString, char[] paramArrayOfChar, SQLiteDatabase.CursorFactory paramCursorFactory, int paramInt)
  {
    this(paramString, paramArrayOfChar, paramCursorFactory, paramInt, null);
  }
  
  public SQLiteDatabase(String paramString, char[] paramArrayOfChar, SQLiteDatabase.CursorFactory paramCursorFactory, int paramInt, SQLiteDatabaseHook paramSQLiteDatabaseHook)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("path should not be null");
    }
    this.mFlags = paramInt;
    this.mPath = paramString;
    this.mSlowQueryThreshold = -1;
    this.mStackTrace = new DatabaseObjectNotClosedException().fillInStackTrace();
    this.mFactory = paramCursorFactory;
    this.mPrograms = new WeakHashMap();
    dbopen(this.mPath, this.mFlags);
    if (paramSQLiteDatabaseHook != null) {
      paramSQLiteDatabaseHook.preKey(this);
    }
    native_key(paramArrayOfChar);
    if (paramSQLiteDatabaseHook != null) {
      paramSQLiteDatabaseHook.postKey(this);
    }
    if (SQLiteDebug.DEBUG_SQL_CACHE) {
      this.mTimeOpened = getTime();
    }
    try
    {
      setLocale(Locale.getDefault());
      return;
    }
    catch (RuntimeException paramString)
    {
      Log.e("Database", "Failed to setLocale() when constructing, closing the database", paramString);
      dbclose();
      if (SQLiteDebug.DEBUG_SQL_CACHE) {
        this.mTimeClosed = getTime();
      }
      throw paramString;
    }
  }
  
  private void checkLockHoldTime()
  {
    long l1 = SystemClock.elapsedRealtime();
    long l2 = l1 - this.mLockAcquiredWallTime;
    if ((l2 < 2000L) && (!Log.isLoggable("Database", 2)) && (l1 - this.mLastLockMessageTime < 20000L)) {}
    int i;
    do
    {
      do
      {
        return;
      } while (l2 <= 300L);
      i = (int)((Debug.threadCpuTimeNanos() - this.mLockAcquiredThreadTime) / 1000000L);
    } while ((i <= 100) && (l2 <= 2000L));
    this.mLastLockMessageTime = l1;
    String str = "lock held on " + this.mPath + " for " + l2 + "ms. Thread time was " + i + "ms";
    if (SQLiteDebug.DEBUG_LOCK_TIME_TRACKING_STACK_TRACE)
    {
      Log.d("Database", str, new Exception());
      return;
    }
    Log.d("Database", str);
  }
  
  private void closeClosable()
  {
    deallocCachedSqlStatements();
    Iterator localIterator = this.mPrograms.entrySet().iterator();
    while (localIterator.hasNext())
    {
      SQLiteClosable localSQLiteClosable = (SQLiteClosable)((Map.Entry)localIterator.next()).getKey();
      if (localSQLiteClosable != null) {
        localSQLiteClosable.onAllReferencesReleasedFromContainer();
      }
    }
  }
  
  public static SQLiteDatabase create(SQLiteDatabase.CursorFactory paramCursorFactory, String paramString)
  {
    return openDatabase(":memory:", paramString.toCharArray(), paramCursorFactory, 268435456);
  }
  
  public static SQLiteDatabase create(SQLiteDatabase.CursorFactory paramCursorFactory, char[] paramArrayOfChar)
  {
    return openDatabase(":memory:", paramArrayOfChar, paramCursorFactory, 268435456);
  }
  
  private native void dbclose();
  
  private native void dbopen(String paramString, int paramInt);
  
  private void deallocCachedSqlStatements()
  {
    synchronized (this.mCompiledQueries)
    {
      Iterator localIterator = this.mCompiledQueries.values().iterator();
      if (localIterator.hasNext()) {
        ((SQLiteCompiledSql)localIterator.next()).releaseSqlStatement();
      }
    }
    this.mCompiledQueries.clear();
  }
  
  private native void enableSqlProfiling(String paramString);
  
  private native void enableSqlTracing(String paramString);
  
  public static String findEditTable(String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      int i = paramString.indexOf(' ');
      int j = paramString.indexOf(',');
      String str;
      if ((i > 0) && ((i < j) || (j < 0))) {
        str = paramString.substring(0, i);
      }
      do
      {
        do
        {
          return str;
          str = paramString;
        } while (j <= 0);
        if (j < i) {
          break;
        }
        str = paramString;
      } while (i >= 0);
      return paramString.substring(0, j);
    }
    throw new IllegalStateException("Invalid tables");
  }
  
  private static ArrayList<Pair<String, String>> getAttachedDbs(SQLiteDatabase paramSQLiteDatabase)
  {
    if (!paramSQLiteDatabase.isOpen()) {
      return null;
    }
    ArrayList localArrayList = new ArrayList();
    paramSQLiteDatabase = paramSQLiteDatabase.rawQuery("pragma database_list;", null);
    while (paramSQLiteDatabase.moveToNext()) {
      localArrayList.add(new Pair(paramSQLiteDatabase.getString(1), paramSQLiteDatabase.getString(2)));
    }
    paramSQLiteDatabase.close();
    return localArrayList;
  }
  
  static ArrayList<SQLiteDebug.DbStats> getDbStats()
  {
    ArrayList localArrayList1 = new ArrayList();
    Iterator localIterator = SQLiteDatabase.ActiveDatabases.access$000(SQLiteDatabase.ActiveDatabases.getInstance()).iterator();
    SQLiteDatabase localSQLiteDatabase;
    Object localObject1;
    int i;
    label91:
    int j;
    label117:
    Object localObject2;
    long l;
    for (;;)
    {
      if (localIterator.hasNext())
      {
        localSQLiteDatabase = (SQLiteDatabase)((WeakReference)localIterator.next()).get();
        if ((localSQLiteDatabase != null) && (localSQLiteDatabase.isOpen()))
        {
          int k = localSQLiteDatabase.native_getDbLookaside();
          localObject1 = localSQLiteDatabase.getPath();
          i = ((String)localObject1).lastIndexOf("/");
          if (i != -1)
          {
            i += 1;
            String str = ((String)localObject1).substring(i);
            ArrayList localArrayList2 = getAttachedDbs(localSQLiteDatabase);
            if (localArrayList2 == null) {
              continue;
            }
            j = 0;
            i = k;
            if (j < localArrayList2.size())
            {
              localObject2 = (Pair)localArrayList2.get(j);
              l = getPragmaVal(localSQLiteDatabase, (String)((Pair)localObject2).first + ".page_count;");
              if (j != 0) {
                break label224;
              }
              localObject1 = str;
            }
          }
        }
      }
    }
    for (;;)
    {
      if (l > 0L) {
        localArrayList1.add(new SQLiteDebug.DbStats((String)localObject1, l, localSQLiteDatabase.getPageSize(), i));
      }
      j += 1;
      break label117;
      break;
      i = 0;
      break label91;
      label224:
      localObject1 = "  (attached) " + (String)((Pair)localObject2).first;
      if (((String)((Pair)localObject2).second).trim().length() > 0)
      {
        i = ((String)((Pair)localObject2).second).lastIndexOf("/");
        localObject1 = new StringBuilder().append((String)localObject1).append(" : ");
        localObject2 = (String)((Pair)localObject2).second;
        if (i != -1) {
          i += 1;
        }
        for (;;)
        {
          localObject1 = ((String)localObject2).substring(i);
          i = 0;
          break;
          i = 0;
        }
        return localArrayList1;
      }
      i = 0;
    }
  }
  
  private String getPathForLogs()
  {
    if (this.mPathForLogs != null) {
      return this.mPathForLogs;
    }
    if (this.mPath == null) {
      return null;
    }
    if (this.mPath.indexOf('@') == -1) {}
    for (this.mPathForLogs = this.mPath;; this.mPathForLogs = EMAIL_IN_DB_PATTERN.matcher(this.mPath).replaceAll("XX@YY")) {
      return this.mPathForLogs;
    }
  }
  
  /* Error */
  private static long getPragmaVal(SQLiteDatabase paramSQLiteDatabase, String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 409	net/sqlcipher/database/SQLiteDatabase:isOpen	()Z
    //   4: ifne +5 -> 9
    //   7: lconst_0
    //   8: lreturn
    //   9: aconst_null
    //   10: astore_2
    //   11: new 531	net/sqlcipher/database/SQLiteStatement
    //   14: dup
    //   15: aload_0
    //   16: new 285	java/lang/StringBuilder
    //   19: dup
    //   20: ldc_w 533
    //   23: invokespecial 288	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   26: aload_1
    //   27: invokevirtual 292	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   30: invokevirtual 307	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   33: invokespecial 536	net/sqlcipher/database/SQLiteStatement:<init>	(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)V
    //   36: astore_1
    //   37: aload_1
    //   38: invokevirtual 539	net/sqlcipher/database/SQLiteStatement:simpleQueryForLong	()J
    //   41: lstore_3
    //   42: aload_1
    //   43: invokevirtual 540	net/sqlcipher/database/SQLiteStatement:close	()V
    //   46: lload_3
    //   47: lreturn
    //   48: astore_0
    //   49: aload_2
    //   50: astore_1
    //   51: aload_1
    //   52: ifnull +7 -> 59
    //   55: aload_1
    //   56: invokevirtual 540	net/sqlcipher/database/SQLiteStatement:close	()V
    //   59: aload_0
    //   60: athrow
    //   61: astore_0
    //   62: goto -11 -> 51
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	65	0	paramSQLiteDatabase	SQLiteDatabase
    //   0	65	1	paramString	String
    //   10	40	2	localObject	Object
    //   41	6	3	l	long
    // Exception table:
    //   from	to	target	type
    //   11	37	48	finally
    //   37	42	61	finally
  }
  
  private String getTime()
  {
    return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS ").format(Long.valueOf(System.currentTimeMillis()));
  }
  
  private static void loadICUData(Context paramContext, File paramFile)
  {
    try
    {
      paramFile = new File(paramFile, "icu");
      if (!paramFile.exists()) {
        paramFile.mkdirs();
      }
      paramFile = new File(paramFile, "icudt46l.dat");
      if (!paramFile.exists())
      {
        paramContext = new ZipInputStream(paramContext.getAssets().open("icudt46l.zip"));
        paramContext.getNextEntry();
        paramFile = new FileOutputStream(paramFile);
        byte[] arrayOfByte = new byte['Ѐ'];
        for (;;)
        {
          int i = paramContext.read(arrayOfByte);
          if (i <= 0) {
            break;
          }
          paramFile.write(arrayOfByte, 0, i);
        }
      }
      return;
    }
    catch (Exception paramContext)
    {
      Log.e("Database", "Error copying icu data file", paramContext);
    }
    paramContext.close();
    paramFile.flush();
    paramFile.close();
  }
  
  public static void loadLibs(Context paramContext)
  {
    loadLibs(paramContext, paramContext.getFilesDir());
  }
  
  public static void loadLibs(Context paramContext, File paramFile)
  {
    System.loadLibrary("stlport_shared");
    System.loadLibrary("sqlcipher_android");
    System.loadLibrary("database_sqlcipher");
    boolean bool = new File("/system/usr/icu/icudt46l.dat").exists();
    if (bool) {}
    for (String str = "/system/usr";; str = paramFile.getAbsolutePath())
    {
      setICURoot(str);
      if (!bool) {
        loadICUData(paramContext, paramFile);
      }
      return;
    }
  }
  
  private void lockForced()
  {
    this.mLock.lock();
    if ((SQLiteDebug.DEBUG_LOCK_TIME_TRACKING) && (this.mLock.getHoldCount() == 1))
    {
      this.mLockAcquiredWallTime = SystemClock.elapsedRealtime();
      this.mLockAcquiredThreadTime = Debug.threadCpuTimeNanos();
    }
  }
  
  /* Error */
  private void markTableSyncable(String paramString1, String arg2, String paramString3, String paramString4)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 665	net/sqlcipher/database/SQLiteDatabase:lock	()V
    //   4: aload_0
    //   5: new 285	java/lang/StringBuilder
    //   8: dup
    //   9: ldc_w 667
    //   12: invokespecial 288	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   15: aload_3
    //   16: invokevirtual 292	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   19: ldc_w 669
    //   22: invokevirtual 292	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   25: invokevirtual 307	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   28: invokevirtual 672	net/sqlcipher/database/SQLiteDatabase:native_execSQL	(Ljava/lang/String;)V
    //   31: aload_0
    //   32: new 285	java/lang/StringBuilder
    //   35: dup
    //   36: ldc_w 674
    //   39: invokespecial 288	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   42: aload_2
    //   43: invokevirtual 292	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   46: ldc_w 676
    //   49: invokevirtual 292	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   52: aload_1
    //   53: invokevirtual 292	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   56: ldc_w 669
    //   59: invokevirtual 292	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   62: invokevirtual 307	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   65: invokevirtual 672	net/sqlcipher/database/SQLiteDatabase:native_execSQL	(Ljava/lang/String;)V
    //   68: aload_0
    //   69: invokevirtual 679	net/sqlcipher/database/SQLiteDatabase:unlock	()V
    //   72: new 681	net/sqlcipher/database/SQLiteDatabase$SyncUpdateInfo
    //   75: dup
    //   76: aload_3
    //   77: aload 4
    //   79: aload_2
    //   80: invokespecial 684	net/sqlcipher/database/SQLiteDatabase$SyncUpdateInfo:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   83: astore_3
    //   84: aload_0
    //   85: getfield 185	net/sqlcipher/database/SQLiteDatabase:mSyncUpdateInfo	Ljava/util/Map;
    //   88: astore_2
    //   89: aload_2
    //   90: monitorenter
    //   91: aload_0
    //   92: getfield 185	net/sqlcipher/database/SQLiteDatabase:mSyncUpdateInfo	Ljava/util/Map;
    //   95: aload_1
    //   96: aload_3
    //   97: invokeinterface 688 3 0
    //   102: pop
    //   103: aload_2
    //   104: monitorexit
    //   105: return
    //   106: astore_1
    //   107: aload_0
    //   108: invokevirtual 679	net/sqlcipher/database/SQLiteDatabase:unlock	()V
    //   111: aload_1
    //   112: athrow
    //   113: astore_1
    //   114: aload_2
    //   115: monitorexit
    //   116: aload_1
    //   117: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	118	0	this	SQLiteDatabase
    //   0	118	1	paramString1	String
    //   0	118	3	paramString3	String
    //   0	118	4	paramString4	String
    // Exception table:
    //   from	to	target	type
    //   4	68	106	finally
    //   91	105	113	finally
    //   114	116	113	finally
  }
  
  private native int native_getDbLookaside();
  
  private native void native_key(String paramString);
  
  private native void native_key(char[] paramArrayOfChar);
  
  private native void native_rawExecSQL(String paramString);
  
  private native void native_rekey(String paramString);
  
  private native void native_rekey(char[] paramArrayOfChar);
  
  private native int native_status(int paramInt, boolean paramBoolean);
  
  public static SQLiteDatabase openDatabase(String paramString1, String paramString2, SQLiteDatabase.CursorFactory paramCursorFactory, int paramInt)
  {
    return openDatabase(paramString1, paramString2.toCharArray(), paramCursorFactory, 268435456, null);
  }
  
  public static SQLiteDatabase openDatabase(String paramString1, String paramString2, SQLiteDatabase.CursorFactory paramCursorFactory, int paramInt, SQLiteDatabaseHook paramSQLiteDatabaseHook)
  {
    return openDatabase(paramString1, paramString2.toCharArray(), paramCursorFactory, paramInt, paramSQLiteDatabaseHook);
  }
  
  public static SQLiteDatabase openDatabase(String paramString, char[] paramArrayOfChar, SQLiteDatabase.CursorFactory paramCursorFactory, int paramInt)
  {
    return openDatabase(paramString, paramArrayOfChar, paramCursorFactory, 268435456, null);
  }
  
  public static SQLiteDatabase openDatabase(String paramString, char[] paramArrayOfChar, SQLiteDatabase.CursorFactory paramCursorFactory, int paramInt, SQLiteDatabaseHook paramSQLiteDatabaseHook)
  {
    try
    {
      SQLiteDatabase localSQLiteDatabase3 = new SQLiteDatabase(paramString, paramArrayOfChar, paramCursorFactory, paramInt, paramSQLiteDatabaseHook);
      if (SQLiteDebug.DEBUG_SQL_STATEMENTS) {
        localSQLiteDatabase3.enableSqlTracing(paramString);
      }
      localSQLiteDatabase1 = localSQLiteDatabase3;
      if (SQLiteDebug.DEBUG_SQL_TIME)
      {
        localSQLiteDatabase3.enableSqlProfiling(paramString);
        localSQLiteDatabase1 = localSQLiteDatabase3;
      }
    }
    catch (SQLiteDatabaseCorruptException localSQLiteDatabaseCorruptException)
    {
      for (;;)
      {
        SQLiteDatabase localSQLiteDatabase1;
        Log.e("Database", "Deleting and re-creating corrupt database " + paramString, localSQLiteDatabaseCorruptException);
        if (!paramString.equalsIgnoreCase(":memory")) {
          new File(paramString).delete();
        }
        SQLiteDatabase localSQLiteDatabase2 = new SQLiteDatabase(paramString, paramArrayOfChar, paramCursorFactory, paramInt, paramSQLiteDatabaseHook);
      }
    }
    SQLiteDatabase.ActiveDatabases.access$000(SQLiteDatabase.ActiveDatabases.getInstance()).add(new WeakReference(localSQLiteDatabase1));
    return localSQLiteDatabase1;
  }
  
  public static SQLiteDatabase openOrCreateDatabase(File paramFile, String paramString, SQLiteDatabase.CursorFactory paramCursorFactory)
  {
    return openOrCreateDatabase(paramFile.getPath(), paramString, paramCursorFactory, null);
  }
  
  public static SQLiteDatabase openOrCreateDatabase(File paramFile, String paramString, SQLiteDatabase.CursorFactory paramCursorFactory, SQLiteDatabaseHook paramSQLiteDatabaseHook)
  {
    return openOrCreateDatabase(paramFile.getPath(), paramString, paramCursorFactory, paramSQLiteDatabaseHook);
  }
  
  public static SQLiteDatabase openOrCreateDatabase(String paramString1, String paramString2, SQLiteDatabase.CursorFactory paramCursorFactory)
  {
    return openDatabase(paramString1, paramString2.toCharArray(), paramCursorFactory, 268435456, null);
  }
  
  public static SQLiteDatabase openOrCreateDatabase(String paramString1, String paramString2, SQLiteDatabase.CursorFactory paramCursorFactory, SQLiteDatabaseHook paramSQLiteDatabaseHook)
  {
    return openDatabase(paramString1, paramString2, paramCursorFactory, 268435456, paramSQLiteDatabaseHook);
  }
  
  public static SQLiteDatabase openOrCreateDatabase(String paramString, char[] paramArrayOfChar, SQLiteDatabase.CursorFactory paramCursorFactory)
  {
    return openDatabase(paramString, paramArrayOfChar, paramCursorFactory, 268435456, null);
  }
  
  public static SQLiteDatabase openOrCreateDatabase(String paramString, char[] paramArrayOfChar, SQLiteDatabase.CursorFactory paramCursorFactory, SQLiteDatabaseHook paramSQLiteDatabaseHook)
  {
    return openDatabase(paramString, paramArrayOfChar, paramCursorFactory, 268435456, paramSQLiteDatabaseHook);
  }
  
  public static native int releaseMemory();
  
  public static native void setICURoot(String paramString);
  
  private void unlockForced()
  {
    if ((SQLiteDebug.DEBUG_LOCK_TIME_TRACKING) && (this.mLock.getHoldCount() == 1)) {
      checkLockHoldTime();
    }
    this.mLock.unlock();
  }
  
  private boolean yieldIfContendedHelper(boolean paramBoolean, long paramLong)
  {
    if (this.mLock.getQueueLength() == 0)
    {
      this.mLockAcquiredWallTime = SystemClock.elapsedRealtime();
      this.mLockAcquiredThreadTime = Debug.threadCpuTimeNanos();
      return false;
    }
    setTransactionSuccessful();
    SQLiteTransactionListener localSQLiteTransactionListener = this.mTransactionListener;
    endTransaction();
    if ((paramBoolean) && (isDbLockedByCurrentThread())) {
      throw new IllegalStateException("Db locked more than once. yielfIfContended cannot yield");
    }
    for (;;)
    {
      long l;
      if ((paramLong > 0L) && (paramLong > 0L))
      {
        if (paramLong >= 1000L) {
          break label114;
        }
        l = paramLong;
      }
      try
      {
        for (;;)
        {
          Thread.sleep(l);
          paramLong -= 1000L;
          if (this.mLock.getQueueLength() != 0) {
            break;
          }
          beginTransactionWithListener(localSQLiteTransactionListener);
          return true;
          label114:
          l = 1000L;
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        for (;;)
        {
          Thread.interrupted();
        }
      }
    }
  }
  
  void addSQLiteClosable(SQLiteClosable paramSQLiteClosable)
  {
    lock();
    try
    {
      this.mPrograms.put(paramSQLiteClosable, null);
      return;
    }
    finally
    {
      unlock();
    }
  }
  
  void addToCompiledQueries(String paramString, SQLiteCompiledSql paramSQLiteCompiledSql)
  {
    if (this.mMaxSqlCacheSize == 0)
    {
      if (SQLiteDebug.DEBUG_SQL_CACHE) {
        Log.v("Database", "|NOT adding_sql_to_cache|" + getPath() + "|" + paramString);
      }
      return;
    }
    synchronized (this.mCompiledQueries)
    {
      if ((SQLiteCompiledSql)this.mCompiledQueries.get(paramString) != null) {
        return;
      }
    }
    if (this.mCompiledQueries.size() == this.mMaxSqlCacheSize)
    {
      int i = this.mCacheFullWarnings + 1;
      this.mCacheFullWarnings = i;
      if (i == 1) {
        Log.w("Database", "Reached MAX size for compiled-sql statement cache for database " + getPath() + "; i.e., NO space for this sql statement in cache: " + paramString + ". Please change your sql statements to use '?' for bindargs, instead of using actual values");
      }
    }
    for (;;)
    {
      return;
      this.mCompiledQueries.put(paramString, paramSQLiteCompiledSql);
      if (SQLiteDebug.DEBUG_SQL_CACHE) {
        Log.v("Database", "|adding_sql_to_cache|" + getPath() + "|" + this.mCompiledQueries.size() + "|" + paramString);
      }
    }
  }
  
  public void beginTransaction()
  {
    beginTransactionWithListener(null);
  }
  
  public void beginTransactionWithListener(SQLiteTransactionListener paramSQLiteTransactionListener)
  {
    lockForced();
    if (!isOpen()) {
      throw new IllegalStateException("database not open");
    }
    try
    {
      if (this.mLock.getHoldCount() > 1)
      {
        if (!this.mInnerTransactionIsSuccessful) {
          break label102;
        }
        paramSQLiteTransactionListener = new IllegalStateException("Cannot call beginTransaction between calling setTransactionSuccessful and endTransaction");
        Log.e("Database", "beginTransaction() failed", paramSQLiteTransactionListener);
        throw paramSQLiteTransactionListener;
      }
    }
    finally
    {
      unlockForced();
    }
    execSQL("BEGIN EXCLUSIVE;");
    this.mTransactionListener = paramSQLiteTransactionListener;
    this.mTransactionIsSuccessful = true;
    this.mInnerTransactionIsSuccessful = false;
    if (paramSQLiteTransactionListener != null) {}
    try
    {
      paramSQLiteTransactionListener.onBegin();
      label102:
      return;
    }
    catch (RuntimeException paramSQLiteTransactionListener)
    {
      execSQL("ROLLBACK;");
      throw paramSQLiteTransactionListener;
    }
  }
  
  public void changePassword(String paramString)
  {
    native_rekey(paramString);
  }
  
  public void changePassword(char[] paramArrayOfChar)
  {
    native_rekey(paramArrayOfChar);
  }
  
  public void close()
  {
    if (!isOpen()) {
      return;
    }
    lock();
    try
    {
      closeClosable();
      onAllReferencesReleased();
      return;
    }
    finally
    {
      unlock();
    }
  }
  
  public SQLiteStatement compileStatement(String paramString)
  {
    lock();
    if (!isOpen()) {
      throw new IllegalStateException("database not open");
    }
    try
    {
      paramString = new SQLiteStatement(this, paramString);
      return paramString;
    }
    finally
    {
      unlock();
    }
  }
  
  public int delete(String paramString1, String paramString2, String[] paramArrayOfString)
  {
    lock();
    if (!isOpen()) {
      throw new IllegalStateException("database not open");
    }
    Object localObject4 = null;
    Object localObject3 = null;
    Object localObject2 = localObject3;
    Object localObject1 = localObject4;
    for (;;)
    {
      try
      {
        StringBuilder localStringBuilder = new StringBuilder("DELETE FROM ").append(paramString1);
        localObject2 = localObject3;
        localObject1 = localObject4;
        if (!TextUtils.isEmpty(paramString2))
        {
          localObject2 = localObject3;
          localObject1 = localObject4;
          paramString1 = " WHERE " + paramString2;
          localObject2 = localObject3;
          localObject1 = localObject4;
          paramString1 = compileStatement(paramString1);
          if (paramArrayOfString != null)
          {
            localObject2 = paramString1;
            localObject1 = paramString1;
            int j = paramArrayOfString.length;
            i = 0;
            if (i < j)
            {
              localObject2 = paramString1;
              localObject1 = paramString1;
              DatabaseUtils.bindObjectToProgram(paramString1, i + 1, paramArrayOfString[i]);
              i += 1;
              continue;
            }
          }
          localObject2 = paramString1;
          localObject1 = paramString1;
          paramString1.execute();
          localObject2 = paramString1;
          localObject1 = paramString1;
          int i = lastChangeCount();
          if (paramString1 != null) {
            paramString1.close();
          }
          unlock();
          return i;
        }
      }
      catch (SQLiteDatabaseCorruptException paramString1)
      {
        localObject1 = localObject2;
        onCorruption();
        localObject1 = localObject2;
        throw paramString1;
      }
      finally
      {
        if (localObject1 != null) {
          ((SQLiteStatement)localObject1).close();
        }
        unlock();
      }
      paramString1 = "";
    }
  }
  
  public void endTransaction()
  {
    if (!isOpen()) {
      throw new IllegalStateException("database not open");
    }
    if (!this.mLock.isHeldByCurrentThread()) {
      throw new IllegalStateException("no transaction pending");
    }
    try
    {
      if (this.mInnerTransactionIsSuccessful) {
        this.mInnerTransactionIsSuccessful = false;
      }
      for (;;)
      {
        int i = this.mLock.getHoldCount();
        if (i == 1) {
          break;
        }
        return;
        this.mTransactionIsSuccessful = false;
      }
      localSQLiteTransactionListener = this.mTransactionListener;
    }
    finally
    {
      this.mTransactionListener = null;
      unlockForced();
    }
    SQLiteTransactionListener localSQLiteTransactionListener;
    if (localSQLiteTransactionListener != null) {}
    for (;;)
    {
      try
      {
        if (!this.mTransactionIsSuccessful) {
          continue;
        }
        this.mTransactionListener.onCommit();
        localSQLiteTransactionListener = null;
      }
      catch (RuntimeException localRuntimeException)
      {
        this.mTransactionIsSuccessful = false;
        continue;
        try
        {
          execSQL("ROLLBACK;");
          if (localRuntimeException == null) {
            continue;
          }
          throw localRuntimeException;
        }
        catch (SQLException localSQLException)
        {
          Log.d("Database", "exception during rollback, maybe the DB previously performed an auto-rollback");
        }
        continue;
      }
      if (this.mTransactionIsSuccessful)
      {
        execSQL("COMMIT;");
        this.mTransactionListener = null;
        unlockForced();
        return;
        this.mTransactionListener.onRollback();
        localSQLiteTransactionListener = null;
      }
      else
      {
        Object localObject2 = null;
      }
    }
  }
  
  public void execSQL(String paramString)
  {
    long l = SystemClock.uptimeMillis();
    lock();
    if (!isOpen()) {
      throw new IllegalStateException("database not open");
    }
    logTimeStat(this.mLastSqlStatement, l, "GETLOCK:");
    try
    {
      native_execSQL(paramString);
      unlock();
      if (paramString == "COMMIT;")
      {
        logTimeStat(this.mLastSqlStatement, l, "COMMIT;");
        return;
      }
    }
    catch (SQLiteDatabaseCorruptException paramString)
    {
      throw paramString;
    }
    finally
    {
      unlock();
    }
    logTimeStat(paramString, l, null);
  }
  
  public void execSQL(String paramString, Object[] paramArrayOfObject)
  {
    if (paramArrayOfObject == null) {
      throw new IllegalArgumentException("Empty bindArgs");
    }
    long l = SystemClock.uptimeMillis();
    lock();
    if (!isOpen()) {
      throw new IllegalStateException("database not open");
    }
    Object localObject2 = null;
    Object localObject1 = null;
    try
    {
      SQLiteStatement localSQLiteStatement = compileStatement(paramString);
      if (paramArrayOfObject != null)
      {
        localObject1 = localSQLiteStatement;
        localObject2 = localSQLiteStatement;
        int j = paramArrayOfObject.length;
        int i = 0;
        while (i < j)
        {
          localObject1 = localSQLiteStatement;
          localObject2 = localSQLiteStatement;
          DatabaseUtils.bindObjectToProgram(localSQLiteStatement, i + 1, paramArrayOfObject[i]);
          i += 1;
        }
      }
      localObject1 = localSQLiteStatement;
      localObject2 = localSQLiteStatement;
      localSQLiteStatement.execute();
      if (localSQLiteStatement != null) {
        localSQLiteStatement.close();
      }
      unlock();
      logTimeStat(paramString, l);
      return;
    }
    catch (SQLiteDatabaseCorruptException paramString)
    {
      localObject2 = localObject1;
      onCorruption();
      localObject2 = localObject1;
      throw paramString;
    }
    finally
    {
      if (localObject2 != null) {
        ((SQLiteStatement)localObject2).close();
      }
      unlock();
    }
  }
  
  protected void finalize()
  {
    if (isOpen())
    {
      Log.e("Database", "close() was never explicitly called on database '" + this.mPath + "' ", this.mStackTrace);
      closeClosable();
      onAllReferencesReleased();
    }
  }
  
  SQLiteCompiledSql getCompiledStatementForSql(String paramString)
  {
    SQLiteCompiledSql localSQLiteCompiledSql;
    for (;;)
    {
      synchronized (this.mCompiledQueries)
      {
        if (this.mMaxSqlCacheSize == 0)
        {
          if (SQLiteDebug.DEBUG_SQL_CACHE) {
            Log.v("Database", "|cache NOT found|" + getPath());
          }
          return null;
        }
        localSQLiteCompiledSql = (SQLiteCompiledSql)this.mCompiledQueries.get(paramString);
        boolean bool;
        if (localSQLiteCompiledSql != null)
        {
          bool = true;
          if (bool)
          {
            this.mNumCacheHits += 1;
            if (!SQLiteDebug.DEBUG_SQL_CACHE) {
              break;
            }
            Log.v("Database", "|cache_stats|" + getPath() + "|" + this.mCompiledQueries.size() + "|" + this.mNumCacheHits + "|" + this.mNumCacheMisses + "|" + bool + "|" + this.mTimeOpened + "|" + this.mTimeClosed + "|" + paramString);
            return localSQLiteCompiledSql;
          }
        }
        else
        {
          bool = false;
        }
      }
      this.mNumCacheMisses += 1;
    }
    return localSQLiteCompiledSql;
  }
  
  public int getMaxSqlCacheSize()
  {
    try
    {
      int i = this.mMaxSqlCacheSize;
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public long getMaximumSize()
  {
    lock();
    if (!isOpen()) {
      throw new IllegalStateException("database not open");
    }
    SQLiteStatement localSQLiteStatement;
    try
    {
      localSQLiteStatement = new SQLiteStatement(this, "PRAGMA max_page_count;");
      long l1;
      long l2;
      if (localSQLiteStatement == null) {
        break label69;
      }
    }
    finally
    {
      try
      {
        l1 = localSQLiteStatement.simpleQueryForLong();
        l2 = getPageSize();
        localSQLiteStatement.close();
        unlock();
        return l1 * l2;
      }
      finally {}
      localObject1 = finally;
      localSQLiteStatement = null;
    }
    localSQLiteStatement.close();
    label69:
    unlock();
    throw ((Throwable)localObject1);
  }
  
  public long getPageSize()
  {
    lock();
    if (!isOpen()) {
      throw new IllegalStateException("database not open");
    }
    SQLiteStatement localSQLiteStatement;
    try
    {
      localSQLiteStatement = new SQLiteStatement(this, "PRAGMA page_size;");
      long l;
      if (localSQLiteStatement == null) {
        break label60;
      }
    }
    finally
    {
      try
      {
        l = localSQLiteStatement.simpleQueryForLong();
        localSQLiteStatement.close();
        unlock();
        return l;
      }
      finally {}
      localObject1 = finally;
      localSQLiteStatement = null;
    }
    localSQLiteStatement.close();
    label60:
    unlock();
    throw ((Throwable)localObject1);
  }
  
  public final String getPath()
  {
    return this.mPath;
  }
  
  public Map<String, String> getSyncedTables()
  {
    synchronized (this.mSyncUpdateInfo)
    {
      HashMap localHashMap = new HashMap();
      Iterator localIterator = this.mSyncUpdateInfo.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        SQLiteDatabase.SyncUpdateInfo localSyncUpdateInfo = (SQLiteDatabase.SyncUpdateInfo)this.mSyncUpdateInfo.get(str);
        if (localSyncUpdateInfo.deletedTable != null) {
          localHashMap.put(str, localSyncUpdateInfo.deletedTable);
        }
      }
    }
    return localMap1;
  }
  
  public int getVersion()
  {
    lock();
    if (!isOpen()) {
      throw new IllegalStateException("database not open");
    }
    SQLiteStatement localSQLiteStatement;
    try
    {
      localSQLiteStatement = new SQLiteStatement(this, "PRAGMA user_version;");
      long l;
      int i;
      if (localSQLiteStatement == null) {
        break label65;
      }
    }
    finally
    {
      try
      {
        l = localSQLiteStatement.simpleQueryForLong();
        i = (int)l;
        localSQLiteStatement.close();
        unlock();
        return i;
      }
      finally {}
      localObject1 = finally;
      localSQLiteStatement = null;
    }
    localSQLiteStatement.close();
    label65:
    unlock();
    throw ((Throwable)localObject1);
  }
  
  public boolean inTransaction()
  {
    return this.mLock.getHoldCount() > 0;
  }
  
  public long insert(String paramString1, String paramString2, ContentValues paramContentValues)
  {
    try
    {
      long l = insertWithOnConflict(paramString1, paramString2, paramContentValues, 0);
      return l;
    }
    catch (SQLException paramString2)
    {
      Log.e("Database", "Error inserting <redacted values> into " + paramString1, paramString2);
    }
    return -1L;
  }
  
  public long insertOrThrow(String paramString1, String paramString2, ContentValues paramContentValues)
  {
    return insertWithOnConflict(paramString1, paramString2, paramContentValues, 0);
  }
  
  /* Error */
  public long insertWithOnConflict(String paramString1, String paramString2, ContentValues paramContentValues, int paramInt)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: aconst_null
    //   4: astore 7
    //   6: iconst_0
    //   7: istore 10
    //   9: aload_0
    //   10: invokevirtual 409	net/sqlcipher/database/SQLiteDatabase:isOpen	()Z
    //   13: ifne +14 -> 27
    //   16: new 401	java/lang/IllegalStateException
    //   19: dup
    //   20: ldc_w 810
    //   23: invokespecial 404	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   26: athrow
    //   27: new 285	java/lang/StringBuilder
    //   30: dup
    //   31: sipush 152
    //   34: invokespecial 946	java/lang/StringBuilder:<init>	(I)V
    //   37: astore 8
    //   39: aload 8
    //   41: ldc_w 948
    //   44: invokevirtual 292	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   47: pop
    //   48: aload 8
    //   50: getstatic 120	net/sqlcipher/database/SQLiteDatabase:CONFLICT_VALUES	[Ljava/lang/String;
    //   53: iload 4
    //   55: aaload
    //   56: invokevirtual 292	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   59: pop
    //   60: aload 8
    //   62: ldc_w 950
    //   65: invokevirtual 292	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   68: pop
    //   69: aload 8
    //   71: aload_1
    //   72: invokevirtual 292	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   75: pop
    //   76: new 285	java/lang/StringBuilder
    //   79: dup
    //   80: bipush 40
    //   82: invokespecial 946	java/lang/StringBuilder:<init>	(I)V
    //   85: astore 9
    //   87: aload_3
    //   88: ifnull +244 -> 332
    //   91: aload_3
    //   92: invokevirtual 953	android/content/ContentValues:size	()I
    //   95: ifle +237 -> 332
    //   98: aload_3
    //   99: invokevirtual 956	android/content/ContentValues:valueSet	()Ljava/util/Set;
    //   102: astore 5
    //   104: aload 5
    //   106: invokeinterface 333 1 0
    //   111: astore_2
    //   112: aload 8
    //   114: bipush 40
    //   116: invokevirtual 959	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   119: pop
    //   120: iconst_0
    //   121: istore 4
    //   123: aload_2
    //   124: invokeinterface 339 1 0
    //   129: ifeq +63 -> 192
    //   132: iload 4
    //   134: ifeq +21 -> 155
    //   137: aload 8
    //   139: ldc_w 961
    //   142: invokevirtual 292	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   145: pop
    //   146: aload 9
    //   148: ldc_w 961
    //   151: invokevirtual 292	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   154: pop
    //   155: aload 8
    //   157: aload_2
    //   158: invokeinterface 343 1 0
    //   163: checkcast 345	java/util/Map$Entry
    //   166: invokeinterface 348 1 0
    //   171: checkcast 106	java/lang/String
    //   174: invokevirtual 292	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   177: pop
    //   178: aload 9
    //   180: bipush 63
    //   182: invokevirtual 959	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   185: pop
    //   186: iconst_1
    //   187: istore 4
    //   189: goto -66 -> 123
    //   192: aload 8
    //   194: bipush 41
    //   196: invokevirtual 959	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   199: pop
    //   200: aload 8
    //   202: ldc_w 963
    //   205: invokevirtual 292	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   208: pop
    //   209: aload 8
    //   211: aload 9
    //   213: invokevirtual 966	java/lang/StringBuilder:append	(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    //   216: pop
    //   217: aload 8
    //   219: ldc_w 968
    //   222: invokevirtual 292	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   225: pop
    //   226: aload_0
    //   227: invokevirtual 665	net/sqlcipher/database/SQLiteDatabase:lock	()V
    //   230: aload 7
    //   232: astore_2
    //   233: aload 6
    //   235: astore_3
    //   236: aload_0
    //   237: aload 8
    //   239: invokevirtual 307	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   242: invokevirtual 851	net/sqlcipher/database/SQLiteDatabase:compileStatement	(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteStatement;
    //   245: astore 6
    //   247: aload 5
    //   249: ifnull +127 -> 376
    //   252: aload 6
    //   254: astore_2
    //   255: aload 6
    //   257: astore_3
    //   258: aload 5
    //   260: invokeinterface 969 1 0
    //   265: istore 11
    //   267: aload 6
    //   269: astore_2
    //   270: aload 6
    //   272: astore_3
    //   273: aload 5
    //   275: invokeinterface 333 1 0
    //   280: astore 5
    //   282: iload 10
    //   284: istore 4
    //   286: iload 4
    //   288: iload 11
    //   290: if_icmpge +86 -> 376
    //   293: aload 6
    //   295: astore_2
    //   296: aload 6
    //   298: astore_3
    //   299: aload 6
    //   301: iload 4
    //   303: iconst_1
    //   304: iadd
    //   305: aload 5
    //   307: invokeinterface 343 1 0
    //   312: checkcast 345	java/util/Map$Entry
    //   315: invokeinterface 972 1 0
    //   320: invokestatic 857	net/sqlcipher/DatabaseUtils:bindObjectToProgram	(Lnet/sqlcipher/database/SQLiteProgram;ILjava/lang/Object;)V
    //   323: iload 4
    //   325: iconst_1
    //   326: iadd
    //   327: istore 4
    //   329: goto -43 -> 286
    //   332: aload 8
    //   334: new 285	java/lang/StringBuilder
    //   337: dup
    //   338: ldc_w 974
    //   341: invokespecial 288	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   344: aload_2
    //   345: invokevirtual 292	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   348: ldc_w 976
    //   351: invokevirtual 292	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   354: invokevirtual 307	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   357: invokevirtual 292	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   360: pop
    //   361: aload 9
    //   363: ldc_w 978
    //   366: invokevirtual 292	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   369: pop
    //   370: aconst_null
    //   371: astore 5
    //   373: goto -173 -> 200
    //   376: aload 6
    //   378: astore_2
    //   379: aload 6
    //   381: astore_3
    //   382: aload 6
    //   384: invokevirtual 860	net/sqlcipher/database/SQLiteStatement:execute	()V
    //   387: aload 6
    //   389: astore_2
    //   390: aload 6
    //   392: astore_3
    //   393: aload_0
    //   394: invokevirtual 981	net/sqlcipher/database/SQLiteDatabase:lastInsertRow	()J
    //   397: lstore 12
    //   399: lload 12
    //   401: ldc2_w 941
    //   404: lcmp
    //   405: ifne +49 -> 454
    //   408: aload 6
    //   410: astore_2
    //   411: aload 6
    //   413: astore_3
    //   414: ldc 62
    //   416: new 285	java/lang/StringBuilder
    //   419: dup
    //   420: ldc_w 983
    //   423: invokespecial 288	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   426: aload_1
    //   427: invokevirtual 292	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   430: invokevirtual 307	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   433: invokestatic 985	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   436: pop
    //   437: aload 6
    //   439: ifnull +8 -> 447
    //   442: aload 6
    //   444: invokevirtual 540	net/sqlcipher/database/SQLiteStatement:close	()V
    //   447: aload_0
    //   448: invokevirtual 679	net/sqlcipher/database/SQLiteDatabase:unlock	()V
    //   451: lload 12
    //   453: lreturn
    //   454: aload 6
    //   456: astore_2
    //   457: aload 6
    //   459: astore_3
    //   460: ldc 62
    //   462: iconst_2
    //   463: invokestatic 272	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   466: ifeq -29 -> 437
    //   469: aload 6
    //   471: astore_2
    //   472: aload 6
    //   474: astore_3
    //   475: ldc 62
    //   477: new 285	java/lang/StringBuilder
    //   480: dup
    //   481: ldc_w 987
    //   484: invokespecial 288	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   487: lload 12
    //   489: invokevirtual 297	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   492: ldc_w 989
    //   495: invokevirtual 292	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   498: aload_1
    //   499: invokevirtual 292	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   502: invokevirtual 307	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   505: invokestatic 788	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   508: pop
    //   509: goto -72 -> 437
    //   512: astore_1
    //   513: aload_2
    //   514: astore_3
    //   515: aload_0
    //   516: invokevirtual 866	net/sqlcipher/database/SQLiteDatabase:onCorruption	()V
    //   519: aload_2
    //   520: astore_3
    //   521: aload_1
    //   522: athrow
    //   523: astore_1
    //   524: aload_3
    //   525: ifnull +7 -> 532
    //   528: aload_3
    //   529: invokevirtual 540	net/sqlcipher/database/SQLiteStatement:close	()V
    //   532: aload_0
    //   533: invokevirtual 679	net/sqlcipher/database/SQLiteDatabase:unlock	()V
    //   536: aload_1
    //   537: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	538	0	this	SQLiteDatabase
    //   0	538	1	paramString1	String
    //   0	538	2	paramString2	String
    //   0	538	3	paramContentValues	ContentValues
    //   0	538	4	paramInt	int
    //   102	270	5	localObject1	Object
    //   1	472	6	localSQLiteStatement	SQLiteStatement
    //   4	227	7	localObject2	Object
    //   37	296	8	localStringBuilder1	StringBuilder
    //   85	277	9	localStringBuilder2	StringBuilder
    //   7	276	10	i	int
    //   265	26	11	j	int
    //   397	91	12	l	long
    // Exception table:
    //   from	to	target	type
    //   236	247	512	net/sqlcipher/database/SQLiteDatabaseCorruptException
    //   258	267	512	net/sqlcipher/database/SQLiteDatabaseCorruptException
    //   273	282	512	net/sqlcipher/database/SQLiteDatabaseCorruptException
    //   299	323	512	net/sqlcipher/database/SQLiteDatabaseCorruptException
    //   382	387	512	net/sqlcipher/database/SQLiteDatabaseCorruptException
    //   393	399	512	net/sqlcipher/database/SQLiteDatabaseCorruptException
    //   414	437	512	net/sqlcipher/database/SQLiteDatabaseCorruptException
    //   460	469	512	net/sqlcipher/database/SQLiteDatabaseCorruptException
    //   475	509	512	net/sqlcipher/database/SQLiteDatabaseCorruptException
    //   236	247	523	finally
    //   258	267	523	finally
    //   273	282	523	finally
    //   299	323	523	finally
    //   382	387	523	finally
    //   393	399	523	finally
    //   414	437	523	finally
    //   460	469	523	finally
    //   475	509	523	finally
    //   515	519	523	finally
    //   521	523	523	finally
  }
  
  public boolean isDbLockedByCurrentThread()
  {
    return this.mLock.isHeldByCurrentThread();
  }
  
  public boolean isDbLockedByOtherThreads()
  {
    return (!this.mLock.isHeldByCurrentThread()) && (this.mLock.isLocked());
  }
  
  public boolean isInCompiledSqlCache(String paramString)
  {
    synchronized (this.mCompiledQueries)
    {
      boolean bool = this.mCompiledQueries.containsKey(paramString);
      return bool;
    }
  }
  
  public boolean isOpen()
  {
    return this.mNativeHandle != 0;
  }
  
  public boolean isReadOnly()
  {
    return (this.mFlags & 0x1) == 1;
  }
  
  native int lastChangeCount();
  
  native long lastInsertRow();
  
  void lock()
  {
    if (!this.mLockingEnabled) {}
    do
    {
      return;
      this.mLock.lock();
    } while ((!SQLiteDebug.DEBUG_LOCK_TIME_TRACKING) || (this.mLock.getHoldCount() != 1));
    this.mLockAcquiredWallTime = SystemClock.elapsedRealtime();
    this.mLockAcquiredThreadTime = Debug.threadCpuTimeNanos();
  }
  
  void logTimeStat(String paramString, long paramLong)
  {
    logTimeStat(paramString, paramLong, null);
  }
  
  void logTimeStat(String paramString1, long paramLong, String paramString2)
  {
    this.mLastSqlStatement = paramString1;
    paramLong = SystemClock.uptimeMillis() - paramLong;
    if ((paramLong == 0L) && (paramString2 == "GETLOCK:")) {}
    String str;
    do
    {
      int i;
      do
      {
        return;
        if (sQueryLogTimeInMillis == 0) {
          sQueryLogTimeInMillis = 500;
        }
        if (paramLong >= sQueryLogTimeInMillis) {
          break;
        }
        i = (int)(paramLong * 100L / sQueryLogTimeInMillis);
      } while (this.mRandom.nextInt(100) >= i + 1);
      str = paramString1;
      if (paramString2 != null) {
        str = paramString2 + paramString1;
      }
    } while (str.length() <= 64);
    str.substring(0, 64);
  }
  
  public void markTableSyncable(String paramString1, String paramString2)
  {
    markTableSyncable(paramString1, "_id", paramString1, paramString2);
  }
  
  public void markTableSyncable(String paramString1, String paramString2, String paramString3)
  {
    markTableSyncable(paramString1, paramString2, paramString3, null);
  }
  
  native void native_execSQL(String paramString);
  
  native void native_setLocale(String paramString, int paramInt);
  
  public boolean needUpgrade(int paramInt)
  {
    return paramInt > getVersion();
  }
  
  protected void onAllReferencesReleased()
  {
    if (isOpen())
    {
      if (SQLiteDebug.DEBUG_SQL_CACHE) {
        this.mTimeClosed = getTime();
      }
      dbclose();
    }
  }
  
  void onCorruption()
  {
    Log.e("Database", "Removing corrupt database: " + this.mPath);
    try
    {
      close();
      return;
    }
    finally
    {
      if (!this.mPath.equalsIgnoreCase(":memory")) {
        new File(this.mPath).delete();
      }
    }
  }
  
  public void purgeFromCompiledSqlCache(String paramString)
  {
    synchronized (this.mCompiledQueries)
    {
      this.mCompiledQueries.remove(paramString);
      return;
    }
  }
  
  public Cursor query(String paramString1, String[] paramArrayOfString1, String paramString2, String[] paramArrayOfString2, String paramString3, String paramString4, String paramString5)
  {
    return query(false, paramString1, paramArrayOfString1, paramString2, paramArrayOfString2, paramString3, paramString4, paramString5, null);
  }
  
  public Cursor query(String paramString1, String[] paramArrayOfString1, String paramString2, String[] paramArrayOfString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    return query(false, paramString1, paramArrayOfString1, paramString2, paramArrayOfString2, paramString3, paramString4, paramString5, paramString6);
  }
  
  public Cursor query(boolean paramBoolean, String paramString1, String[] paramArrayOfString1, String paramString2, String[] paramArrayOfString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    return queryWithFactory(null, paramBoolean, paramString1, paramArrayOfString1, paramString2, paramArrayOfString2, paramString3, paramString4, paramString5, paramString6);
  }
  
  public Cursor queryWithFactory(SQLiteDatabase.CursorFactory paramCursorFactory, boolean paramBoolean, String paramString1, String[] paramArrayOfString1, String paramString2, String[] paramArrayOfString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    if (!isOpen()) {
      throw new IllegalStateException("database not open");
    }
    return rawQueryWithFactory(paramCursorFactory, SQLiteQueryBuilder.buildQueryString(paramBoolean, paramString1, paramArrayOfString1, paramString2, paramString3, paramString4, paramString5, paramString6), paramArrayOfString2, findEditTable(paramString1));
  }
  
  public void rawExecSQL(String paramString)
  {
    long l = SystemClock.uptimeMillis();
    lock();
    if (!isOpen()) {
      throw new IllegalStateException("database not open");
    }
    logTimeStat(this.mLastSqlStatement, l, "GETLOCK:");
    try
    {
      native_rawExecSQL(paramString);
      unlock();
      if (paramString == "COMMIT;")
      {
        logTimeStat(this.mLastSqlStatement, l, "COMMIT;");
        return;
      }
    }
    catch (SQLiteDatabaseCorruptException paramString)
    {
      throw paramString;
    }
    finally
    {
      unlock();
    }
    logTimeStat(paramString, l, null);
  }
  
  public Cursor rawQuery(String paramString, String[] paramArrayOfString)
  {
    return rawQueryWithFactory(null, paramString, paramArrayOfString, null);
  }
  
  public Cursor rawQuery(String paramString, String[] paramArrayOfString, int paramInt1, int paramInt2)
  {
    paramString = (CursorWrapper)rawQueryWithFactory(null, paramString, paramArrayOfString, null);
    ((SQLiteCursor)paramString.getWrappedCursor()).setLoadStyle(paramInt1, paramInt2);
    return paramString;
  }
  
  public Cursor rawQueryWithFactory(SQLiteDatabase.CursorFactory paramCursorFactory, String paramString1, String[] paramArrayOfString, String paramString2)
  {
    int i = -1;
    if (!isOpen()) {
      throw new IllegalStateException("database not open");
    }
    l = 0L;
    if (this.mSlowQueryThreshold != -1) {
      l = System.currentTimeMillis();
    }
    paramString1 = new SQLiteDirectCursorDriver(this, paramString1, paramString2);
    if (paramCursorFactory != null) {}
    for (;;)
    {
      try
      {
        paramCursorFactory = paramString1.query(paramCursorFactory, paramArrayOfString);
        if (this.mSlowQueryThreshold != -1)
        {
          if (paramCursorFactory != null) {
            i = paramCursorFactory.getCount();
          }
          l = System.currentTimeMillis() - l;
          if (l >= this.mSlowQueryThreshold) {
            Log.v("Database", "query (" + l + " ms): " + paramString1.toString() + ", args are <redacted>, count is " + i);
          }
        }
        return new CrossProcessCursorWrapper(paramCursorFactory);
      }
      finally
      {
        if (this.mSlowQueryThreshold == -1) {
          continue;
        }
        l = System.currentTimeMillis() - l;
        if (l < this.mSlowQueryThreshold) {
          continue;
        }
        Log.v("Database", "query (" + l + " ms): " + paramString1.toString() + ", args are <redacted>, count is -1");
      }
      paramCursorFactory = this.mFactory;
    }
  }
  
  void removeSQLiteClosable(SQLiteClosable paramSQLiteClosable)
  {
    lock();
    try
    {
      this.mPrograms.remove(paramSQLiteClosable);
      return;
    }
    finally
    {
      unlock();
    }
  }
  
  public long replace(String paramString1, String paramString2, ContentValues paramContentValues)
  {
    try
    {
      long l = insertWithOnConflict(paramString1, paramString2, paramContentValues, 5);
      return l;
    }
    catch (SQLException paramString2)
    {
      Log.e("Database", "Error inserting <redacted values> into " + paramString1, paramString2);
    }
    return -1L;
  }
  
  public long replaceOrThrow(String paramString1, String paramString2, ContentValues paramContentValues)
  {
    return insertWithOnConflict(paramString1, paramString2, paramContentValues, 5);
  }
  
  public void resetCompiledSqlCache()
  {
    synchronized (this.mCompiledQueries)
    {
      this.mCompiledQueries.clear();
      return;
    }
  }
  
  void rowUpdated(String paramString, long paramLong)
  {
    synchronized (this.mSyncUpdateInfo)
    {
      SQLiteDatabase.SyncUpdateInfo localSyncUpdateInfo = (SQLiteDatabase.SyncUpdateInfo)this.mSyncUpdateInfo.get(paramString);
      if (localSyncUpdateInfo != null) {
        execSQL("UPDATE " + localSyncUpdateInfo.masterTable + " SET _sync_dirty=1 WHERE _id=(SELECT " + localSyncUpdateInfo.foreignKey + " FROM " + paramString + " WHERE _id=" + paramLong + ")");
      }
      return;
    }
  }
  
  public void setLocale(Locale paramLocale)
  {
    lock();
    try
    {
      native_setLocale(paramLocale.toString(), this.mFlags);
      return;
    }
    finally
    {
      unlock();
    }
  }
  
  public void setLockingEnabled(boolean paramBoolean)
  {
    this.mLockingEnabled = paramBoolean;
  }
  
  public void setMaxSqlCacheSize(int paramInt)
  {
    if ((paramInt > 250) || (paramInt < 0)) {
      try
      {
        throw new IllegalStateException("expected value between 0 and 250");
      }
      finally {}
    }
    if (paramInt < this.mMaxSqlCacheSize) {
      throw new IllegalStateException("cannot set cacheSize to a value less than the value set with previous setMaxSqlCacheSize() call.");
    }
    this.mMaxSqlCacheSize = paramInt;
  }
  
  /* Error */
  public long setMaximumSize(long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 665	net/sqlcipher/database/SQLiteDatabase:lock	()V
    //   4: aload_0
    //   5: invokevirtual 409	net/sqlcipher/database/SQLiteDatabase:isOpen	()Z
    //   8: ifne +14 -> 22
    //   11: new 401	java/lang/IllegalStateException
    //   14: dup
    //   15: ldc_w 810
    //   18: invokespecial 404	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   21: athrow
    //   22: aload_0
    //   23: invokevirtual 500	net/sqlcipher/database/SQLiteDatabase:getPageSize	()J
    //   26: lstore 7
    //   28: lload_1
    //   29: lload 7
    //   31: ldiv
    //   32: lstore 5
    //   34: lload_1
    //   35: lload 7
    //   37: lrem
    //   38: lconst_0
    //   39: lcmp
    //   40: ifeq +79 -> 119
    //   43: lload 5
    //   45: lconst_1
    //   46: ladd
    //   47: lstore_1
    //   48: new 531	net/sqlcipher/database/SQLiteStatement
    //   51: dup
    //   52: aload_0
    //   53: new 285	java/lang/StringBuilder
    //   56: dup
    //   57: ldc_w 1120
    //   60: invokespecial 288	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   63: lload_1
    //   64: invokevirtual 297	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   67: invokevirtual 307	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   70: invokespecial 536	net/sqlcipher/database/SQLiteStatement:<init>	(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)V
    //   73: astore 4
    //   75: aload 4
    //   77: invokevirtual 539	net/sqlcipher/database/SQLiteStatement:simpleQueryForLong	()J
    //   80: lstore_1
    //   81: aload 4
    //   83: invokevirtual 540	net/sqlcipher/database/SQLiteStatement:close	()V
    //   86: aload_0
    //   87: invokevirtual 679	net/sqlcipher/database/SQLiteDatabase:unlock	()V
    //   90: lload_1
    //   91: lload 7
    //   93: lmul
    //   94: lreturn
    //   95: astore_3
    //   96: aconst_null
    //   97: astore 4
    //   99: aload 4
    //   101: ifnull +8 -> 109
    //   104: aload 4
    //   106: invokevirtual 540	net/sqlcipher/database/SQLiteStatement:close	()V
    //   109: aload_0
    //   110: invokevirtual 679	net/sqlcipher/database/SQLiteDatabase:unlock	()V
    //   113: aload_3
    //   114: athrow
    //   115: astore_3
    //   116: goto -17 -> 99
    //   119: lload 5
    //   121: lstore_1
    //   122: goto -74 -> 48
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	125	0	this	SQLiteDatabase
    //   0	125	1	paramLong	long
    //   95	19	3	localObject1	Object
    //   115	1	3	localObject2	Object
    //   73	32	4	localSQLiteStatement	SQLiteStatement
    //   32	88	5	l1	long
    //   26	66	7	l2	long
    // Exception table:
    //   from	to	target	type
    //   22	34	95	finally
    //   48	75	95	finally
    //   75	81	115	finally
  }
  
  public void setPageSize(long paramLong)
  {
    execSQL("PRAGMA page_size = " + paramLong);
  }
  
  public void setTransactionSuccessful()
  {
    if (!isOpen()) {
      throw new IllegalStateException("database not open");
    }
    if (!this.mLock.isHeldByCurrentThread()) {
      throw new IllegalStateException("no transaction pending");
    }
    if (this.mInnerTransactionIsSuccessful) {
      throw new IllegalStateException("setTransactionSuccessful may only be called once per call to beginTransaction");
    }
    this.mInnerTransactionIsSuccessful = true;
  }
  
  public void setVersion(int paramInt)
  {
    execSQL("PRAGMA user_version = " + paramInt);
  }
  
  public int status(int paramInt, boolean paramBoolean)
  {
    return native_status(paramInt, paramBoolean);
  }
  
  void unlock()
  {
    if (!this.mLockingEnabled) {
      return;
    }
    if ((SQLiteDebug.DEBUG_LOCK_TIME_TRACKING) && (this.mLock.getHoldCount() == 1)) {
      checkLockHoldTime();
    }
    this.mLock.unlock();
  }
  
  public int update(String paramString1, ContentValues paramContentValues, String paramString2, String[] paramArrayOfString)
  {
    return updateWithOnConflict(paramString1, paramContentValues, paramString2, paramArrayOfString, 0);
  }
  
  /* Error */
  public int updateWithOnConflict(String paramString1, ContentValues paramContentValues, String paramString2, String[] paramArrayOfString, int paramInt)
  {
    // Byte code:
    //   0: aload_2
    //   1: ifnull +10 -> 11
    //   4: aload_2
    //   5: invokevirtual 953	android/content/ContentValues:size	()I
    //   8: ifne +14 -> 22
    //   11: new 187	java/lang/IllegalArgumentException
    //   14: dup
    //   15: ldc_w 1139
    //   18: invokespecial 192	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   21: athrow
    //   22: new 285	java/lang/StringBuilder
    //   25: dup
    //   26: bipush 120
    //   28: invokespecial 946	java/lang/StringBuilder:<init>	(I)V
    //   31: astore 7
    //   33: aload 7
    //   35: ldc_w 1095
    //   38: invokevirtual 292	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   41: pop
    //   42: aload 7
    //   44: getstatic 120	net/sqlcipher/database/SQLiteDatabase:CONFLICT_VALUES	[Ljava/lang/String;
    //   47: iload 5
    //   49: aaload
    //   50: invokevirtual 292	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   53: pop
    //   54: aload 7
    //   56: aload_1
    //   57: invokevirtual 292	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   60: pop
    //   61: aload 7
    //   63: ldc_w 1141
    //   66: invokevirtual 292	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   69: pop
    //   70: aload_2
    //   71: invokevirtual 956	android/content/ContentValues:valueSet	()Ljava/util/Set;
    //   74: astore 8
    //   76: aload 8
    //   78: invokeinterface 333 1 0
    //   83: astore_2
    //   84: aload_2
    //   85: invokeinterface 339 1 0
    //   90: ifeq +56 -> 146
    //   93: aload 7
    //   95: aload_2
    //   96: invokeinterface 343 1 0
    //   101: checkcast 345	java/util/Map$Entry
    //   104: invokeinterface 348 1 0
    //   109: checkcast 106	java/lang/String
    //   112: invokevirtual 292	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   115: pop
    //   116: aload 7
    //   118: ldc_w 1143
    //   121: invokevirtual 292	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   124: pop
    //   125: aload_2
    //   126: invokeinterface 339 1 0
    //   131: ifeq -47 -> 84
    //   134: aload 7
    //   136: ldc_w 961
    //   139: invokevirtual 292	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   142: pop
    //   143: goto -59 -> 84
    //   146: aload_3
    //   147: invokestatic 391	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   150: ifne +19 -> 169
    //   153: aload 7
    //   155: ldc_w 849
    //   158: invokevirtual 292	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   161: pop
    //   162: aload 7
    //   164: aload_3
    //   165: invokevirtual 292	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   168: pop
    //   169: aload_0
    //   170: invokevirtual 665	net/sqlcipher/database/SQLiteDatabase:lock	()V
    //   173: aload_0
    //   174: invokevirtual 409	net/sqlcipher/database/SQLiteDatabase:isOpen	()Z
    //   177: ifne +14 -> 191
    //   180: new 401	java/lang/IllegalStateException
    //   183: dup
    //   184: ldc_w 810
    //   187: invokespecial 404	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   190: athrow
    //   191: aconst_null
    //   192: astore_2
    //   193: aconst_null
    //   194: astore 6
    //   196: aconst_null
    //   197: astore_3
    //   198: aload_0
    //   199: aload 7
    //   201: invokevirtual 307	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   204: invokevirtual 851	net/sqlcipher/database/SQLiteDatabase:compileStatement	(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteStatement;
    //   207: astore 7
    //   209: aload 7
    //   211: astore_3
    //   212: aload 7
    //   214: astore_2
    //   215: aload 7
    //   217: astore 6
    //   219: aload 8
    //   221: invokeinterface 969 1 0
    //   226: istore 10
    //   228: aload 7
    //   230: astore_3
    //   231: aload 7
    //   233: astore_2
    //   234: aload 7
    //   236: astore 6
    //   238: aload 8
    //   240: invokeinterface 333 1 0
    //   245: astore 8
    //   247: iconst_1
    //   248: istore 5
    //   250: iconst_0
    //   251: istore 9
    //   253: iload 9
    //   255: iload 10
    //   257: if_icmpge +50 -> 307
    //   260: aload 7
    //   262: astore_3
    //   263: aload 7
    //   265: astore_2
    //   266: aload 7
    //   268: astore 6
    //   270: aload 7
    //   272: iload 5
    //   274: aload 8
    //   276: invokeinterface 343 1 0
    //   281: checkcast 345	java/util/Map$Entry
    //   284: invokeinterface 972 1 0
    //   289: invokestatic 857	net/sqlcipher/DatabaseUtils:bindObjectToProgram	(Lnet/sqlcipher/database/SQLiteProgram;ILjava/lang/Object;)V
    //   292: iload 5
    //   294: iconst_1
    //   295: iadd
    //   296: istore 5
    //   298: iload 9
    //   300: iconst_1
    //   301: iadd
    //   302: istore 9
    //   304: goto -51 -> 253
    //   307: aload 4
    //   309: ifnull +73 -> 382
    //   312: aload 7
    //   314: astore_3
    //   315: aload 7
    //   317: astore_2
    //   318: aload 7
    //   320: astore 6
    //   322: aload 4
    //   324: arraylength
    //   325: istore 11
    //   327: iconst_0
    //   328: istore 10
    //   330: iload 5
    //   332: istore 9
    //   334: iload 10
    //   336: istore 5
    //   338: iload 5
    //   340: iload 11
    //   342: if_icmpge +40 -> 382
    //   345: aload 7
    //   347: astore_3
    //   348: aload 7
    //   350: astore_2
    //   351: aload 7
    //   353: astore 6
    //   355: aload 7
    //   357: iload 9
    //   359: aload 4
    //   361: iload 5
    //   363: aaload
    //   364: invokevirtual 1147	net/sqlcipher/database/SQLiteStatement:bindString	(ILjava/lang/String;)V
    //   367: iload 9
    //   369: iconst_1
    //   370: iadd
    //   371: istore 9
    //   373: iload 5
    //   375: iconst_1
    //   376: iadd
    //   377: istore 5
    //   379: goto -41 -> 338
    //   382: aload 7
    //   384: astore_3
    //   385: aload 7
    //   387: astore_2
    //   388: aload 7
    //   390: astore 6
    //   392: aload 7
    //   394: invokevirtual 860	net/sqlcipher/database/SQLiteStatement:execute	()V
    //   397: aload 7
    //   399: astore_3
    //   400: aload 7
    //   402: astore_2
    //   403: aload 7
    //   405: astore 6
    //   407: aload_0
    //   408: invokevirtual 863	net/sqlcipher/database/SQLiteDatabase:lastChangeCount	()I
    //   411: istore 5
    //   413: aload 7
    //   415: astore_3
    //   416: aload 7
    //   418: astore_2
    //   419: aload 7
    //   421: astore 6
    //   423: ldc 62
    //   425: iconst_2
    //   426: invokestatic 272	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   429: ifeq +47 -> 476
    //   432: aload 7
    //   434: astore_3
    //   435: aload 7
    //   437: astore_2
    //   438: aload 7
    //   440: astore 6
    //   442: ldc 62
    //   444: new 285	java/lang/StringBuilder
    //   447: dup
    //   448: ldc_w 1149
    //   451: invokespecial 288	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   454: iload 5
    //   456: invokevirtual 302	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   459: ldc_w 1151
    //   462: invokevirtual 292	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   465: aload_1
    //   466: invokevirtual 292	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   469: invokevirtual 307	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   472: invokestatic 788	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   475: pop
    //   476: aload 7
    //   478: ifnull +8 -> 486
    //   481: aload 7
    //   483: invokevirtual 540	net/sqlcipher/database/SQLiteStatement:close	()V
    //   486: aload_0
    //   487: invokevirtual 679	net/sqlcipher/database/SQLiteDatabase:unlock	()V
    //   490: iload 5
    //   492: ireturn
    //   493: astore_1
    //   494: aload_3
    //   495: astore_2
    //   496: aload_0
    //   497: invokevirtual 866	net/sqlcipher/database/SQLiteDatabase:onCorruption	()V
    //   500: aload_3
    //   501: astore_2
    //   502: aload_1
    //   503: athrow
    //   504: astore_1
    //   505: aload_2
    //   506: ifnull +7 -> 513
    //   509: aload_2
    //   510: invokevirtual 540	net/sqlcipher/database/SQLiteStatement:close	()V
    //   513: aload_0
    //   514: invokevirtual 679	net/sqlcipher/database/SQLiteDatabase:unlock	()V
    //   517: aload_1
    //   518: athrow
    //   519: astore_3
    //   520: aload 6
    //   522: astore_2
    //   523: ldc 62
    //   525: new 285	java/lang/StringBuilder
    //   528: dup
    //   529: ldc_w 1153
    //   532: invokespecial 288	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   535: aload_1
    //   536: invokevirtual 292	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   539: invokevirtual 307	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   542: invokestatic 985	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   545: pop
    //   546: aload 6
    //   548: astore_2
    //   549: aload_3
    //   550: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	551	0	this	SQLiteDatabase
    //   0	551	1	paramString1	String
    //   0	551	2	paramContentValues	ContentValues
    //   0	551	3	paramString2	String
    //   0	551	4	paramArrayOfString	String[]
    //   0	551	5	paramInt	int
    //   194	353	6	localObject1	Object
    //   31	451	7	localObject2	Object
    //   74	201	8	localObject3	Object
    //   251	121	9	i	int
    //   226	109	10	j	int
    //   325	18	11	k	int
    // Exception table:
    //   from	to	target	type
    //   198	209	493	net/sqlcipher/database/SQLiteDatabaseCorruptException
    //   219	228	493	net/sqlcipher/database/SQLiteDatabaseCorruptException
    //   238	247	493	net/sqlcipher/database/SQLiteDatabaseCorruptException
    //   270	292	493	net/sqlcipher/database/SQLiteDatabaseCorruptException
    //   322	327	493	net/sqlcipher/database/SQLiteDatabaseCorruptException
    //   355	367	493	net/sqlcipher/database/SQLiteDatabaseCorruptException
    //   392	397	493	net/sqlcipher/database/SQLiteDatabaseCorruptException
    //   407	413	493	net/sqlcipher/database/SQLiteDatabaseCorruptException
    //   423	432	493	net/sqlcipher/database/SQLiteDatabaseCorruptException
    //   442	476	493	net/sqlcipher/database/SQLiteDatabaseCorruptException
    //   198	209	504	finally
    //   219	228	504	finally
    //   238	247	504	finally
    //   270	292	504	finally
    //   322	327	504	finally
    //   355	367	504	finally
    //   392	397	504	finally
    //   407	413	504	finally
    //   423	432	504	finally
    //   442	476	504	finally
    //   496	500	504	finally
    //   502	504	504	finally
    //   523	546	504	finally
    //   549	551	504	finally
    //   198	209	519	net/sqlcipher/SQLException
    //   219	228	519	net/sqlcipher/SQLException
    //   238	247	519	net/sqlcipher/SQLException
    //   270	292	519	net/sqlcipher/SQLException
    //   322	327	519	net/sqlcipher/SQLException
    //   355	367	519	net/sqlcipher/SQLException
    //   392	397	519	net/sqlcipher/SQLException
    //   407	413	519	net/sqlcipher/SQLException
    //   423	432	519	net/sqlcipher/SQLException
    //   442	476	519	net/sqlcipher/SQLException
  }
  
  @Deprecated
  public boolean yieldIfContended()
  {
    return yieldIfContendedHelper(false, -1L);
  }
  
  public boolean yieldIfContendedSafely()
  {
    return yieldIfContendedHelper(true, -1L);
  }
  
  public boolean yieldIfContendedSafely(long paramLong)
  {
    return yieldIfContendedHelper(true, paramLong);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\net\sqlcipher\database\SQLiteDatabase.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */