package net.sqlcipher.database;

import android.database.DataSetObserver;
import android.text.TextUtils;
import android.util.Log;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.locks.ReentrantLock;
import net.sqlcipher.AbstractWindowedCursor;
import net.sqlcipher.SQLException;

public class SQLiteCursor
  extends AbstractWindowedCursor
{
  static final int NO_COUNT = -1;
  static final String TAG = "Cursor";
  private Map<String, Integer> mColumnNameMap;
  private String[] mColumns;
  private int mCount = -1;
  private int mCursorState = 0;
  private SQLiteDatabase mDatabase;
  private SQLiteCursorDriver mDriver;
  private String mEditTable;
  private int mInitialRead = Integer.MAX_VALUE;
  private ReentrantLock mLock = null;
  private int mMaxRead = Integer.MAX_VALUE;
  protected SQLiteCursor.MainThreadNotificationHandler mNotificationHandler;
  private boolean mPendingData = false;
  private SQLiteQuery mQuery;
  private Throwable mStackTrace = new DatabaseObjectNotClosedException().fillInStackTrace();
  
  public SQLiteCursor(SQLiteDatabase paramSQLiteDatabase, SQLiteCursorDriver paramSQLiteCursorDriver, String paramString, SQLiteQuery paramSQLiteQuery)
  {
    this.mDatabase = paramSQLiteDatabase;
    this.mDriver = paramSQLiteCursorDriver;
    this.mEditTable = paramString;
    this.mColumnNameMap = null;
    this.mQuery = paramSQLiteQuery;
    try
    {
      paramSQLiteDatabase.lock();
      int j = this.mQuery.columnCountLocked();
      this.mColumns = new String[j];
      while (i < j)
      {
        paramSQLiteCursorDriver = this.mQuery.columnNameLocked(i);
        this.mColumns[i] = paramSQLiteCursorDriver;
        if ("_id".equals(paramSQLiteCursorDriver)) {
          this.mRowIdColumnIndex = i;
        }
        i += 1;
      }
      return;
    }
    finally
    {
      paramSQLiteDatabase.unlock();
    }
  }
  
  private void deactivateCommon()
  {
    this.mCursorState = 0;
    if (this.mWindow != null)
    {
      this.mWindow.close();
      this.mWindow = null;
    }
  }
  
  /* Error */
  private void fillWindow(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 112	net/sqlcipher/database/SQLiteCursor:mWindow	Lnet/sqlcipher/CursorWindow;
    //   4: ifnonnull +86 -> 90
    //   7: aload_0
    //   8: new 131	net/sqlcipher/CursorWindow
    //   11: dup
    //   12: iconst_1
    //   13: invokespecial 139	net/sqlcipher/CursorWindow:<init>	(Z)V
    //   16: putfield 112	net/sqlcipher/database/SQLiteCursor:mWindow	Lnet/sqlcipher/CursorWindow;
    //   19: aload_0
    //   20: getfield 112	net/sqlcipher/database/SQLiteCursor:mWindow	Lnet/sqlcipher/CursorWindow;
    //   23: iload_1
    //   24: invokevirtual 142	net/sqlcipher/CursorWindow:setStartPosition	(I)V
    //   27: aload_0
    //   28: aload_0
    //   29: getfield 72	net/sqlcipher/database/SQLiteCursor:mQuery	Lnet/sqlcipher/database/SQLiteQuery;
    //   32: aload_0
    //   33: getfield 112	net/sqlcipher/database/SQLiteCursor:mWindow	Lnet/sqlcipher/CursorWindow;
    //   36: aload_0
    //   37: getfield 47	net/sqlcipher/database/SQLiteCursor:mInitialRead	I
    //   40: iconst_0
    //   41: invokevirtual 145	net/sqlcipher/database/SQLiteQuery:fillWindow	(Lnet/sqlcipher/CursorWindow;II)I
    //   44: putfield 42	net/sqlcipher/database/SQLiteCursor:mCount	I
    //   47: aload_0
    //   48: getfield 42	net/sqlcipher/database/SQLiteCursor:mCount	I
    //   51: iconst_m1
    //   52: if_icmpne +37 -> 89
    //   55: aload_0
    //   56: aload_0
    //   57: getfield 47	net/sqlcipher/database/SQLiteCursor:mInitialRead	I
    //   60: iload_1
    //   61: iadd
    //   62: putfield 42	net/sqlcipher/database/SQLiteCursor:mCount	I
    //   65: new 147	java/lang/Thread
    //   68: dup
    //   69: new 149	net/sqlcipher/database/SQLiteCursor$QueryThread
    //   72: dup
    //   73: aload_0
    //   74: aload_0
    //   75: getfield 49	net/sqlcipher/database/SQLiteCursor:mCursorState	I
    //   78: invokespecial 152	net/sqlcipher/database/SQLiteCursor$QueryThread:<init>	(Lnet/sqlcipher/database/SQLiteCursor;I)V
    //   81: ldc -102
    //   83: invokespecial 157	java/lang/Thread:<init>	(Ljava/lang/Runnable;Ljava/lang/String;)V
    //   86: invokevirtual 160	java/lang/Thread:start	()V
    //   89: return
    //   90: aload_0
    //   91: aload_0
    //   92: getfield 49	net/sqlcipher/database/SQLiteCursor:mCursorState	I
    //   95: iconst_1
    //   96: iadd
    //   97: putfield 49	net/sqlcipher/database/SQLiteCursor:mCursorState	I
    //   100: aload_0
    //   101: invokespecial 163	net/sqlcipher/database/SQLiteCursor:queryThreadLock	()V
    //   104: aload_0
    //   105: getfield 112	net/sqlcipher/database/SQLiteCursor:mWindow	Lnet/sqlcipher/CursorWindow;
    //   108: invokevirtual 166	net/sqlcipher/CursorWindow:clear	()V
    //   111: aload_0
    //   112: invokespecial 169	net/sqlcipher/database/SQLiteCursor:queryThreadUnlock	()V
    //   115: goto -96 -> 19
    //   118: astore_2
    //   119: aload_0
    //   120: invokespecial 169	net/sqlcipher/database/SQLiteCursor:queryThreadUnlock	()V
    //   123: aload_2
    //   124: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	125	0	this	SQLiteCursor
    //   0	125	1	paramInt	int
    //   118	6	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   104	111	118	finally
  }
  
  private void queryThreadLock()
  {
    if (this.mLock != null) {
      this.mLock.lock();
    }
  }
  
  private void queryThreadUnlock()
  {
    if (this.mLock != null) {
      this.mLock.unlock();
    }
  }
  
  public void close()
  {
    super.close();
    deactivateCommon();
    this.mQuery.close();
    this.mDriver.cursorClosed();
  }
  
  public boolean commitUpdates(Map<? extends Long, ? extends Map<String, Object>> paramMap)
  {
    if (!supportsUpdates())
    {
      Log.e("Cursor", "commitUpdates not supported on this cursor, did you include the _id column?");
      return false;
    }
    HashMap localHashMap = this.mUpdatedRows;
    if (paramMap != null) {}
    try
    {
      this.mUpdatedRows.putAll(paramMap);
      if (this.mUpdatedRows.size() == 0) {
        return true;
      }
      this.mDatabase.beginTransaction();
      do
      {
        try
        {
          paramMap = new StringBuilder(128);
          Iterator localIterator = this.mUpdatedRows.entrySet().iterator();
          if (!localIterator.hasNext()) {
            break;
          }
          localObject2 = (Map.Entry)localIterator.next();
          localObject1 = (Map)((Map.Entry)localObject2).getValue();
          localObject2 = (Long)((Map.Entry)localObject2).getKey();
          if ((localObject2 == null) || (localObject1 == null)) {
            throw new IllegalStateException("null rowId or values found! rowId = " + localObject2 + ", values = " + localObject1);
          }
        }
        finally
        {
          this.mDatabase.endTransaction();
        }
      } while (((Map)localObject1).size() == 0);
    }
    finally {}
    long l = ((Long)localObject2).longValue();
    Object localObject2 = ((Map)localObject1).entrySet().iterator();
    paramMap.setLength(0);
    paramMap.append("UPDATE " + this.mEditTable + " SET ");
    Object localObject1 = new Object[((Map)localObject1).size()];
    int i = 0;
    for (;;)
    {
      if (((Iterator)localObject2).hasNext())
      {
        Map.Entry localEntry = (Map.Entry)((Iterator)localObject2).next();
        paramMap.append((String)localEntry.getKey());
        paramMap.append("=?");
        localObject1[i] = localEntry.getValue();
        if (((Iterator)localObject2).hasNext()) {
          paramMap.append(", ");
        }
      }
      else
      {
        paramMap.append(" WHERE " + this.mColumns[this.mRowIdColumnIndex] + '=' + l);
        paramMap.append(';');
        this.mDatabase.execSQL(paramMap.toString(), (Object[])localObject1);
        this.mDatabase.rowUpdated(this.mEditTable, l);
        break;
        this.mDatabase.setTransactionSuccessful();
        this.mDatabase.endTransaction();
        this.mUpdatedRows.clear();
        onChange(true);
        return true;
      }
      i += 1;
    }
  }
  
  public void deactivate()
  {
    super.deactivate();
    deactivateCommon();
    this.mDriver.cursorDeactivated();
  }
  
  public boolean deleteRow()
  {
    checkPosition();
    if ((this.mRowIdColumnIndex == -1) || (this.mCurrentRowID == null))
    {
      Log.e("Cursor", "Could not delete row because either the row ID column is not available or ithas not been read.");
      return false;
    }
    this.mDatabase.lock();
    try
    {
      this.mDatabase.delete(this.mEditTable, this.mColumns[this.mRowIdColumnIndex] + "=?", new String[] { this.mCurrentRowID.toString() });
      i = 1;
    }
    catch (SQLException localSQLException)
    {
      for (;;)
      {
        int j;
        int i = 0;
      }
    }
    finally
    {
      this.mDatabase.unlock();
    }
    j = this.mPos;
    requery();
    moveToPosition(j);
    this.mDatabase.unlock();
    if (i != 0)
    {
      onChange(true);
      return true;
    }
    return false;
  }
  
  public void fillWindow(int paramInt, android.database.CursorWindow paramCursorWindow)
  {
    if (this.mWindow == null) {
      this.mWindow = new net.sqlcipher.CursorWindow(true);
    }
    for (;;)
    {
      this.mWindow.setStartPosition(paramInt);
      this.mCount = this.mQuery.fillWindow(this.mWindow, this.mInitialRead, 0);
      if (this.mCount == -1)
      {
        this.mCount = (this.mInitialRead + paramInt);
        new Thread(new SQLiteCursor.QueryThread(this, this.mCursorState), "query thread").start();
      }
      return;
      this.mCursorState += 1;
      queryThreadLock();
      try
      {
        this.mWindow.clear();
        queryThreadUnlock();
      }
      finally
      {
        queryThreadUnlock();
      }
    }
  }
  
  /* Error */
  protected void finalize()
  {
    // Byte code:
    //   0: bipush 100
    //   2: istore_3
    //   3: aload_0
    //   4: getfield 112	net/sqlcipher/database/SQLiteCursor:mWindow	Lnet/sqlcipher/CursorWindow;
    //   7: ifnull +100 -> 107
    //   10: aload_0
    //   11: getfield 72	net/sqlcipher/database/SQLiteCursor:mQuery	Lnet/sqlcipher/database/SQLiteQuery;
    //   14: getfield 354	net/sqlcipher/database/SQLiteQuery:mSql	Ljava/lang/String;
    //   17: invokevirtual 357	java/lang/String:length	()I
    //   20: istore 4
    //   22: new 214	java/lang/StringBuilder
    //   25: dup
    //   26: ldc_w 359
    //   29: invokespecial 254	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   32: aload_0
    //   33: getfield 64	net/sqlcipher/database/SQLiteCursor:mDatabase	Lnet/sqlcipher/database/SQLiteDatabase;
    //   36: invokevirtual 362	net/sqlcipher/database/SQLiteDatabase:getPath	()Ljava/lang/String;
    //   39: invokevirtual 263	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   42: ldc_w 364
    //   45: invokevirtual 263	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   48: aload_0
    //   49: getfield 68	net/sqlcipher/database/SQLiteCursor:mEditTable	Ljava/lang/String;
    //   52: invokevirtual 263	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   55: ldc_w 366
    //   58: invokevirtual 263	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   61: astore_1
    //   62: aload_0
    //   63: getfield 72	net/sqlcipher/database/SQLiteCursor:mQuery	Lnet/sqlcipher/database/SQLiteQuery;
    //   66: getfield 354	net/sqlcipher/database/SQLiteQuery:mSql	Ljava/lang/String;
    //   69: astore_2
    //   70: iload 4
    //   72: bipush 100
    //   74: if_icmple +38 -> 112
    //   77: ldc 11
    //   79: aload_1
    //   80: aload_2
    //   81: iconst_0
    //   82: iload_3
    //   83: invokevirtual 370	java/lang/String:substring	(II)Ljava/lang/String;
    //   86: invokevirtual 263	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   89: invokevirtual 267	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   92: aload_0
    //   93: getfield 62	net/sqlcipher/database/SQLiteCursor:mStackTrace	Ljava/lang/Throwable;
    //   96: invokestatic 373	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   99: pop
    //   100: aload_0
    //   101: invokevirtual 374	net/sqlcipher/database/SQLiteCursor:close	()V
    //   104: invokestatic 379	net/sqlcipher/database/SQLiteDebug:notifyActiveCursorFinalized	()V
    //   107: aload_0
    //   108: invokespecial 381	net/sqlcipher/AbstractWindowedCursor:finalize	()V
    //   111: return
    //   112: iload 4
    //   114: istore_3
    //   115: goto -38 -> 77
    //   118: astore_1
    //   119: aload_0
    //   120: invokespecial 381	net/sqlcipher/AbstractWindowedCursor:finalize	()V
    //   123: aload_1
    //   124: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	125	0	this	SQLiteCursor
    //   61	19	1	localStringBuilder	StringBuilder
    //   118	6	1	localObject	Object
    //   69	12	2	str	String
    //   2	113	3	i	int
    //   20	93	4	j	int
    // Exception table:
    //   from	to	target	type
    //   3	70	118	finally
    //   77	107	118	finally
  }
  
  public int getColumnIndex(String paramString)
  {
    if (this.mColumnNameMap == null)
    {
      localObject = this.mColumns;
      int j = localObject.length;
      HashMap localHashMap = new HashMap(j, 1.0F);
      i = 0;
      while (i < j)
      {
        localHashMap.put(localObject[i], Integer.valueOf(i));
        i += 1;
      }
      this.mColumnNameMap = localHashMap;
    }
    int i = paramString.lastIndexOf('.');
    Object localObject = paramString;
    if (i != -1)
    {
      localObject = new Exception();
      Log.e("Cursor", "requesting column name with table name -- " + paramString, (Throwable)localObject);
      localObject = paramString.substring(i + 1);
    }
    paramString = (Integer)this.mColumnNameMap.get(localObject);
    if (paramString != null) {
      return paramString.intValue();
    }
    return -1;
  }
  
  public String[] getColumnNames()
  {
    return this.mColumns;
  }
  
  public int getCount()
  {
    if (this.mCount == -1) {
      fillWindow(0);
    }
    return this.mCount;
  }
  
  public SQLiteDatabase getDatabase()
  {
    return this.mDatabase;
  }
  
  public boolean onMove(int paramInt1, int paramInt2)
  {
    if ((this.mWindow == null) || (paramInt2 < this.mWindow.getStartPosition()) || (paramInt2 >= this.mWindow.getStartPosition() + this.mWindow.getNumRows())) {
      fillWindow(paramInt2);
    }
    return true;
  }
  
  public void registerDataSetObserver(DataSetObserver paramDataSetObserver)
  {
    super.registerDataSetObserver(paramDataSetObserver);
    if (((Integer.MAX_VALUE != this.mMaxRead) || (Integer.MAX_VALUE != this.mInitialRead)) && (this.mNotificationHandler == null)) {
      queryThreadLock();
    }
    try
    {
      this.mNotificationHandler = new SQLiteCursor.MainThreadNotificationHandler(this);
      if (this.mPendingData)
      {
        notifyDataSetChange();
        this.mPendingData = false;
      }
      return;
    }
    finally
    {
      queryThreadUnlock();
    }
  }
  
  /* Error */
  public boolean requery()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 442	net/sqlcipher/database/SQLiteCursor:isClosed	()Z
    //   4: ifeq +5 -> 9
    //   7: iconst_0
    //   8: ireturn
    //   9: aload_0
    //   10: getfield 64	net/sqlcipher/database/SQLiteCursor:mDatabase	Lnet/sqlcipher/database/SQLiteDatabase;
    //   13: invokevirtual 77	net/sqlcipher/database/SQLiteDatabase:lock	()V
    //   16: aload_0
    //   17: getfield 112	net/sqlcipher/database/SQLiteCursor:mWindow	Lnet/sqlcipher/CursorWindow;
    //   20: ifnull +10 -> 30
    //   23: aload_0
    //   24: getfield 112	net/sqlcipher/database/SQLiteCursor:mWindow	Lnet/sqlcipher/CursorWindow;
    //   27: invokevirtual 166	net/sqlcipher/CursorWindow:clear	()V
    //   30: aload_0
    //   31: iconst_m1
    //   32: putfield 342	net/sqlcipher/database/SQLiteCursor:mPos	I
    //   35: aload_0
    //   36: getfield 66	net/sqlcipher/database/SQLiteCursor:mDriver	Lnet/sqlcipher/database/SQLiteCursorDriver;
    //   39: aload_0
    //   40: invokeinterface 446 2 0
    //   45: aload_0
    //   46: iconst_m1
    //   47: putfield 42	net/sqlcipher/database/SQLiteCursor:mCount	I
    //   50: aload_0
    //   51: aload_0
    //   52: getfield 49	net/sqlcipher/database/SQLiteCursor:mCursorState	I
    //   55: iconst_1
    //   56: iadd
    //   57: putfield 49	net/sqlcipher/database/SQLiteCursor:mCursorState	I
    //   60: aload_0
    //   61: invokespecial 163	net/sqlcipher/database/SQLiteCursor:queryThreadLock	()V
    //   64: aload_0
    //   65: getfield 72	net/sqlcipher/database/SQLiteCursor:mQuery	Lnet/sqlcipher/database/SQLiteQuery;
    //   68: invokevirtual 448	net/sqlcipher/database/SQLiteQuery:requery	()V
    //   71: aload_0
    //   72: invokespecial 169	net/sqlcipher/database/SQLiteCursor:queryThreadUnlock	()V
    //   75: aload_0
    //   76: getfield 64	net/sqlcipher/database/SQLiteCursor:mDatabase	Lnet/sqlcipher/database/SQLiteDatabase;
    //   79: invokevirtual 103	net/sqlcipher/database/SQLiteDatabase:unlock	()V
    //   82: aload_0
    //   83: invokespecial 449	net/sqlcipher/AbstractWindowedCursor:requery	()Z
    //   86: ireturn
    //   87: astore_1
    //   88: aload_0
    //   89: invokespecial 169	net/sqlcipher/database/SQLiteCursor:queryThreadUnlock	()V
    //   92: aload_1
    //   93: athrow
    //   94: astore_1
    //   95: aload_0
    //   96: getfield 64	net/sqlcipher/database/SQLiteCursor:mDatabase	Lnet/sqlcipher/database/SQLiteDatabase;
    //   99: invokevirtual 103	net/sqlcipher/database/SQLiteDatabase:unlock	()V
    //   102: aload_1
    //   103: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	104	0	this	SQLiteCursor
    //   87	6	1	localObject1	Object
    //   94	9	1	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   64	71	87	finally
    //   16	30	94	finally
    //   30	64	94	finally
    //   71	75	94	finally
    //   88	94	94	finally
  }
  
  public void setLoadStyle(int paramInt1, int paramInt2)
  {
    this.mMaxRead = paramInt2;
    this.mInitialRead = paramInt1;
    this.mLock = new ReentrantLock(true);
  }
  
  public void setSelectionArguments(String[] paramArrayOfString)
  {
    this.mDriver.setBindArguments(paramArrayOfString);
  }
  
  public void setWindow(net.sqlcipher.CursorWindow paramCursorWindow)
  {
    if (this.mWindow != null)
    {
      this.mCursorState += 1;
      queryThreadLock();
    }
    try
    {
      this.mWindow.close();
      queryThreadUnlock();
      this.mCount = -1;
      this.mWindow = paramCursorWindow;
      return;
    }
    finally
    {
      queryThreadUnlock();
    }
  }
  
  public boolean supportsUpdates()
  {
    return !TextUtils.isEmpty(this.mEditTable);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\net\sqlcipher\database\SQLiteCursor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */