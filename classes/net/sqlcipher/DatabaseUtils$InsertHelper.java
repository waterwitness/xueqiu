package net.sqlcipher;

import android.content.ContentValues;
import android.util.Log;
import java.util.HashMap;
import net.sqlcipher.database.SQLiteDatabase;
import net.sqlcipher.database.SQLiteStatement;

public class DatabaseUtils$InsertHelper
{
  public static final int TABLE_INFO_PRAGMA_COLUMNNAME_INDEX = 1;
  public static final int TABLE_INFO_PRAGMA_DEFAULT_INDEX = 4;
  private HashMap<String, Integer> mColumns;
  private final SQLiteDatabase mDb;
  private String mInsertSQL = null;
  private SQLiteStatement mInsertStatement = null;
  private SQLiteStatement mPreparedStatement = null;
  private SQLiteStatement mReplaceStatement = null;
  private final String mTableName;
  
  public DatabaseUtils$InsertHelper(SQLiteDatabase paramSQLiteDatabase, String paramString)
  {
    this.mDb = paramSQLiteDatabase;
    this.mTableName = paramString;
  }
  
  private void buildSQL()
  {
    Object localObject1 = null;
    StringBuilder localStringBuilder1 = new StringBuilder(128);
    localStringBuilder1.append("INSERT INTO ");
    localStringBuilder1.append(this.mTableName);
    localStringBuilder1.append(" (");
    StringBuilder localStringBuilder2 = new StringBuilder(128);
    localStringBuilder2.append("VALUES (");
    Cursor localCursor;
    for (;;)
    {
      try
      {
        localCursor = this.mDb.rawQuery("PRAGMA table_info(" + this.mTableName + ")", null);
        localObject1 = localCursor;
        this.mColumns = new HashMap(localCursor.getCount());
        int i = 1;
        localObject1 = localCursor;
        if (!localCursor.moveToNext()) {
          break;
        }
        localObject1 = localCursor;
        String str1 = localCursor.getString(1);
        localObject1 = localCursor;
        String str3 = localCursor.getString(4);
        localObject1 = localCursor;
        this.mColumns.put(str1, Integer.valueOf(i));
        localObject1 = localCursor;
        localStringBuilder1.append("'");
        localObject1 = localCursor;
        localStringBuilder1.append(str1);
        localObject1 = localCursor;
        localStringBuilder1.append("'");
        if (str3 == null)
        {
          localObject1 = localCursor;
          localStringBuilder2.append("?");
          localObject1 = localCursor;
          if (i == localCursor.getCount())
          {
            str1 = ") ";
            localObject1 = localCursor;
            localStringBuilder1.append(str1);
            localObject1 = localCursor;
            if (i != localCursor.getCount()) {
              break label318;
            }
            str1 = ");";
            localObject1 = localCursor;
            localStringBuilder2.append(str1);
            i += 1;
          }
        }
        else
        {
          localObject1 = localCursor;
          localStringBuilder2.append("COALESCE(?, ");
          localObject1 = localCursor;
          localStringBuilder2.append(str3);
          localObject1 = localCursor;
          localStringBuilder2.append(")");
          continue;
        }
        str2 = ", ";
      }
      finally
      {
        if (localObject1 != null) {
          ((Cursor)localObject1).close();
        }
      }
      continue;
      label318:
      String str2 = ", ";
    }
    if (localCursor != null) {
      localCursor.close();
    }
    localStringBuilder1.append(localStringBuilder2);
    this.mInsertSQL = localStringBuilder1.toString();
  }
  
  private SQLiteStatement getStatement(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      if (this.mReplaceStatement == null)
      {
        if (this.mInsertSQL == null) {
          buildSQL();
        }
        String str = "INSERT OR REPLACE" + this.mInsertSQL.substring(6);
        this.mReplaceStatement = this.mDb.compileStatement(str);
      }
      return this.mReplaceStatement;
    }
    if (this.mInsertStatement == null)
    {
      if (this.mInsertSQL == null) {
        buildSQL();
      }
      this.mInsertStatement = this.mDb.compileStatement(this.mInsertSQL);
    }
    return this.mInsertStatement;
  }
  
  /* Error */
  private long insertInternal(ContentValues paramContentValues, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: iload_2
    //   4: invokespecial 140	net/sqlcipher/DatabaseUtils$InsertHelper:getStatement	(Z)Lnet/sqlcipher/database/SQLiteStatement;
    //   7: astore_3
    //   8: aload_3
    //   9: invokevirtual 145	net/sqlcipher/database/SQLiteStatement:clearBindings	()V
    //   12: aload_1
    //   13: invokevirtual 151	android/content/ContentValues:valueSet	()Ljava/util/Set;
    //   16: invokeinterface 157 1 0
    //   21: astore 4
    //   23: aload 4
    //   25: invokeinterface 162 1 0
    //   30: ifeq +89 -> 119
    //   33: aload 4
    //   35: invokeinterface 166 1 0
    //   40: checkcast 168	java/util/Map$Entry
    //   43: astore 5
    //   45: aload_3
    //   46: aload_0
    //   47: aload 5
    //   49: invokeinterface 171 1 0
    //   54: checkcast 127	java/lang/String
    //   57: invokevirtual 175	net/sqlcipher/DatabaseUtils$InsertHelper:getColumnIndex	(Ljava/lang/String;)I
    //   60: aload 5
    //   62: invokeinterface 178 1 0
    //   67: invokestatic 184	net/sqlcipher/DatabaseUtils:bindObjectToProgram	(Lnet/sqlcipher/database/SQLiteProgram;ILjava/lang/Object;)V
    //   70: goto -47 -> 23
    //   73: astore_3
    //   74: ldc -70
    //   76: new 42	java/lang/StringBuilder
    //   79: dup
    //   80: ldc -68
    //   82: invokespecial 60	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   85: aload_1
    //   86: invokevirtual 191	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   89: ldc -63
    //   91: invokevirtual 51	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   94: aload_0
    //   95: getfield 38	net/sqlcipher/DatabaseUtils$InsertHelper:mTableName	Ljava/lang/String;
    //   98: invokevirtual 51	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   101: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   104: aload_3
    //   105: invokestatic 199	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   108: pop
    //   109: ldc2_w 200
    //   112: lstore 6
    //   114: aload_0
    //   115: monitorexit
    //   116: lload 6
    //   118: lreturn
    //   119: aload_3
    //   120: invokevirtual 205	net/sqlcipher/database/SQLiteStatement:executeInsert	()J
    //   123: lstore 6
    //   125: goto -11 -> 114
    //   128: astore_1
    //   129: aload_0
    //   130: monitorexit
    //   131: aload_1
    //   132: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	133	0	this	InsertHelper
    //   0	133	1	paramContentValues	ContentValues
    //   0	133	2	paramBoolean	boolean
    //   7	39	3	localSQLiteStatement	SQLiteStatement
    //   73	47	3	localSQLException	SQLException
    //   21	13	4	localIterator	java.util.Iterator
    //   43	18	5	localEntry	java.util.Map.Entry
    //   112	12	6	l	long
    // Exception table:
    //   from	to	target	type
    //   2	23	73	net/sqlcipher/SQLException
    //   23	70	73	net/sqlcipher/SQLException
    //   119	125	73	net/sqlcipher/SQLException
    //   2	23	128	finally
    //   23	70	128	finally
    //   74	109	128	finally
    //   119	125	128	finally
  }
  
  public void bind(int paramInt, double paramDouble)
  {
    this.mPreparedStatement.bindDouble(paramInt, paramDouble);
  }
  
  public void bind(int paramInt, float paramFloat)
  {
    this.mPreparedStatement.bindDouble(paramInt, paramFloat);
  }
  
  public void bind(int paramInt1, int paramInt2)
  {
    this.mPreparedStatement.bindLong(paramInt1, paramInt2);
  }
  
  public void bind(int paramInt, long paramLong)
  {
    this.mPreparedStatement.bindLong(paramInt, paramLong);
  }
  
  public void bind(int paramInt, String paramString)
  {
    if (paramString == null)
    {
      this.mPreparedStatement.bindNull(paramInt);
      return;
    }
    this.mPreparedStatement.bindString(paramInt, paramString);
  }
  
  public void bind(int paramInt, boolean paramBoolean)
  {
    SQLiteStatement localSQLiteStatement = this.mPreparedStatement;
    if (paramBoolean) {}
    for (long l = 1L;; l = 0L)
    {
      localSQLiteStatement.bindLong(paramInt, l);
      return;
    }
  }
  
  public void bind(int paramInt, byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null)
    {
      this.mPreparedStatement.bindNull(paramInt);
      return;
    }
    this.mPreparedStatement.bindBlob(paramInt, paramArrayOfByte);
  }
  
  public void bindNull(int paramInt)
  {
    this.mPreparedStatement.bindNull(paramInt);
  }
  
  public void close()
  {
    if (this.mInsertStatement != null)
    {
      this.mInsertStatement.close();
      this.mInsertStatement = null;
    }
    if (this.mReplaceStatement != null)
    {
      this.mReplaceStatement.close();
      this.mReplaceStatement = null;
    }
    this.mInsertSQL = null;
    this.mColumns = null;
  }
  
  public long execute()
  {
    if (this.mPreparedStatement == null) {
      throw new IllegalStateException("you must prepare this inserter before calling execute");
    }
    try
    {
      long l = this.mPreparedStatement.executeInsert();
      return l;
    }
    catch (SQLException localSQLException)
    {
      Log.e("DatabaseUtils", "Error executing InsertHelper with table " + this.mTableName, localSQLException);
      return -1L;
    }
    finally
    {
      this.mPreparedStatement = null;
    }
  }
  
  public int getColumnIndex(String paramString)
  {
    getStatement(false);
    Integer localInteger = (Integer)this.mColumns.get(paramString);
    if (localInteger == null) {
      throw new IllegalArgumentException("column '" + paramString + "' is invalid");
    }
    return localInteger.intValue();
  }
  
  public long insert(ContentValues paramContentValues)
  {
    return insertInternal(paramContentValues, false);
  }
  
  public void prepareForInsert()
  {
    this.mPreparedStatement = getStatement(false);
    this.mPreparedStatement.clearBindings();
  }
  
  public void prepareForReplace()
  {
    this.mPreparedStatement = getStatement(true);
    this.mPreparedStatement.clearBindings();
  }
  
  public long replace(ContentValues paramContentValues)
  {
    return insertInternal(paramContentValues, true);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\net\sqlcipher\DatabaseUtils$InsertHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */