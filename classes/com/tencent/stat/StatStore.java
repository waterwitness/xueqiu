package com.tencent.stat;

import android.content.ContentValues;
import android.content.Context;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.tencent.stat.common.StatCommonHelper;
import com.tencent.stat.common.StatLogger;
import com.tencent.stat.common.User;
import com.tencent.stat.event.Event;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class StatStore
{
  private static StatStore instance = null;
  private static StatLogger logger = ;
  Handler handler = null;
  private e helper;
  private HashMap<String, String> kvMap = new HashMap();
  volatile int numStoredEvents = 0;
  User user = null;
  
  private StatStore(Context paramContext)
  {
    try
    {
      HandlerThread localHandlerThread = new HandlerThread("StatStore");
      localHandlerThread.start();
      logger.w("Launch store thread:" + localHandlerThread);
      this.handler = new Handler(localHandlerThread.getLooper());
      paramContext = paramContext.getApplicationContext();
      this.helper = new e(paramContext);
      this.helper.getWritableDatabase();
      this.helper.getReadableDatabase();
      getUser(paramContext);
      loadConfig();
      loadKeyValues();
      this.handler.post(new Runnable()
      {
        public final void run()
        {
          StatStore.this.loadUnsentEventCount();
        }
      });
      return;
    }
    catch (Throwable paramContext)
    {
      logger.e(paramContext);
    }
  }
  
  private void directDeleteEvents(List<f> paramList)
  {
    logger.i("Delete " + paramList.size() + " sent events in thread:" + Thread.currentThread());
    try
    {
      this.helper.getWritableDatabase().beginTransaction();
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        f localf = (f)paramList.next();
        this.numStoredEvents -= this.helper.getWritableDatabase().delete("events", "event_id = ?", new String[] { Long.toString(localf.a) });
      }
      try
      {
        this.helper.getWritableDatabase().endTransaction();
        throw paramList;
      }
      catch (SQLiteException localSQLiteException)
      {
        for (;;)
        {
          logger.e(localSQLiteException);
        }
      }
    }
    catch (SQLiteException paramList)
    {
      paramList = paramList;
      logger.e(paramList);
      try
      {
        this.helper.getWritableDatabase().endTransaction();
        return;
      }
      catch (SQLiteException paramList)
      {
        logger.e(paramList);
        return;
      }
      this.helper.getWritableDatabase().setTransactionSuccessful();
      this.numStoredEvents = ((int)DatabaseUtils.queryNumEntries(this.helper.getReadableDatabase(), "events"));
      try
      {
        this.helper.getWritableDatabase().endTransaction();
        return;
      }
      catch (SQLiteException paramList)
      {
        logger.e(paramList);
        return;
      }
    }
    finally {}
  }
  
  /* Error */
  private void directUpdateEvents(List<f> paramList, int paramInt)
  {
    // Byte code:
    //   0: getstatic 45	com/tencent/stat/StatStore:logger	Lcom/tencent/stat/common/StatLogger;
    //   3: new 77	java/lang/StringBuilder
    //   6: dup
    //   7: ldc -5
    //   9: invokespecial 80	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   12: aload_1
    //   13: invokeinterface 175 1 0
    //   18: invokevirtual 178	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   21: ldc -3
    //   23: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   26: iload_2
    //   27: invokevirtual 178	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   30: ldc -1
    //   32: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   35: invokestatic 189	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   38: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   41: invokevirtual 88	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   44: invokevirtual 192	com/tencent/stat/common/StatLogger:i	(Ljava/lang/Object;)V
    //   47: new 257	android/content/ContentValues
    //   50: dup
    //   51: invokespecial 258	android/content/ContentValues:<init>	()V
    //   54: astore_3
    //   55: aload_3
    //   56: ldc_w 260
    //   59: iload_2
    //   60: invokestatic 265	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   63: invokevirtual 269	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   66: aload_0
    //   67: getfield 115	com/tencent/stat/StatStore:helper	Lcom/tencent/stat/e;
    //   70: invokevirtual 119	com/tencent/stat/e:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   73: invokevirtual 197	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   76: aload_1
    //   77: invokeinterface 201 1 0
    //   82: astore_1
    //   83: aload_1
    //   84: invokeinterface 207 1 0
    //   89: ifeq +220 -> 309
    //   92: aload_1
    //   93: invokeinterface 211 1 0
    //   98: checkcast 213	com/tencent/stat/f
    //   101: astore 4
    //   103: aload 4
    //   105: getfield 272	com/tencent/stat/f:d	I
    //   108: iconst_1
    //   109: iadd
    //   110: invokestatic 277	com/tencent/stat/StatConfig:getMaxSendRetryCount	()I
    //   113: if_icmple +64 -> 177
    //   116: aload_0
    //   117: aload_0
    //   118: getfield 58	com/tencent/stat/StatStore:numStoredEvents	I
    //   121: aload_0
    //   122: getfield 115	com/tencent/stat/StatStore:helper	Lcom/tencent/stat/e;
    //   125: invokevirtual 119	com/tencent/stat/e:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   128: ldc -41
    //   130: ldc_w 279
    //   133: iconst_1
    //   134: anewarray 219	java/lang/String
    //   137: dup
    //   138: iconst_0
    //   139: aload 4
    //   141: getfield 223	com/tencent/stat/f:a	J
    //   144: invokestatic 228	java/lang/Long:toString	(J)Ljava/lang/String;
    //   147: aastore
    //   148: invokevirtual 232	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   151: isub
    //   152: putfield 58	com/tencent/stat/StatStore:numStoredEvents	I
    //   155: goto -72 -> 83
    //   158: astore_1
    //   159: getstatic 45	com/tencent/stat/StatStore:logger	Lcom/tencent/stat/common/StatLogger;
    //   162: aload_1
    //   163: invokevirtual 235	com/tencent/stat/common/StatLogger:e	(Ljava/lang/Exception;)V
    //   166: aload_0
    //   167: getfield 115	com/tencent/stat/StatStore:helper	Lcom/tencent/stat/e;
    //   170: invokevirtual 119	com/tencent/stat/e:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   173: invokevirtual 238	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   176: return
    //   177: aload_3
    //   178: ldc_w 281
    //   181: aload 4
    //   183: getfield 272	com/tencent/stat/f:d	I
    //   186: iconst_1
    //   187: iadd
    //   188: invokestatic 285	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   191: invokevirtual 288	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   194: getstatic 45	com/tencent/stat/StatStore:logger	Lcom/tencent/stat/common/StatLogger;
    //   197: new 77	java/lang/StringBuilder
    //   200: dup
    //   201: ldc_w 290
    //   204: invokespecial 80	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   207: aload 4
    //   209: getfield 223	com/tencent/stat/f:a	J
    //   212: invokevirtual 293	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   215: ldc_w 295
    //   218: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   221: aload_3
    //   222: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   225: invokevirtual 88	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   228: invokevirtual 192	com/tencent/stat/common/StatLogger:i	(Ljava/lang/Object;)V
    //   231: aload_0
    //   232: getfield 115	com/tencent/stat/StatStore:helper	Lcom/tencent/stat/e;
    //   235: invokevirtual 119	com/tencent/stat/e:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   238: ldc -41
    //   240: aload_3
    //   241: ldc_w 279
    //   244: iconst_1
    //   245: anewarray 219	java/lang/String
    //   248: dup
    //   249: iconst_0
    //   250: aload 4
    //   252: getfield 223	com/tencent/stat/f:a	J
    //   255: invokestatic 228	java/lang/Long:toString	(J)Ljava/lang/String;
    //   258: aastore
    //   259: invokevirtual 299	android/database/sqlite/SQLiteDatabase:update	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   262: istore_2
    //   263: iload_2
    //   264: ifgt -181 -> 83
    //   267: getstatic 45	com/tencent/stat/StatStore:logger	Lcom/tencent/stat/common/StatLogger;
    //   270: new 77	java/lang/StringBuilder
    //   273: dup
    //   274: ldc_w 301
    //   277: invokespecial 80	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   280: iload_2
    //   281: invokestatic 265	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   284: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   287: invokevirtual 88	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   290: invokevirtual 142	com/tencent/stat/common/StatLogger:e	(Ljava/lang/Object;)V
    //   293: goto -210 -> 83
    //   296: astore_1
    //   297: aload_0
    //   298: getfield 115	com/tencent/stat/StatStore:helper	Lcom/tencent/stat/e;
    //   301: invokevirtual 119	com/tencent/stat/e:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   304: invokevirtual 238	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   307: aload_1
    //   308: athrow
    //   309: aload_0
    //   310: getfield 115	com/tencent/stat/StatStore:helper	Lcom/tencent/stat/e;
    //   313: invokevirtual 119	com/tencent/stat/e:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   316: invokevirtual 241	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   319: aload_0
    //   320: aload_0
    //   321: getfield 115	com/tencent/stat/StatStore:helper	Lcom/tencent/stat/e;
    //   324: invokevirtual 122	com/tencent/stat/e:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   327: ldc -41
    //   329: invokestatic 247	android/database/DatabaseUtils:queryNumEntries	(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    //   332: l2i
    //   333: putfield 58	com/tencent/stat/StatStore:numStoredEvents	I
    //   336: aload_0
    //   337: getfield 115	com/tencent/stat/StatStore:helper	Lcom/tencent/stat/e;
    //   340: invokevirtual 119	com/tencent/stat/e:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   343: invokevirtual 238	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   346: return
    //   347: astore_1
    //   348: getstatic 45	com/tencent/stat/StatStore:logger	Lcom/tencent/stat/common/StatLogger;
    //   351: aload_1
    //   352: invokevirtual 235	com/tencent/stat/common/StatLogger:e	(Ljava/lang/Exception;)V
    //   355: return
    //   356: astore_1
    //   357: getstatic 45	com/tencent/stat/StatStore:logger	Lcom/tencent/stat/common/StatLogger;
    //   360: aload_1
    //   361: invokevirtual 235	com/tencent/stat/common/StatLogger:e	(Ljava/lang/Exception;)V
    //   364: return
    //   365: astore_3
    //   366: getstatic 45	com/tencent/stat/StatStore:logger	Lcom/tencent/stat/common/StatLogger;
    //   369: aload_3
    //   370: invokevirtual 235	com/tencent/stat/common/StatLogger:e	(Ljava/lang/Exception;)V
    //   373: goto -66 -> 307
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	376	0	this	StatStore
    //   0	376	1	paramList	List<f>
    //   0	376	2	paramInt	int
    //   54	187	3	localContentValues	ContentValues
    //   365	5	3	localSQLiteException	SQLiteException
    //   101	150	4	localf	f
    // Exception table:
    //   from	to	target	type
    //   47	83	158	android/database/sqlite/SQLiteException
    //   83	155	158	android/database/sqlite/SQLiteException
    //   177	263	158	android/database/sqlite/SQLiteException
    //   267	293	158	android/database/sqlite/SQLiteException
    //   309	336	158	android/database/sqlite/SQLiteException
    //   47	83	296	finally
    //   83	155	296	finally
    //   159	166	296	finally
    //   177	263	296	finally
    //   267	293	296	finally
    //   309	336	296	finally
    //   336	346	347	android/database/sqlite/SQLiteException
    //   166	176	356	android/database/sqlite/SQLiteException
    //   297	307	365	android/database/sqlite/SQLiteException
  }
  
  public static StatStore getInstance()
  {
    return instance;
  }
  
  public static StatStore getInstance(Context paramContext)
  {
    if (instance == null) {
      instance = new StatStore(paramContext);
    }
    return instance;
  }
  
  /* Error */
  private void loadKeyValues()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 115	com/tencent/stat/StatStore:helper	Lcom/tencent/stat/e;
    //   4: invokevirtual 122	com/tencent/stat/e:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   7: ldc_w 308
    //   10: aconst_null
    //   11: aconst_null
    //   12: aconst_null
    //   13: aconst_null
    //   14: aconst_null
    //   15: aconst_null
    //   16: invokevirtual 312	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   19: astore_2
    //   20: aload_2
    //   21: astore_1
    //   22: aload_2
    //   23: invokeinterface 317 1 0
    //   28: ifeq +51 -> 79
    //   31: aload_2
    //   32: astore_1
    //   33: aload_0
    //   34: getfield 65	com/tencent/stat/StatStore:kvMap	Ljava/util/HashMap;
    //   37: aload_2
    //   38: iconst_0
    //   39: invokeinterface 320 2 0
    //   44: aload_2
    //   45: iconst_1
    //   46: invokeinterface 320 2 0
    //   51: invokevirtual 323	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   54: pop
    //   55: goto -35 -> 20
    //   58: astore_3
    //   59: aload_2
    //   60: astore_1
    //   61: getstatic 45	com/tencent/stat/StatStore:logger	Lcom/tencent/stat/common/StatLogger;
    //   64: aload_3
    //   65: invokevirtual 235	com/tencent/stat/common/StatLogger:e	(Ljava/lang/Exception;)V
    //   68: aload_2
    //   69: ifnull +9 -> 78
    //   72: aload_2
    //   73: invokeinterface 326 1 0
    //   78: return
    //   79: aload_2
    //   80: ifnull -2 -> 78
    //   83: aload_2
    //   84: invokeinterface 326 1 0
    //   89: return
    //   90: astore_2
    //   91: aconst_null
    //   92: astore_1
    //   93: aload_1
    //   94: ifnull +9 -> 103
    //   97: aload_1
    //   98: invokeinterface 326 1 0
    //   103: aload_2
    //   104: athrow
    //   105: astore_2
    //   106: goto -13 -> 93
    //   109: astore_3
    //   110: aconst_null
    //   111: astore_2
    //   112: goto -53 -> 59
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	115	0	this	StatStore
    //   21	77	1	localCursor1	android.database.Cursor
    //   19	65	2	localCursor2	android.database.Cursor
    //   90	14	2	localObject1	Object
    //   105	1	2	localObject2	Object
    //   111	1	2	localObject3	Object
    //   58	7	3	localSQLiteException1	SQLiteException
    //   109	1	3	localSQLiteException2	SQLiteException
    // Exception table:
    //   from	to	target	type
    //   22	31	58	android/database/sqlite/SQLiteException
    //   33	55	58	android/database/sqlite/SQLiteException
    //   0	20	90	finally
    //   22	31	105	finally
    //   33	55	105	finally
    //   61	68	105	finally
    //   0	20	109	android/database/sqlite/SQLiteException
  }
  
  private void loadUnsentEventCount()
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("status", Integer.valueOf(1));
    this.helper.getWritableDatabase().update("events", localContentValues, "status=?", new String[] { Long.toString(2L) });
    this.numStoredEvents = ((int)DatabaseUtils.queryNumEntries(this.helper.getReadableDatabase(), "events"));
    logger.i("Total " + this.numStoredEvents + " unsent events.");
  }
  
  /* Error */
  private void peekEvents(List<f> paramList, int paramInt)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_0
    //   4: getfield 115	com/tencent/stat/StatStore:helper	Lcom/tencent/stat/e;
    //   7: invokevirtual 122	com/tencent/stat/e:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   10: astore_3
    //   11: iconst_1
    //   12: invokestatic 265	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   15: astore 5
    //   17: iload_2
    //   18: invokestatic 265	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   21: astore 6
    //   23: aload_3
    //   24: ldc -41
    //   26: aconst_null
    //   27: ldc_w 328
    //   30: iconst_1
    //   31: anewarray 219	java/lang/String
    //   34: dup
    //   35: iconst_0
    //   36: aload 5
    //   38: aastore
    //   39: aconst_null
    //   40: aconst_null
    //   41: ldc_w 336
    //   44: aload 6
    //   46: invokevirtual 339	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   49: astore_3
    //   50: aload_3
    //   51: invokeinterface 317 1 0
    //   56: ifeq +76 -> 132
    //   59: aload_1
    //   60: new 213	com/tencent/stat/f
    //   63: dup
    //   64: aload_3
    //   65: iconst_0
    //   66: invokeinterface 343 2 0
    //   71: aload_3
    //   72: iconst_1
    //   73: invokeinterface 320 2 0
    //   78: invokestatic 347	com/tencent/stat/common/StatCommonHelper:decode	(Ljava/lang/String;)Ljava/lang/String;
    //   81: aload_3
    //   82: iconst_2
    //   83: invokeinterface 351 2 0
    //   88: aload_3
    //   89: iconst_3
    //   90: invokeinterface 351 2 0
    //   95: invokespecial 354	com/tencent/stat/f:<init>	(JLjava/lang/String;II)V
    //   98: invokeinterface 358 2 0
    //   103: pop
    //   104: goto -54 -> 50
    //   107: astore 4
    //   109: aload_3
    //   110: astore_1
    //   111: aload 4
    //   113: astore_3
    //   114: getstatic 45	com/tencent/stat/StatStore:logger	Lcom/tencent/stat/common/StatLogger;
    //   117: aload_3
    //   118: invokevirtual 235	com/tencent/stat/common/StatLogger:e	(Ljava/lang/Exception;)V
    //   121: aload_1
    //   122: ifnull +9 -> 131
    //   125: aload_1
    //   126: invokeinterface 326 1 0
    //   131: return
    //   132: aload_3
    //   133: ifnull -2 -> 131
    //   136: aload_3
    //   137: invokeinterface 326 1 0
    //   142: return
    //   143: astore_1
    //   144: aload 4
    //   146: astore_3
    //   147: aload_3
    //   148: ifnull +9 -> 157
    //   151: aload_3
    //   152: invokeinterface 326 1 0
    //   157: aload_1
    //   158: athrow
    //   159: astore_1
    //   160: goto -13 -> 147
    //   163: astore 4
    //   165: aload_1
    //   166: astore_3
    //   167: aload 4
    //   169: astore_1
    //   170: goto -23 -> 147
    //   173: astore_3
    //   174: aconst_null
    //   175: astore_1
    //   176: goto -62 -> 114
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	179	0	this	StatStore
    //   0	179	1	paramList	List<f>
    //   0	179	2	paramInt	int
    //   10	157	3	localObject1	Object
    //   173	1	3	localSQLiteException1	SQLiteException
    //   1	1	4	localObject2	Object
    //   107	38	4	localSQLiteException2	SQLiteException
    //   163	5	4	localObject3	Object
    //   15	22	5	str1	String
    //   21	24	6	str2	String
    // Exception table:
    //   from	to	target	type
    //   50	104	107	android/database/sqlite/SQLiteException
    //   3	50	143	finally
    //   50	104	159	finally
    //   114	121	163	finally
    //   3	50	173	android/database/sqlite/SQLiteException
  }
  
  void deleteEvents(final List<f> paramList)
  {
    try
    {
      if (Thread.currentThread().getId() == this.handler.getLooper().getThread().getId())
      {
        directDeleteEvents(paramList);
        return;
      }
      this.handler.post(new Runnable()
      {
        public final void run()
        {
          StatStore.this.directDeleteEvents(paramList);
        }
      });
      return;
    }
    catch (SQLiteException paramList)
    {
      logger.e(paramList);
    }
  }
  
  void directStoreEvent(Event paramEvent, b paramb)
  {
    if (StatConfig.getMaxStoreEventCount() <= 0) {}
    do
    {
      return;
      if (this.numStoredEvents > StatConfig.getMaxStoreEventCount())
      {
        logger.warn("Too many events stored in db.");
        this.numStoredEvents -= this.helper.getWritableDatabase().delete("events", "event_id in (select event_id from events where timestamp in (select min(timestamp) from events) limit 1)", null);
      }
      ContentValues localContentValues = new ContentValues();
      String str = StatCommonHelper.encode(paramEvent.toJsonString());
      localContentValues.put("content", str);
      localContentValues.put("send_count", "0");
      localContentValues.put("status", Integer.toString(1));
      localContentValues.put("timestamp", Long.valueOf(paramEvent.getTimestamp()));
      if (this.helper.getWritableDatabase().insert("events", null, localContentValues) == -1L)
      {
        logger.error("Failed to store event:" + str);
        return;
      }
      this.numStoredEvents += 1;
    } while (paramb == null);
    paramb.a();
  }
  
  public int getNumStoredEvents()
  {
    return this.numStoredEvents;
  }
  
  /* Error */
  public User getUser(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 60	com/tencent/stat/StatStore:user	Lcom/tencent/stat/common/User;
    //   4: ifnull +8 -> 12
    //   7: aload_0
    //   8: getfield 60	com/tencent/stat/StatStore:user	Lcom/tencent/stat/common/User;
    //   11: areturn
    //   12: aload_0
    //   13: getfield 115	com/tencent/stat/StatStore:helper	Lcom/tencent/stat/e;
    //   16: invokevirtual 122	com/tencent/stat/e:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   19: ldc_w 423
    //   22: aconst_null
    //   23: aconst_null
    //   24: aconst_null
    //   25: aconst_null
    //   26: aconst_null
    //   27: aconst_null
    //   28: aconst_null
    //   29: invokevirtual 339	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   32: astore_3
    //   33: iconst_0
    //   34: istore 9
    //   36: aload_3
    //   37: invokeinterface 317 1 0
    //   42: ifeq +359 -> 401
    //   45: aload_3
    //   46: iconst_0
    //   47: invokeinterface 320 2 0
    //   52: astore 8
    //   54: aload 8
    //   56: invokestatic 347	com/tencent/stat/common/StatCommonHelper:decode	(Ljava/lang/String;)Ljava/lang/String;
    //   59: astore 4
    //   61: aload_3
    //   62: iconst_1
    //   63: invokeinterface 351 2 0
    //   68: istore 12
    //   70: aload_3
    //   71: iconst_2
    //   72: invokeinterface 320 2 0
    //   77: astore_2
    //   78: aload_3
    //   79: iconst_3
    //   80: invokeinterface 343 2 0
    //   85: lstore 13
    //   87: invokestatic 428	java/lang/System:currentTimeMillis	()J
    //   90: ldc2_w 429
    //   93: ldiv
    //   94: lstore 15
    //   96: iload 12
    //   98: iconst_1
    //   99: if_icmpeq +658 -> 757
    //   102: lload 13
    //   104: ldc2_w 429
    //   107: lmul
    //   108: invokestatic 433	com/tencent/stat/common/StatCommonHelper:getDateFormat	(J)Ljava/lang/String;
    //   111: ldc2_w 429
    //   114: lload 15
    //   116: lmul
    //   117: invokestatic 433	com/tencent/stat/common/StatCommonHelper:getDateFormat	(J)Ljava/lang/String;
    //   120: invokevirtual 436	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   123: ifne +634 -> 757
    //   126: iconst_1
    //   127: istore 9
    //   129: aload_2
    //   130: aload_1
    //   131: invokestatic 440	com/tencent/stat/common/StatCommonHelper:getAppVersion	(Landroid/content/Context;)Ljava/lang/String;
    //   134: invokevirtual 436	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   137: ifne +613 -> 750
    //   140: iload 9
    //   142: iconst_2
    //   143: ior
    //   144: istore 10
    //   146: aload 4
    //   148: ldc_w 442
    //   151: invokevirtual 446	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   154: astore 6
    //   156: iconst_0
    //   157: istore 11
    //   159: iconst_0
    //   160: istore 9
    //   162: aload 6
    //   164: ifnull +411 -> 575
    //   167: aload 6
    //   169: arraylength
    //   170: ifle +405 -> 575
    //   173: aload 6
    //   175: iconst_0
    //   176: aaload
    //   177: astore_2
    //   178: aload_2
    //   179: ifnull +12 -> 191
    //   182: aload_2
    //   183: invokevirtual 449	java/lang/String:length	()I
    //   186: bipush 11
    //   188: if_icmpge +549 -> 737
    //   191: aload_1
    //   192: invokestatic 452	com/tencent/stat/common/StatCommonHelper:getDeviceID	(Landroid/content/Context;)Ljava/lang/String;
    //   195: astore 5
    //   197: aload 5
    //   199: ifnull +531 -> 730
    //   202: aload 5
    //   204: invokevirtual 449	java/lang/String:length	()I
    //   207: bipush 10
    //   209: if_icmple +521 -> 730
    //   212: iconst_1
    //   213: istore 9
    //   215: aload 5
    //   217: astore_2
    //   218: goto +546 -> 764
    //   221: aload 6
    //   223: ifnull +366 -> 589
    //   226: aload 6
    //   228: arraylength
    //   229: iconst_2
    //   230: if_icmplt +359 -> 589
    //   233: aload 6
    //   235: iconst_1
    //   236: aaload
    //   237: astore 6
    //   239: new 77	java/lang/StringBuilder
    //   242: dup
    //   243: invokespecial 453	java/lang/StringBuilder:<init>	()V
    //   246: aload 4
    //   248: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   251: ldc_w 442
    //   254: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   257: aload 6
    //   259: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   262: invokevirtual 88	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   265: astore 5
    //   267: iload 9
    //   269: istore 11
    //   271: aload_0
    //   272: new 455	com/tencent/stat/common/User
    //   275: dup
    //   276: aload 4
    //   278: aload 6
    //   280: iload 10
    //   282: invokespecial 458	com/tencent/stat/common/User:<init>	(Ljava/lang/String;Ljava/lang/String;I)V
    //   285: putfield 60	com/tencent/stat/StatStore:user	Lcom/tencent/stat/common/User;
    //   288: new 257	android/content/ContentValues
    //   291: dup
    //   292: invokespecial 258	android/content/ContentValues:<init>	()V
    //   295: astore_2
    //   296: aload_2
    //   297: ldc_w 460
    //   300: aload 5
    //   302: invokestatic 391	com/tencent/stat/common/StatCommonHelper:encode	(Ljava/lang/String;)Ljava/lang/String;
    //   305: invokevirtual 269	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   308: aload_2
    //   309: ldc_w 462
    //   312: iload 10
    //   314: invokestatic 285	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   317: invokevirtual 288	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   320: aload_2
    //   321: ldc_w 464
    //   324: aload_1
    //   325: invokestatic 440	com/tencent/stat/common/StatCommonHelper:getAppVersion	(Landroid/content/Context;)Ljava/lang/String;
    //   328: invokevirtual 269	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   331: aload_2
    //   332: ldc_w 466
    //   335: lload 15
    //   337: invokestatic 403	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   340: invokevirtual 406	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   343: iload 11
    //   345: ifeq +30 -> 375
    //   348: aload_0
    //   349: getfield 115	com/tencent/stat/StatStore:helper	Lcom/tencent/stat/e;
    //   352: invokevirtual 119	com/tencent/stat/e:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   355: ldc_w 423
    //   358: aload_2
    //   359: ldc_w 468
    //   362: iconst_1
    //   363: anewarray 219	java/lang/String
    //   366: dup
    //   367: iconst_0
    //   368: aload 8
    //   370: aastore
    //   371: invokevirtual 299	android/database/sqlite/SQLiteDatabase:update	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   374: pop
    //   375: iload 10
    //   377: iload 12
    //   379: if_icmpeq +398 -> 777
    //   382: aload_0
    //   383: getfield 115	com/tencent/stat/StatStore:helper	Lcom/tencent/stat/e;
    //   386: invokevirtual 119	com/tencent/stat/e:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   389: ldc_w 423
    //   392: aconst_null
    //   393: aload_2
    //   394: invokevirtual 471	android/database/sqlite/SQLiteDatabase:replace	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   397: pop2
    //   398: goto +379 -> 777
    //   401: iload 9
    //   403: ifne +157 -> 560
    //   406: aload_1
    //   407: invokestatic 474	com/tencent/stat/common/StatCommonHelper:getUserID	(Landroid/content/Context;)Ljava/lang/String;
    //   410: astore 4
    //   412: aload_1
    //   413: invokestatic 477	com/tencent/stat/common/StatCommonHelper:getMacId	(Landroid/content/Context;)Ljava/lang/String;
    //   416: astore 5
    //   418: aload 5
    //   420: ifnull +304 -> 724
    //   423: aload 5
    //   425: invokevirtual 449	java/lang/String:length	()I
    //   428: ifle +296 -> 724
    //   431: new 77	java/lang/StringBuilder
    //   434: dup
    //   435: invokespecial 453	java/lang/StringBuilder:<init>	()V
    //   438: aload 4
    //   440: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   443: ldc_w 442
    //   446: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   449: aload 5
    //   451: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   454: invokevirtual 88	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   457: astore_2
    //   458: invokestatic 428	java/lang/System:currentTimeMillis	()J
    //   461: ldc2_w 429
    //   464: ldiv
    //   465: lstore 13
    //   467: aload_1
    //   468: invokestatic 440	com/tencent/stat/common/StatCommonHelper:getAppVersion	(Landroid/content/Context;)Ljava/lang/String;
    //   471: astore_1
    //   472: new 257	android/content/ContentValues
    //   475: dup
    //   476: invokespecial 258	android/content/ContentValues:<init>	()V
    //   479: astore 6
    //   481: aload 6
    //   483: ldc_w 460
    //   486: aload_2
    //   487: invokestatic 391	com/tencent/stat/common/StatCommonHelper:encode	(Ljava/lang/String;)Ljava/lang/String;
    //   490: invokevirtual 269	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   493: aload 6
    //   495: ldc_w 462
    //   498: iconst_0
    //   499: invokestatic 285	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   502: invokevirtual 288	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   505: aload 6
    //   507: ldc_w 464
    //   510: aload_1
    //   511: invokevirtual 269	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   514: aload 6
    //   516: ldc_w 466
    //   519: lload 13
    //   521: invokestatic 403	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   524: invokevirtual 406	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   527: aload_0
    //   528: getfield 115	com/tencent/stat/StatStore:helper	Lcom/tencent/stat/e;
    //   531: invokevirtual 119	com/tencent/stat/e:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   534: ldc_w 423
    //   537: aconst_null
    //   538: aload 6
    //   540: invokevirtual 410	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   543: pop2
    //   544: aload_0
    //   545: new 455	com/tencent/stat/common/User
    //   548: dup
    //   549: aload 4
    //   551: aload 5
    //   553: iconst_0
    //   554: invokespecial 458	com/tencent/stat/common/User:<init>	(Ljava/lang/String;Ljava/lang/String;I)V
    //   557: putfield 60	com/tencent/stat/StatStore:user	Lcom/tencent/stat/common/User;
    //   560: aload_3
    //   561: ifnull +9 -> 570
    //   564: aload_3
    //   565: invokeinterface 326 1 0
    //   570: aload_0
    //   571: getfield 60	com/tencent/stat/StatStore:user	Lcom/tencent/stat/common/User;
    //   574: areturn
    //   575: aload_1
    //   576: invokestatic 474	com/tencent/stat/common/StatCommonHelper:getUserID	(Landroid/content/Context;)Ljava/lang/String;
    //   579: astore_2
    //   580: iconst_1
    //   581: istore 9
    //   583: aload_2
    //   584: astore 4
    //   586: goto -365 -> 221
    //   589: aload_1
    //   590: invokestatic 477	com/tencent/stat/common/StatCommonHelper:getMacId	(Landroid/content/Context;)Ljava/lang/String;
    //   593: astore 7
    //   595: iload 9
    //   597: istore 11
    //   599: aload 7
    //   601: astore 6
    //   603: aload_2
    //   604: astore 5
    //   606: aload 7
    //   608: ifnull -337 -> 271
    //   611: iload 9
    //   613: istore 11
    //   615: aload 7
    //   617: astore 6
    //   619: aload_2
    //   620: astore 5
    //   622: aload 7
    //   624: invokevirtual 449	java/lang/String:length	()I
    //   627: ifle -356 -> 271
    //   630: new 77	java/lang/StringBuilder
    //   633: dup
    //   634: invokespecial 453	java/lang/StringBuilder:<init>	()V
    //   637: aload 4
    //   639: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   642: ldc_w 442
    //   645: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   648: aload 7
    //   650: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   653: invokevirtual 88	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   656: astore 5
    //   658: iconst_1
    //   659: istore 11
    //   661: aload 7
    //   663: astore 6
    //   665: goto -394 -> 271
    //   668: astore_2
    //   669: aconst_null
    //   670: astore_1
    //   671: getstatic 45	com/tencent/stat/StatStore:logger	Lcom/tencent/stat/common/StatLogger;
    //   674: aload_2
    //   675: invokevirtual 142	com/tencent/stat/common/StatLogger:e	(Ljava/lang/Object;)V
    //   678: aload_1
    //   679: ifnull -109 -> 570
    //   682: aload_1
    //   683: invokeinterface 326 1 0
    //   688: goto -118 -> 570
    //   691: astore_1
    //   692: aconst_null
    //   693: astore_3
    //   694: aload_3
    //   695: ifnull +9 -> 704
    //   698: aload_3
    //   699: invokeinterface 326 1 0
    //   704: aload_1
    //   705: athrow
    //   706: astore_1
    //   707: goto -13 -> 694
    //   710: astore_2
    //   711: aload_1
    //   712: astore_3
    //   713: aload_2
    //   714: astore_1
    //   715: goto -21 -> 694
    //   718: astore_2
    //   719: aload_3
    //   720: astore_1
    //   721: goto -50 -> 671
    //   724: aload 4
    //   726: astore_2
    //   727: goto -269 -> 458
    //   730: iload 11
    //   732: istore 9
    //   734: goto +30 -> 764
    //   737: aload_2
    //   738: astore 5
    //   740: aload 4
    //   742: astore_2
    //   743: aload 5
    //   745: astore 4
    //   747: goto -526 -> 221
    //   750: iload 9
    //   752: istore 10
    //   754: goto -608 -> 146
    //   757: iload 12
    //   759: istore 9
    //   761: goto -632 -> 129
    //   764: aload_2
    //   765: astore 5
    //   767: aload 4
    //   769: astore_2
    //   770: aload 5
    //   772: astore 4
    //   774: goto -553 -> 221
    //   777: iconst_1
    //   778: istore 9
    //   780: goto -379 -> 401
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	783	0	this	StatStore
    //   0	783	1	paramContext	Context
    //   77	543	2	localObject1	Object
    //   668	7	2	localThrowable1	Throwable
    //   710	4	2	localObject2	Object
    //   718	1	2	localThrowable2	Throwable
    //   726	44	2	localObject3	Object
    //   32	688	3	localObject4	Object
    //   59	714	4	localObject5	Object
    //   195	576	5	localObject6	Object
    //   154	510	6	localObject7	Object
    //   593	69	7	str1	String
    //   52	317	8	str2	String
    //   34	745	9	i	int
    //   144	609	10	j	int
    //   157	574	11	k	int
    //   68	690	12	m	int
    //   85	435	13	l1	long
    //   94	242	15	l2	long
    // Exception table:
    //   from	to	target	type
    //   12	33	668	java/lang/Throwable
    //   12	33	691	finally
    //   36	96	706	finally
    //   102	126	706	finally
    //   129	140	706	finally
    //   146	156	706	finally
    //   167	173	706	finally
    //   182	191	706	finally
    //   191	197	706	finally
    //   202	212	706	finally
    //   226	233	706	finally
    //   239	267	706	finally
    //   271	343	706	finally
    //   348	375	706	finally
    //   382	398	706	finally
    //   406	418	706	finally
    //   423	458	706	finally
    //   458	560	706	finally
    //   575	580	706	finally
    //   589	595	706	finally
    //   622	658	706	finally
    //   671	678	710	finally
    //   36	96	718	java/lang/Throwable
    //   102	126	718	java/lang/Throwable
    //   129	140	718	java/lang/Throwable
    //   146	156	718	java/lang/Throwable
    //   167	173	718	java/lang/Throwable
    //   182	191	718	java/lang/Throwable
    //   191	197	718	java/lang/Throwable
    //   202	212	718	java/lang/Throwable
    //   226	233	718	java/lang/Throwable
    //   239	267	718	java/lang/Throwable
    //   271	343	718	java/lang/Throwable
    //   348	375	718	java/lang/Throwable
    //   382	398	718	java/lang/Throwable
    //   406	418	718	java/lang/Throwable
    //   423	458	718	java/lang/Throwable
    //   458	560	718	java/lang/Throwable
    //   575	580	718	java/lang/Throwable
    //   589	595	718	java/lang/Throwable
    //   622	658	718	java/lang/Throwable
  }
  
  void loadConfig()
  {
    this.handler.post(new Runnable()
    {
      /* Error */
      public final void run()
      {
        // Byte code:
        //   0: aload_0
        //   1: getfield 17	com/tencent/stat/StatStore$6:a	Lcom/tencent/stat/StatStore;
        //   4: invokestatic 27	com/tencent/stat/StatStore:access$300	(Lcom/tencent/stat/StatStore;)Lcom/tencent/stat/e;
        //   7: invokevirtual 33	com/tencent/stat/e:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
        //   10: ldc 35
        //   12: aconst_null
        //   13: aconst_null
        //   14: aconst_null
        //   15: aconst_null
        //   16: aconst_null
        //   17: aconst_null
        //   18: invokevirtual 41	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //   21: astore_2
        //   22: aload_2
        //   23: astore_1
        //   24: aload_2
        //   25: invokeinterface 47 1 0
        //   30: ifeq +132 -> 162
        //   33: aload_2
        //   34: astore_1
        //   35: aload_2
        //   36: iconst_0
        //   37: invokeinterface 51 2 0
        //   42: istore 6
        //   44: aload_2
        //   45: astore_1
        //   46: aload_2
        //   47: iconst_1
        //   48: invokeinterface 55 2 0
        //   53: astore_3
        //   54: aload_2
        //   55: astore_1
        //   56: aload_2
        //   57: iconst_2
        //   58: invokeinterface 55 2 0
        //   63: astore 4
        //   65: aload_2
        //   66: astore_1
        //   67: aload_2
        //   68: iconst_3
        //   69: invokeinterface 51 2 0
        //   74: istore 7
        //   76: aload_2
        //   77: astore_1
        //   78: new 57	com/tencent/stat/a
        //   81: dup
        //   82: iload 6
        //   84: invokespecial 60	com/tencent/stat/a:<init>	(I)V
        //   87: astore 5
        //   89: aload_2
        //   90: astore_1
        //   91: aload 5
        //   93: iload 6
        //   95: putfield 63	com/tencent/stat/a:a	I
        //   98: aload_2
        //   99: astore_1
        //   100: aload 5
        //   102: new 65	org/json/JSONObject
        //   105: dup
        //   106: aload_3
        //   107: invokespecial 68	org/json/JSONObject:<init>	(Ljava/lang/String;)V
        //   110: putfield 72	com/tencent/stat/a:b	Lorg/json/JSONObject;
        //   113: aload_2
        //   114: astore_1
        //   115: aload 5
        //   117: aload 4
        //   119: putfield 76	com/tencent/stat/a:c	Ljava/lang/String;
        //   122: aload_2
        //   123: astore_1
        //   124: aload 5
        //   126: iload 7
        //   128: putfield 79	com/tencent/stat/a:d	I
        //   131: aload_2
        //   132: astore_1
        //   133: aload 5
        //   135: invokestatic 85	com/tencent/stat/StatConfig:setConfig	(Lcom/tencent/stat/a;)V
        //   138: goto -116 -> 22
        //   141: astore_3
        //   142: aload_2
        //   143: astore_1
        //   144: invokestatic 89	com/tencent/stat/StatStore:access$400	()Lcom/tencent/stat/common/StatLogger;
        //   147: aload_3
        //   148: invokevirtual 95	com/tencent/stat/common/StatLogger:e	(Ljava/lang/Exception;)V
        //   151: aload_2
        //   152: ifnull +9 -> 161
        //   155: aload_2
        //   156: invokeinterface 98 1 0
        //   161: return
        //   162: aload_2
        //   163: ifnull -2 -> 161
        //   166: aload_2
        //   167: invokeinterface 98 1 0
        //   172: return
        //   173: astore_2
        //   174: aconst_null
        //   175: astore_1
        //   176: aload_1
        //   177: ifnull +9 -> 186
        //   180: aload_1
        //   181: invokeinterface 98 1 0
        //   186: aload_2
        //   187: athrow
        //   188: astore_2
        //   189: goto -13 -> 176
        //   192: astore_3
        //   193: aconst_null
        //   194: astore_2
        //   195: goto -53 -> 142
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	198	0	this	6
        //   23	158	1	localCursor1	android.database.Cursor
        //   21	146	2	localCursor2	android.database.Cursor
        //   173	14	2	localObject1	Object
        //   188	1	2	localObject2	Object
        //   194	1	2	localObject3	Object
        //   53	54	3	str1	String
        //   141	7	3	localException1	Exception
        //   192	1	3	localException2	Exception
        //   63	55	4	str2	String
        //   87	47	5	locala	a
        //   42	52	6	i	int
        //   74	53	7	j	int
        // Exception table:
        //   from	to	target	type
        //   24	33	141	java/lang/Exception
        //   35	44	141	java/lang/Exception
        //   46	54	141	java/lang/Exception
        //   56	65	141	java/lang/Exception
        //   67	76	141	java/lang/Exception
        //   78	89	141	java/lang/Exception
        //   91	98	141	java/lang/Exception
        //   100	113	141	java/lang/Exception
        //   115	122	141	java/lang/Exception
        //   124	131	141	java/lang/Exception
        //   133	138	141	java/lang/Exception
        //   0	22	173	finally
        //   24	33	188	finally
        //   35	44	188	finally
        //   46	54	188	finally
        //   56	65	188	finally
        //   67	76	188	finally
        //   78	89	188	finally
        //   91	98	188	finally
        //   100	113	188	finally
        //   115	122	188	finally
        //   124	131	188	finally
        //   133	138	188	finally
        //   144	151	188	finally
        //   0	22	192	java/lang/Exception
      }
    });
  }
  
  void loadEvents(final int paramInt)
  {
    this.handler.post(new Runnable()
    {
      public final void run()
      {
        if (StatStore.this.numStoredEvents == 0) {
          return;
        }
        StatStore.logger.i("Load " + Integer.toString(StatStore.this.numStoredEvents) + " unsent events");
        ArrayList localArrayList1 = new ArrayList();
        final ArrayList localArrayList2 = new ArrayList();
        final int i = paramInt;
        if ((i == -1) || (i > StatConfig.getMaxLoadEventCount())) {
          i = StatConfig.getMaxLoadEventCount();
        }
        for (;;)
        {
          Object localObject = StatStore.this;
          ((StatStore)localObject).numStoredEvents -= i;
          StatStore.this.peekEvents(localArrayList2, i);
          StatStore.logger.i("Peek " + Integer.toString(localArrayList2.size()) + " unsent events.");
          if (localArrayList2.isEmpty()) {
            break;
          }
          StatStore.this.directUpdateEvents(localArrayList2, 2);
          localObject = localArrayList2.iterator();
          while (((Iterator)localObject).hasNext()) {
            localArrayList1.add(((f)((Iterator)localObject).next()).b);
          }
          c.b().send(localArrayList1, new b()
          {
            public final void a()
            {
              StatStore.this.deleteEvents(localArrayList2);
              if (StatStore.7.this.a == -1) {}
              for (int i = StatStore.7.this.a;; i = StatStore.7.this.a - localArrayList2.size())
              {
                if ((i == -1) || (i > 0)) {
                  StatStore.this.loadEvents(i);
                }
                return;
              }
            }
            
            public final void b()
            {
              StatStore localStatStore = StatStore.this;
              localStatStore.numStoredEvents += i;
              StatStore.this.updateEvents(localArrayList2, 1);
            }
          });
          return;
        }
      }
    });
  }
  
  void storeCfg(final a parama)
  {
    if (parama == null) {
      return;
    }
    try
    {
      this.handler.post(new Runnable()
      {
        /* Error */
        public final void run()
        {
          // Byte code:
          //   0: aload_0
          //   1: getfield 21	com/tencent/stat/StatStore$5:a	Lcom/tencent/stat/a;
          //   4: getfield 33	com/tencent/stat/a:b	Lorg/json/JSONObject;
          //   7: invokevirtual 39	org/json/JSONObject:toString	()Ljava/lang/String;
          //   10: astore 4
          //   12: aload 4
          //   14: invokestatic 45	com/tencent/stat/common/StatCommonHelper:md5sum	(Ljava/lang/String;)Ljava/lang/String;
          //   17: astore_1
          //   18: aload_1
          //   19: aload_0
          //   20: getfield 21	com/tencent/stat/StatStore$5:a	Lcom/tencent/stat/a;
          //   23: getfield 49	com/tencent/stat/a:c	Ljava/lang/String;
          //   26: invokevirtual 55	java/lang/String:equals	(Ljava/lang/Object;)Z
          //   29: ifne +222 -> 251
          //   32: new 57	android/content/ContentValues
          //   35: dup
          //   36: invokespecial 58	android/content/ContentValues:<init>	()V
          //   39: astore 5
          //   41: aload 5
          //   43: ldc 60
          //   45: aload_0
          //   46: getfield 21	com/tencent/stat/StatStore$5:a	Lcom/tencent/stat/a;
          //   49: getfield 33	com/tencent/stat/a:b	Lorg/json/JSONObject;
          //   52: invokevirtual 39	org/json/JSONObject:toString	()Ljava/lang/String;
          //   55: invokevirtual 64	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
          //   58: aload 5
          //   60: ldc 65
          //   62: aload_1
          //   63: invokevirtual 64	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
          //   66: aload_0
          //   67: getfield 21	com/tencent/stat/StatStore$5:a	Lcom/tencent/stat/a;
          //   70: aload_1
          //   71: putfield 49	com/tencent/stat/a:c	Ljava/lang/String;
          //   74: aload 5
          //   76: ldc 67
          //   78: aload_0
          //   79: getfield 21	com/tencent/stat/StatStore$5:a	Lcom/tencent/stat/a;
          //   82: getfield 71	com/tencent/stat/a:d	I
          //   85: invokestatic 77	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
          //   88: invokevirtual 80	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
          //   91: aload_0
          //   92: getfield 19	com/tencent/stat/StatStore$5:b	Lcom/tencent/stat/StatStore;
          //   95: invokestatic 84	com/tencent/stat/StatStore:access$300	(Lcom/tencent/stat/StatStore;)Lcom/tencent/stat/e;
          //   98: invokevirtual 90	com/tencent/stat/e:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
          //   101: ldc 92
          //   103: aconst_null
          //   104: aconst_null
          //   105: aconst_null
          //   106: aconst_null
          //   107: aconst_null
          //   108: aconst_null
          //   109: invokevirtual 98	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
          //   112: astore_2
          //   113: aload_2
          //   114: astore_1
          //   115: aload_2
          //   116: invokeinterface 104 1 0
          //   121: ifeq +252 -> 373
          //   124: aload_2
          //   125: astore_1
          //   126: aload_2
          //   127: iconst_0
          //   128: invokeinterface 108 2 0
          //   133: istore 6
          //   135: aload_2
          //   136: astore_1
          //   137: aload_0
          //   138: getfield 21	com/tencent/stat/StatStore$5:a	Lcom/tencent/stat/a;
          //   141: getfield 110	com/tencent/stat/a:a	I
          //   144: istore 7
          //   146: iload 6
          //   148: iload 7
          //   150: if_icmpne -37 -> 113
          //   153: iconst_1
          //   154: istore 6
          //   156: iload 6
          //   158: istore 7
          //   160: aload_2
          //   161: ifnull +13 -> 174
          //   164: aload_2
          //   165: invokeinterface 113 1 0
          //   170: iload 6
          //   172: istore 7
          //   174: iconst_1
          //   175: iload 7
          //   177: if_icmpne +118 -> 295
          //   180: aload_0
          //   181: getfield 19	com/tencent/stat/StatStore$5:b	Lcom/tencent/stat/StatStore;
          //   184: invokestatic 84	com/tencent/stat/StatStore:access$300	(Lcom/tencent/stat/StatStore;)Lcom/tencent/stat/e;
          //   187: invokevirtual 116	com/tencent/stat/e:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
          //   190: ldc 92
          //   192: aload 5
          //   194: ldc 118
          //   196: iconst_1
          //   197: anewarray 51	java/lang/String
          //   200: dup
          //   201: iconst_0
          //   202: aload_0
          //   203: getfield 21	com/tencent/stat/StatStore$5:a	Lcom/tencent/stat/a;
          //   206: getfield 110	com/tencent/stat/a:a	I
          //   209: invokestatic 121	java/lang/Integer:toString	(I)Ljava/lang/String;
          //   212: aastore
          //   213: invokevirtual 125	android/database/sqlite/SQLiteDatabase:update	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
          //   216: i2l
          //   217: lstore 8
          //   219: lload 8
          //   221: ldc2_w 126
          //   224: lcmp
          //   225: ifne +110 -> 335
          //   228: invokestatic 131	com/tencent/stat/StatStore:access$400	()Lcom/tencent/stat/common/StatLogger;
          //   231: new 133	java/lang/StringBuilder
          //   234: dup
          //   235: ldc -121
          //   237: invokespecial 138	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
          //   240: aload 4
          //   242: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
          //   245: invokevirtual 143	java/lang/StringBuilder:toString	()Ljava/lang/String;
          //   248: invokevirtual 149	com/tencent/stat/common/StatLogger:error	(Ljava/lang/Object;)V
          //   251: return
          //   252: astore_3
          //   253: aconst_null
          //   254: astore_2
          //   255: aload_2
          //   256: astore_1
          //   257: invokestatic 131	com/tencent/stat/StatStore:access$400	()Lcom/tencent/stat/common/StatLogger;
          //   260: aload_3
          //   261: invokevirtual 153	com/tencent/stat/common/StatLogger:e	(Ljava/lang/Exception;)V
          //   264: aload_2
          //   265: ifnull +102 -> 367
          //   268: aload_2
          //   269: invokeinterface 113 1 0
          //   274: iconst_0
          //   275: istore 7
          //   277: goto -103 -> 174
          //   280: astore_2
          //   281: aconst_null
          //   282: astore_1
          //   283: aload_1
          //   284: ifnull +9 -> 293
          //   287: aload_1
          //   288: invokeinterface 113 1 0
          //   293: aload_2
          //   294: athrow
          //   295: aload 5
          //   297: ldc -101
          //   299: aload_0
          //   300: getfield 21	com/tencent/stat/StatStore$5:a	Lcom/tencent/stat/a;
          //   303: getfield 110	com/tencent/stat/a:a	I
          //   306: invokestatic 77	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
          //   309: invokevirtual 80	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
          //   312: aload_0
          //   313: getfield 19	com/tencent/stat/StatStore$5:b	Lcom/tencent/stat/StatStore;
          //   316: invokestatic 84	com/tencent/stat/StatStore:access$300	(Lcom/tencent/stat/StatStore;)Lcom/tencent/stat/e;
          //   319: invokevirtual 116	com/tencent/stat/e:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
          //   322: ldc 92
          //   324: aconst_null
          //   325: aload 5
          //   327: invokevirtual 159	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
          //   330: lstore 8
          //   332: goto -113 -> 219
          //   335: invokestatic 131	com/tencent/stat/StatStore:access$400	()Lcom/tencent/stat/common/StatLogger;
          //   338: new 133	java/lang/StringBuilder
          //   341: dup
          //   342: ldc -95
          //   344: invokespecial 138	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
          //   347: aload 4
          //   349: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
          //   352: invokevirtual 143	java/lang/StringBuilder:toString	()Ljava/lang/String;
          //   355: invokevirtual 164	com/tencent/stat/common/StatLogger:i	(Ljava/lang/Object;)V
          //   358: return
          //   359: astore_2
          //   360: goto -77 -> 283
          //   363: astore_3
          //   364: goto -109 -> 255
          //   367: iconst_0
          //   368: istore 7
          //   370: goto -196 -> 174
          //   373: iconst_0
          //   374: istore 6
          //   376: goto -220 -> 156
          // Local variable table:
          //   start	length	slot	name	signature
          //   0	379	0	this	5
          //   17	271	1	localObject1	Object
          //   112	157	2	localCursor	android.database.Cursor
          //   280	14	2	localObject2	Object
          //   359	1	2	localObject3	Object
          //   252	9	3	localException1	Exception
          //   363	1	3	localException2	Exception
          //   10	338	4	str	String
          //   39	287	5	localContentValues	ContentValues
          //   133	242	6	i	int
          //   144	225	7	j	int
          //   217	114	8	l	long
          // Exception table:
          //   from	to	target	type
          //   91	113	252	java/lang/Exception
          //   91	113	280	finally
          //   115	124	359	finally
          //   126	135	359	finally
          //   137	146	359	finally
          //   257	264	359	finally
          //   115	124	363	java/lang/Exception
          //   126	135	363	java/lang/Exception
          //   137	146	363	java/lang/Exception
        }
      });
      return;
    }
    catch (Exception parama)
    {
      logger.e(parama);
    }
  }
  
  void storeEvent(final Event paramEvent, final b paramb)
  {
    if (!StatConfig.isEnableStatService()) {
      return;
    }
    try
    {
      if (Thread.currentThread().getId() == this.handler.getLooper().getThread().getId())
      {
        directStoreEvent(paramEvent, paramb);
        return;
      }
    }
    catch (SQLiteException paramEvent)
    {
      logger.e(paramEvent);
      return;
    }
    this.handler.post(new Runnable()
    {
      public final void run()
      {
        StatStore.this.directStoreEvent(paramEvent, paramb);
      }
    });
  }
  
  void updateEvents(final List<f> paramList, final int paramInt)
  {
    try
    {
      if (Thread.currentThread().getId() == this.handler.getLooper().getThread().getId())
      {
        directUpdateEvents(paramList, paramInt);
        return;
      }
      this.handler.post(new Runnable()
      {
        public final void run()
        {
          StatStore.this.directUpdateEvents(paramList, paramInt);
        }
      });
      return;
    }
    catch (SQLiteException paramList)
    {
      logger.e(paramList);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\stat\StatStore.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */