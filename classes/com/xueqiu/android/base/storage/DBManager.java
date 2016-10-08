package com.xueqiu.android.base.storage;

import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.SystemClock;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.xueqiu.android.base.b;
import com.xueqiu.android.base.storage.prefs.DataStore;
import com.xueqiu.android.base.storage.prefs.DefaultPrefs;
import com.xueqiu.android.base.storage.prefs.UserLogonDataPrefs;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.s;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.base.util.w;
import com.xueqiu.android.community.model.Comment;
import com.xueqiu.android.community.model.Draft;
import com.xueqiu.android.community.model.Status;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.message.model.IMGroup;
import com.xueqiu.android.message.model.IMGroup.Table;
import com.xueqiu.android.message.model.Message;
import com.xueqiu.android.message.model.Talk;
import com.xueqiu.android.stock.model.OldPortFolio;
import java.io.File;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.UUID;

public class DBManager
{
  public static final String DATABASE_NAME = "snowball.db";
  private static final String TAG = "DBManager";
  private static boolean libLoaded;
  private static DBManager mInstance;
  private CipherDatabaseHelper mCipherHelper;
  private Context mContext;
  private DroidDatabaseHelper mHelper;
  private String sqlcipherKey;
  private long userId = -1L;
  
  static
  {
    if (!DBManager.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      libLoaded = false;
      return;
    }
  }
  
  private DBManager()
  {
    b.a();
    this.mContext = b.d();
    try
    {
      cipherInit(this.mContext);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  private void cipherInit(Context paramContext)
  {
    if (!libLoaded)
    {
      net.sqlcipher.database.SQLiteDatabase.loadLibs(paramContext);
      libLoaded = true;
    }
    this.userId = UserLogonDataPrefs.getLogonUserId();
    this.sqlcipherKey = s.a(paramContext);
    Object localObject1;
    if ((this.sqlcipherKey == null) || (this.sqlcipherKey.length() == 0))
    {
      s.b(paramContext);
      localObject2 = UUID.randomUUID().toString();
      SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("com.xueqiu.keychain", 0);
      localObject1 = localSharedPreferences.edit();
      ((SharedPreferences.Editor)localObject1).putString("com.xueqiu.sqlcipher", (String)localObject2);
      ((SharedPreferences.Editor)localObject1).commit();
      localObject1 = localObject2;
      if (localSharedPreferences.getInt("com.xueqiu.sqlcipher.version", 0) > 0) {
        localObject1 = s.a((String)localObject2);
      }
      this.sqlcipherKey = ((String)localObject1);
      localObject2 = paramContext.getDatabasePath("snowball.db");
      if (((File)localObject2).exists())
      {
        localObject1 = readStoredUser((File)localObject2, "");
        PreferenceManager.getDefaultSharedPreferences(paramContext).edit().putLong("last_update_friends_time", 0L).commit();
        if (!((File)localObject2).delete()) {
          throw new Exception("delete old db file failed!");
        }
      }
      else
      {
        localObject1 = paramContext.databaseList();
        int j = localObject1.length;
        int i = 0;
        while (i < j)
        {
          localObject2 = paramContext.getDatabasePath(localObject1[i]);
          if ((((File)localObject2).exists()) && (!((File)localObject2).delete())) {
            throw new Exception("delete old unencrypted db file failed!");
          }
          i += 1;
        }
      }
    }
    else
    {
      localObject1 = null;
    }
    Object localObject2 = localObject1;
    if (paramContext.getSharedPreferences("com.xueqiu.keychain", 0).getInt("com.xueqiu.sqlcipher.version", 0) <= 0)
    {
      localObject2 = paramContext.getDatabasePath("snowball.db");
      if (((File)localObject2).exists())
      {
        localObject1 = readStoredUser((File)localObject2, s.a(paramContext));
        DefaultPrefs.putLong("last_update_friends_time", 0L, paramContext);
        if (!((File)localObject2).delete()) {
          throw new Exception("delete old db file failed!");
        }
      }
      s.b(paramContext);
      this.sqlcipherKey = s.a(paramContext);
      localObject2 = localObject1;
    }
    this.mCipherHelper = new CipherDatabaseHelper(this.mContext, String.valueOf(this.userId));
    getWritableDatabase();
    if (localObject2 != null) {
      getWritableDatabase().replace("sn_user", null, UserTable.contentValues((User)localObject2));
    }
  }
  
  private static void close()
  {
    try
    {
      if (mInstance != null)
      {
        if (mInstance.mHelper != null) {
          mInstance.mHelper.close();
        }
        if (mInstance.mCipherHelper != null) {
          mInstance.mCipherHelper.close();
        }
        mInstance = null;
      }
      return;
    }
    finally {}
  }
  
  private void collapseTalk(SQLiteDatabase paramSQLiteDatabase, Message paramMessage, Talk paramTalk)
  {
    boolean bool = false;
    if ((paramTalk.isGroup()) || (paramMessage.isByMyself())) {}
    label90:
    label92:
    for (;;)
    {
      paramTalk.setCollapsed(bool);
      paramTalk.setActive(true);
      for (;;)
      {
        return;
        paramSQLiteDatabase = queryUserByUserId(paramSQLiteDatabase, paramTalk.getId());
        if (paramSQLiteDatabase != null)
        {
          if (((paramSQLiteDatabase.isFollowing()) && (paramSQLiteDatabase.isFollowMe())) || (paramSQLiteDatabase.getType() == 4)) {}
          for (int i = 1;; i = 0)
          {
            if (paramTalk.isActive()) {
              break label90;
            }
            if (i != 0) {
              break label92;
            }
            bool = true;
            break;
          }
        }
      }
    }
  }
  
  /* Error */
  public static DBManager getInstance()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 215	com/xueqiu/android/base/storage/DBManager:mInstance	Lcom/xueqiu/android/base/storage/DBManager;
    //   6: ifnonnull +22 -> 28
    //   9: new 2	com/xueqiu/android/base/storage/DBManager
    //   12: dup
    //   13: invokespecial 265	com/xueqiu/android/base/storage/DBManager:<init>	()V
    //   16: putstatic 215	com/xueqiu/android/base/storage/DBManager:mInstance	Lcom/xueqiu/android/base/storage/DBManager;
    //   19: getstatic 215	com/xueqiu/android/base/storage/DBManager:mInstance	Lcom/xueqiu/android/base/storage/DBManager;
    //   22: astore_0
    //   23: ldc 2
    //   25: monitorexit
    //   26: aload_0
    //   27: areturn
    //   28: getstatic 215	com/xueqiu/android/base/storage/DBManager:mInstance	Lcom/xueqiu/android/base/storage/DBManager;
    //   31: getfield 47	com/xueqiu/android/base/storage/DBManager:userId	J
    //   34: invokestatic 77	com/xueqiu/android/base/storage/prefs/UserLogonDataPrefs:getLogonUserId	()J
    //   37: lcmp
    //   38: ifeq -19 -> 19
    //   41: invokestatic 266	com/xueqiu/android/base/storage/DBManager:close	()V
    //   44: new 2	com/xueqiu/android/base/storage/DBManager
    //   47: dup
    //   48: invokespecial 265	com/xueqiu/android/base/storage/DBManager:<init>	()V
    //   51: putstatic 215	com/xueqiu/android/base/storage/DBManager:mInstance	Lcom/xueqiu/android/base/storage/DBManager;
    //   54: goto -35 -> 19
    //   57: astore_0
    //   58: ldc 2
    //   60: monitorexit
    //   61: aload_0
    //   62: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   22	5	0	localDBManager	DBManager
    //   57	5	0	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   3	19	57	finally
    //   19	23	57	finally
    //   28	54	57	finally
  }
  
  private SQLiteDatabase getReadableDatabase()
  {
    if (this.sqlcipherKey != null) {
      return new SQLiteDatabase(this.mCipherHelper.getReadableDatabase(this.sqlcipherKey));
    }
    return new SQLiteDatabase(this.mHelper.getReadableDatabase());
  }
  
  private SQLiteDatabase getWritableDatabase()
  {
    if (this.sqlcipherKey != null) {
      return new SQLiteDatabase(this.mCipherHelper.getWritableDatabase(this.sqlcipherKey));
    }
    return new SQLiteDatabase(this.mHelper.getWritableDatabase());
  }
  
  private boolean insertOrUpdateUserByKeepFollowShip(SQLiteDatabase paramSQLiteDatabase, User paramUser)
  {
    android.database.Cursor localCursor;
    try
    {
      localCursor = paramSQLiteDatabase.query("sn_user", UserTable.TABLE_COLUMNS, "userId= ?", new String[] { String.valueOf(paramUser.getUserId()) }, null, null, null);
      User localUser;
      if (localCursor == null) {
        break label111;
      }
    }
    finally
    {
      try
      {
        if (localCursor.getCount() > 0)
        {
          localUser = UserTable.parseCursor(localCursor);
          paramUser.setFollowing(localUser.isFollowing());
          paramUser.setFollowMe(localUser.isFollowMe());
          paramUser.setPinyinScreenName(localUser.getPinyinScreenName());
          paramUser.setPinyinRemark(localUser.getPinyinRemark());
        }
        if (localCursor != null) {
          localCursor.close();
        }
        return insertUser(paramSQLiteDatabase, paramUser);
      }
      finally {}
      paramSQLiteDatabase = finally;
      localCursor = null;
    }
    localCursor.close();
    label111:
    throw paramSQLiteDatabase;
  }
  
  private boolean insertStatus(SQLiteDatabase paramSQLiteDatabase, Status paramStatus)
  {
    return insertStatus(paramSQLiteDatabase, paramStatus, -1);
  }
  
  private boolean insertStatus(SQLiteDatabase paramSQLiteDatabase, Status paramStatus, int paramInt)
  {
    boolean bool = insertOrUpdateUserByKeepFollowShip(paramSQLiteDatabase, paramStatus.getUser());
    v.a("DBManager", "insert a User successful=" + bool + "+ screenName=" + paramStatus.getUser().getScreenName());
    paramStatus = StatusTable.contentValues(paramStatus);
    if (paramInt != -1) {
      paramStatus.put("type", Integer.valueOf(paramInt));
    }
    return paramSQLiteDatabase.replace("sn_status", null, paramStatus) != -1L;
  }
  
  private boolean insertStatus(Status paramStatus)
  {
    return insertStatus(paramStatus, -1);
  }
  
  private boolean insertStatus(Status paramStatus, int paramInt)
  {
    return insertStatus(getWritableDatabase(), paramStatus, paramInt);
  }
  
  private boolean insertUser(SQLiteDatabase paramSQLiteDatabase, User paramUser)
  {
    Object localObject = DataStore.getInstance(this.mContext);
    if (localObject == null) {
      return false;
    }
    ((DataStore)localObject).updateTalkInfo(paramUser);
    DatabaseCache.getInstance().cacheUser(paramUser);
    if (paramUser.getUserId() > 0L)
    {
      long l = paramUser.getUserId();
      localObject = paramSQLiteDatabase.query("sn_user", new String[] { "screenName" }, "userId=?", new String[] { String.valueOf(l) }, null, null, null);
      if (((android.database.Cursor)localObject).getCount() > 0)
      {
        ((android.database.Cursor)localObject).moveToFirst();
        if (!((android.database.Cursor)localObject).getString(0).equals(paramUser.getScreenName())) {
          paramSQLiteDatabase.delete("sn_user", "userId = ?", new String[] { String.valueOf(paramUser.getUserId()) });
        }
      }
      ((android.database.Cursor)localObject).close();
    }
    return paramSQLiteDatabase.replace("sn_user", null, UserTable.contentValues(paramUser)) != -1L;
  }
  
  /* Error */
  private Status queryStatusById(long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 431	com/xueqiu/android/base/storage/DBManager:getReadableDatabase	()Lcom/xueqiu/android/base/storage/SQLiteDatabase;
    //   4: astore_3
    //   5: aload_3
    //   6: ldc_w 385
    //   9: getstatic 432	com/xueqiu/android/base/storage/StatusTable:TABLE_COLUMNS	[Ljava/lang/String;
    //   12: new 344	java/lang/StringBuilder
    //   15: dup
    //   16: ldc_w 434
    //   19: invokespecial 347	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   22: lload_1
    //   23: invokevirtual 437	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   26: invokevirtual 360	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   29: aconst_null
    //   30: aconst_null
    //   31: aconst_null
    //   32: aconst_null
    //   33: invokevirtual 298	com/xueqiu/android/base/storage/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   36: astore 4
    //   38: aload 4
    //   40: astore_3
    //   41: aload 4
    //   43: invokestatic 440	com/xueqiu/android/base/storage/StatusTable:parseCursor	(Landroid/database/Cursor;)Lcom/xueqiu/android/community/model/Status;
    //   46: astore 5
    //   48: aload 5
    //   50: ifnull +61 -> 111
    //   53: aload 4
    //   55: astore_3
    //   56: aload 5
    //   58: invokevirtual 441	com/xueqiu/android/community/model/Status:getUserId	()J
    //   61: lstore_1
    //   62: lload_1
    //   63: lconst_0
    //   64: lcmp
    //   65: ifle +61 -> 126
    //   68: aload 4
    //   70: astore_3
    //   71: aload 5
    //   73: aload_0
    //   74: lload_1
    //   75: invokevirtual 444	com/xueqiu/android/base/storage/DBManager:queryUserByUserId	(J)Lcom/xueqiu/android/community/model/User;
    //   78: invokevirtual 447	com/xueqiu/android/community/model/Status:setUser	(Lcom/xueqiu/android/community/model/User;)V
    //   81: aload 4
    //   83: astore_3
    //   84: aload 5
    //   86: invokevirtual 450	com/xueqiu/android/community/model/Status:getReTweetStatusId	()J
    //   89: lconst_0
    //   90: lcmp
    //   91: ifeq +20 -> 111
    //   94: aload 4
    //   96: astore_3
    //   97: aload 5
    //   99: aload_0
    //   100: aload 5
    //   102: invokevirtual 450	com/xueqiu/android/community/model/Status:getReTweetStatusId	()J
    //   105: invokespecial 452	com/xueqiu/android/base/storage/DBManager:queryStatusById	(J)Lcom/xueqiu/android/community/model/Status;
    //   108: invokevirtual 456	com/xueqiu/android/community/model/Status:setRetweetedStatus	(Lcom/xueqiu/android/community/model/Status;)V
    //   111: aload 4
    //   113: ifnull +10 -> 123
    //   116: aload 4
    //   118: invokeinterface 326 1 0
    //   123: aload 5
    //   125: areturn
    //   126: aload 4
    //   128: astore_3
    //   129: aload 5
    //   131: invokevirtual 457	com/xueqiu/android/community/model/Status:getScreenName	()Ljava/lang/String;
    //   134: astore 6
    //   136: aload 6
    //   138: ifnull -57 -> 81
    //   141: aload 4
    //   143: astore_3
    //   144: aload 6
    //   146: invokestatic 463	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   149: ifne -68 -> 81
    //   152: aload 4
    //   154: astore_3
    //   155: aload 5
    //   157: aload_0
    //   158: aload 6
    //   160: invokevirtual 467	com/xueqiu/android/base/storage/DBManager:queryUserByScreenName	(Ljava/lang/String;)Lcom/xueqiu/android/community/model/User;
    //   163: invokevirtual 447	com/xueqiu/android/community/model/Status:setUser	(Lcom/xueqiu/android/community/model/User;)V
    //   166: goto -85 -> 81
    //   169: astore 5
    //   171: aload 4
    //   173: astore_3
    //   174: aload 5
    //   176: invokevirtual 66	java/lang/Exception:printStackTrace	()V
    //   179: aload 4
    //   181: ifnull +10 -> 191
    //   184: aload 4
    //   186: invokeinterface 326 1 0
    //   191: aconst_null
    //   192: areturn
    //   193: astore 4
    //   195: aconst_null
    //   196: astore_3
    //   197: aload_3
    //   198: ifnull +9 -> 207
    //   201: aload_3
    //   202: invokeinterface 326 1 0
    //   207: aload 4
    //   209: athrow
    //   210: astore 4
    //   212: goto -15 -> 197
    //   215: astore 5
    //   217: aconst_null
    //   218: astore 4
    //   220: goto -49 -> 171
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	223	0	this	DBManager
    //   0	223	1	paramLong	long
    //   4	198	3	localObject1	Object
    //   36	149	4	localCursor	android.database.Cursor
    //   193	15	4	localObject2	Object
    //   210	1	4	localObject3	Object
    //   218	1	4	localObject4	Object
    //   46	110	5	localStatus	Status
    //   169	6	5	localException1	Exception
    //   215	1	5	localException2	Exception
    //   134	25	6	str	String
    // Exception table:
    //   from	to	target	type
    //   41	48	169	java/lang/Exception
    //   56	62	169	java/lang/Exception
    //   71	81	169	java/lang/Exception
    //   84	94	169	java/lang/Exception
    //   97	111	169	java/lang/Exception
    //   129	136	169	java/lang/Exception
    //   144	152	169	java/lang/Exception
    //   155	166	169	java/lang/Exception
    //   5	38	193	finally
    //   41	48	210	finally
    //   56	62	210	finally
    //   71	81	210	finally
    //   84	94	210	finally
    //   97	111	210	finally
    //   129	136	210	finally
    //   144	152	210	finally
    //   155	166	210	finally
    //   174	179	210	finally
    //   5	38	215	java/lang/Exception
  }
  
  /* Error */
  private User queryUserByUserId(SQLiteDatabase paramSQLiteDatabase, long paramLong)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: invokestatic 403	com/xueqiu/android/base/storage/DatabaseCache:getInstance	()Lcom/xueqiu/android/base/storage/DatabaseCache;
    //   6: lload_2
    //   7: invokestatic 472	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   10: invokevirtual 475	com/xueqiu/android/base/storage/DatabaseCache:getUser	(Ljava/lang/Long;)Lcom/xueqiu/android/community/model/User;
    //   13: astore 5
    //   15: aload 5
    //   17: ifnull +10 -> 27
    //   20: aload 5
    //   22: astore 4
    //   24: aload 4
    //   26: areturn
    //   27: aload_1
    //   28: ldc -56
    //   30: getstatic 289	com/xueqiu/android/base/storage/UserTable:TABLE_COLUMNS	[Ljava/lang/String;
    //   33: ldc_w 291
    //   36: iconst_1
    //   37: anewarray 86	java/lang/String
    //   40: dup
    //   41: iconst_0
    //   42: lload_2
    //   43: invokestatic 189	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   46: aastore
    //   47: aconst_null
    //   48: aconst_null
    //   49: aconst_null
    //   50: invokevirtual 298	com/xueqiu/android/base/storage/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   53: astore_1
    //   54: aload_1
    //   55: ifnull +35 -> 90
    //   58: aload_1
    //   59: astore 4
    //   61: invokestatic 403	com/xueqiu/android/base/storage/DatabaseCache:getInstance	()Lcom/xueqiu/android/base/storage/DatabaseCache;
    //   64: aload_1
    //   65: invokestatic 307	com/xueqiu/android/base/storage/UserTable:parseCursor	(Landroid/database/Cursor;)Lcom/xueqiu/android/community/model/User;
    //   68: invokevirtual 407	com/xueqiu/android/base/storage/DatabaseCache:cacheUser	(Lcom/xueqiu/android/community/model/User;)Lcom/xueqiu/android/community/model/User;
    //   71: astore 5
    //   73: aload 5
    //   75: astore 4
    //   77: aload_1
    //   78: ifnull -54 -> 24
    //   81: aload_1
    //   82: invokeinterface 326 1 0
    //   87: aload 5
    //   89: areturn
    //   90: aload_1
    //   91: ifnull +9 -> 100
    //   94: aload_1
    //   95: invokeinterface 326 1 0
    //   100: aconst_null
    //   101: areturn
    //   102: astore 5
    //   104: aconst_null
    //   105: astore_1
    //   106: aload_1
    //   107: astore 4
    //   109: aload 5
    //   111: invokevirtual 66	java/lang/Exception:printStackTrace	()V
    //   114: aload_1
    //   115: ifnull -15 -> 100
    //   118: aload_1
    //   119: invokeinterface 326 1 0
    //   124: goto -24 -> 100
    //   127: astore_1
    //   128: aload 4
    //   130: ifnull +10 -> 140
    //   133: aload 4
    //   135: invokeinterface 326 1 0
    //   140: aload_1
    //   141: athrow
    //   142: astore_1
    //   143: goto -15 -> 128
    //   146: astore 5
    //   148: goto -42 -> 106
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	151	0	this	DBManager
    //   0	151	1	paramSQLiteDatabase	SQLiteDatabase
    //   0	151	2	paramLong	long
    //   1	133	4	localObject	Object
    //   13	75	5	localUser	User
    //   102	8	5	localException1	Exception
    //   146	1	5	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   27	54	102	java/lang/Exception
    //   27	54	127	finally
    //   61	73	142	finally
    //   109	114	142	finally
    //   61	73	146	java/lang/Exception
  }
  
  private User readStoredUser(File paramFile, String paramString)
  {
    Object localObject = null;
    paramFile = net.sqlcipher.database.SQLiteDatabase.openOrCreateDatabase(paramFile.getAbsoluteFile(), paramString, null);
    long l = UserLogonDataPrefs.getLogonUserId();
    paramString = new String[4];
    paramString[0] = "userId";
    paramString[1] = "screenName";
    paramString[2] = "profileImageUrl";
    paramString[3] = "step";
    net.sqlcipher.Cursor localCursor = paramFile.query("sn_user", paramString, "userId= ?", new String[] { String.valueOf(l) }, null, null, null);
    paramFile = (File)localObject;
    if (localCursor.getCount() != 0)
    {
      if (-1 == localCursor.getPosition()) {
        localCursor.moveToFirst();
      }
      paramFile = new User();
      paramFile.setUserId(localCursor.getLong(localCursor.getColumnIndex(paramString[0])));
      paramFile.setScreenName(localCursor.getString(localCursor.getColumnIndex(paramString[1])));
      paramFile.setProfileImageUrl(localCursor.getString(localCursor.getColumnIndex(paramString[2])));
      paramFile.setStep(localCursor.getString(localCursor.getColumnIndex(paramString[3])));
    }
    localCursor.close();
    return paramFile;
  }
  
  public void clearData()
  {
    DatabaseHelperSupport.recreateTables(getWritableDatabase(), this.mContext);
  }
  
  public boolean clearDraftBox()
  {
    return getWritableDatabase().delete("t_draft_table", null, null) != 0L;
  }
  
  public boolean deleteDraft(int paramInt)
  {
    return getWritableDatabase().delete("t_draft_table", "draft_id=?", new String[] { String.valueOf(paramInt) }) != 0L;
  }
  
  public boolean deleteStatus(long paramLong)
  {
    return getWritableDatabase().delete("sn_status", "status_id= ?", new String[] { String.valueOf(paramLong) }) != 0;
  }
  
  public android.database.Cursor getAllDraft()
  {
    return getReadableDatabase().query("t_draft_table", new String[] { "draft_id as _id", "title", "text", "type", "img_name", "timestamp" }, null, null, null, null, "draft_id desc");
  }
  
  public List<IMGroup> getAllOrganize()
  {
    android.database.Cursor localCursor = getReadableDatabase().query("sn_organize", IMGroup.Table.TABLE_COLUMNS, "joined=1 and truncated=0", null, null, null, null);
    ArrayList localArrayList = new ArrayList();
    if (localCursor != null)
    {
      localCursor.moveToFirst();
      while (!localCursor.isAfterLast())
      {
        localArrayList.add(IMGroup.Table.parseCursor(localCursor));
        localCursor.moveToNext();
      }
      localCursor.close();
    }
    return localArrayList;
  }
  
  public int getAllUnreadCount(boolean paramBoolean)
  {
    Object localObject = DataStore.getInstance(this.mContext);
    if (localObject == null) {
      return 0;
    }
    localObject = ((DataStore)localObject).getTalks(paramBoolean).iterator();
    int i = 0;
    if (((Iterator)localObject).hasNext())
    {
      Talk localTalk = (Talk)((Iterator)localObject).next();
      if (!localTalk.isNotify()) {
        break label69;
      }
      i = localTalk.getUnread() + i;
    }
    label69:
    for (;;)
    {
      break;
      return i;
    }
  }
  
  public User getCurrentUser()
  {
    u.a();
    return queryUserByUserId(UserLogonDataPrefs.getLogonUserId());
  }
  
  public int getDraftSize()
  {
    int i = 0;
    android.database.Cursor localCursor = getAllDraft();
    if (localCursor != null)
    {
      i = localCursor.getCount();
      localCursor.close();
    }
    return i;
  }
  
  /* Error */
  public List<User> getFollowEachOtherUsers()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: invokespecial 431	com/xueqiu/android/base/storage/DBManager:getReadableDatabase	()Lcom/xueqiu/android/base/storage/SQLiteDatabase;
    //   6: astore_1
    //   7: aload_1
    //   8: ldc -56
    //   10: getstatic 289	com/xueqiu/android/base/storage/UserTable:TABLE_COLUMNS	[Ljava/lang/String;
    //   13: ldc_w 615
    //   16: iconst_2
    //   17: anewarray 86	java/lang/String
    //   20: dup
    //   21: iconst_0
    //   22: ldc_w 617
    //   25: aastore
    //   26: dup
    //   27: iconst_1
    //   28: ldc_w 617
    //   31: aastore
    //   32: aconst_null
    //   33: aconst_null
    //   34: aconst_null
    //   35: invokevirtual 298	com/xueqiu/android/base/storage/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   38: astore_1
    //   39: aload_1
    //   40: astore_2
    //   41: aload_2
    //   42: astore_1
    //   43: new 561	java/util/ArrayList
    //   46: dup
    //   47: invokespecial 562	java/util/ArrayList:<init>	()V
    //   50: astore_3
    //   51: aload_2
    //   52: ifnull +69 -> 121
    //   55: aload_2
    //   56: astore_1
    //   57: aload_2
    //   58: invokeinterface 414 1 0
    //   63: pop
    //   64: aload_2
    //   65: astore_1
    //   66: aload_2
    //   67: invokeinterface 565 1 0
    //   72: ifne +49 -> 121
    //   75: aload_2
    //   76: astore_1
    //   77: aload_3
    //   78: aload_2
    //   79: invokestatic 307	com/xueqiu/android/base/storage/UserTable:parseCursor	(Landroid/database/Cursor;)Lcom/xueqiu/android/community/model/User;
    //   82: invokeinterface 573 2 0
    //   87: pop
    //   88: aload_2
    //   89: astore_1
    //   90: aload_2
    //   91: invokeinterface 576 1 0
    //   96: pop
    //   97: goto -33 -> 64
    //   100: astore_3
    //   101: aload_2
    //   102: astore_1
    //   103: aload_3
    //   104: invokevirtual 66	java/lang/Exception:printStackTrace	()V
    //   107: aload_2
    //   108: ifnull +9 -> 117
    //   111: aload_2
    //   112: invokeinterface 326 1 0
    //   117: aconst_null
    //   118: astore_1
    //   119: aload_1
    //   120: areturn
    //   121: aload_3
    //   122: astore_1
    //   123: aload_2
    //   124: ifnull -5 -> 119
    //   127: aload_2
    //   128: invokeinterface 326 1 0
    //   133: aload_3
    //   134: areturn
    //   135: astore_1
    //   136: aload_2
    //   137: ifnull +9 -> 146
    //   140: aload_2
    //   141: invokeinterface 326 1 0
    //   146: aload_1
    //   147: athrow
    //   148: astore_3
    //   149: aload_1
    //   150: astore_2
    //   151: aload_3
    //   152: astore_1
    //   153: goto -17 -> 136
    //   156: astore_3
    //   157: aconst_null
    //   158: astore_2
    //   159: goto -58 -> 101
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	162	0	this	DBManager
    //   6	117	1	localObject1	Object
    //   135	15	1	localObject2	Object
    //   152	1	1	localObject3	Object
    //   1	158	2	localObject4	Object
    //   50	28	3	localArrayList	ArrayList
    //   100	34	3	localException1	Exception
    //   148	4	3	localObject5	Object
    //   156	1	3	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   43	51	100	java/lang/Exception
    //   57	64	100	java/lang/Exception
    //   66	75	100	java/lang/Exception
    //   77	88	100	java/lang/Exception
    //   90	97	100	java/lang/Exception
    //   7	39	135	finally
    //   43	51	148	finally
    //   57	64	148	finally
    //   66	75	148	finally
    //   77	88	148	finally
    //   90	97	148	finally
    //   103	107	148	finally
    //   7	39	156	java/lang/Exception
  }
  
  public IMGroup getIMGroupById(long paramLong)
  {
    Object localObject = null;
    IMGroup localIMGroup1 = DatabaseCache.getInstance().getIMGroup(Long.valueOf(paramLong));
    if (localIMGroup1 != null) {
      localObject = localIMGroup1;
    }
    IMGroup localIMGroup2;
    do
    {
      return (IMGroup)localObject;
      android.database.Cursor localCursor = getReadableDatabase().query("sn_organize", IMGroup.Table.TABLE_COLUMNS, "id=?", new String[] { String.valueOf(paramLong) }, null, null, null);
      localIMGroup2 = IMGroup.Table.parseCursor(localCursor);
      DatabaseCache.getInstance().cacheIMGroup(localIMGroup1);
      localCursor.close();
    } while (localIMGroup2 == null);
    localIMGroup2.setMaster(queryUserByUserId(localIMGroup2.getMasterId()));
    return localIMGroup2;
  }
  
  public List<IMGroup> getIMGroups(boolean paramBoolean)
  {
    int i = 1;
    Object localObject1 = getReadableDatabase();
    Object localObject2 = IMGroup.Table.TABLE_COLUMNS;
    if (paramBoolean) {
      i = 0;
    }
    localObject1 = ((SQLiteDatabase)localObject1).query("sn_organize", (String[])localObject2, "empty_name=? and joined = 1 and truncated = 0", new String[] { String.valueOf(i) }, null, null, null, null);
    localObject2 = new ArrayList();
    if (localObject1 != null)
    {
      ((android.database.Cursor)localObject1).moveToFirst();
      while (!((android.database.Cursor)localObject1).isAfterLast())
      {
        ((List)localObject2).add(IMGroup.Table.parseCursor((android.database.Cursor)localObject1));
        ((android.database.Cursor)localObject1).moveToNext();
      }
      ((android.database.Cursor)localObject1).close();
    }
    return (List<IMGroup>)localObject2;
  }
  
  public ResultSet<IMGroup, Long> getIMGroupsByIds(Set<Long> paramSet)
  {
    Object localObject2 = DatabaseCache.getInstance().getIMGroups(paramSet);
    paramSet = ((ResultSet)localObject2).founded();
    Set localSet = ((ResultSet)localObject2).missed();
    Object localObject1 = new HashSet();
    localObject2 = ((ResultSet)localObject2).founded().iterator();
    Object localObject3;
    while (((Iterator)localObject2).hasNext())
    {
      localObject3 = (IMGroup)((Iterator)localObject2).next();
      if (((IMGroup)localObject3).getMaster() == null) {
        ((HashSet)localObject1).add(Long.valueOf(((IMGroup)localObject3).getMasterId()));
      }
    }
    if (!localSet.isEmpty())
    {
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("id");
      ((StringBuilder)localObject2).append(" in ");
      ((StringBuilder)localObject2).append("(");
      localObject3 = localSet.iterator();
      int i = 0;
      while (((Iterator)localObject3).hasNext())
      {
        ((StringBuilder)localObject2).append(String.format("'%d'", new Object[] { (Long)((Iterator)localObject3).next() }));
        if (i < localSet.size() - 1) {
          ((StringBuilder)localObject2).append(",");
        }
        i += 1;
      }
      ((StringBuilder)localObject2).append(")");
      localObject2 = getReadableDatabase().query("sn_organize", IMGroup.Table.TABLE_COLUMNS, ((StringBuilder)localObject2).toString(), null, null, null, null);
    }
    Object localObject4;
    try
    {
      ((android.database.Cursor)localObject2).moveToFirst();
      while (!((android.database.Cursor)localObject2).isAfterLast())
      {
        localObject3 = IMGroup.Table.parseCursor((android.database.Cursor)localObject2);
        if ((localObject3 != null) && (((IMGroup)localObject3).getMasterId() > 0L))
        {
          DatabaseCache.getInstance().cacheIMGroup((IMGroup)localObject3);
          paramSet.add(localObject3);
          localSet.remove(Long.valueOf(((IMGroup)localObject3).getId()));
          ((HashSet)localObject1).add(Long.valueOf(((IMGroup)localObject3).getMasterId()));
        }
        ((android.database.Cursor)localObject2).moveToNext();
      }
      localObject2 = paramSet.iterator();
    }
    catch (Exception localException)
    {
      v.b("DBManager", String.format("getImGroupsByIds failed. [%s]", new Object[] { localSet.toString() }), localException);
      if (localObject2 != null) {
        ((android.database.Cursor)localObject2).close();
      }
      for (;;)
      {
        if (((HashSet)localObject1).size() <= 0) {
          break label549;
        }
        localObject2 = getUsersByUserIds((Set)localObject1).founded();
        localObject1 = new HashMap(((Set)localObject2).size());
        localObject2 = ((Set)localObject2).iterator();
        while (((Iterator)localObject2).hasNext())
        {
          localObject4 = (User)((Iterator)localObject2).next();
          ((Map)localObject1).put(Long.valueOf(((User)localObject4).getUserId()), localObject4);
        }
        if (localObject2 != null) {
          ((android.database.Cursor)localObject2).close();
        }
      }
    }
    finally
    {
      if (localObject2 != null) {
        ((android.database.Cursor)localObject2).close();
      }
    }
    while (((Iterator)localObject2).hasNext())
    {
      localObject4 = (IMGroup)((Iterator)localObject2).next();
      ((IMGroup)localObject4).setMaster((User)((Map)localObject1).get(Long.valueOf(((IMGroup)localObject4).getMasterId())));
    }
    label549:
    return new ResultSet(paramSet, localSet);
  }
  
  public List<IMGroup> getIMGroupsByKeyword(String paramString)
  {
    Object localObject = getReadableDatabase();
    String str = String.format("%s = 1 and %s = 0 and %s like ?", new Object[] { "joined", "truncated", "name" });
    paramString = ((SQLiteDatabase)localObject).query("sn_organize", IMGroup.Table.TABLE_COLUMNS, str, new String[] { "%" + paramString + "%" }, null, null, "createdAt DESC");
    localObject = new ArrayList();
    paramString.moveToFirst();
    while (!paramString.isAfterLast())
    {
      ((List)localObject).add(IMGroup.Table.parseCursor(paramString));
      paramString.moveToNext();
    }
    paramString.close();
    return (List<IMGroup>)localObject;
  }
  
  public Talk getLatestCollapsedTalk()
  {
    try
    {
      Object localObject = DataStore.getInstance(this.mContext).getTalks(true);
      Collections.sort((List)localObject, Talk.COMPARATOR);
      Iterator localIterator = ((List)localObject).iterator();
      for (int i = 0; localIterator.hasNext(); i = ((Talk)localIterator.next()).getUnread() + i) {}
      if (((List)localObject).size() > 0)
      {
        localObject = (Talk)((List)localObject).get(0);
        ((Talk)localObject).setUnread(i);
        if (i > 0)
        {
          ((Talk)localObject).setSummary(String.format("[%d条未读消息]", new Object[] { Integer.valueOf(i) }));
          return (Talk)localObject;
        }
        ((Talk)localObject).setSummary("");
        return (Talk)localObject;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
  
  public byte[] getMessageDBSecret()
  {
    android.database.Cursor localCursor = getReadableDatabase().query("secret", new String[] { "secret" }, "name=?", new String[] { "message_db_key" }, null, null, "id desc", "1");
    if (localCursor != null) {}
    try
    {
      if (localCursor.getCount() > 0)
      {
        localCursor.moveToFirst();
        localObject3 = localCursor.getString(localCursor.getColumnIndex("secret")).getBytes(Charset.forName("UTF-8"));
        localObject1 = localObject3;
        if (!localCursor.isClosed())
        {
          localCursor.close();
          localObject1 = localObject3;
        }
        return (byte[])localObject1;
      }
      Object localObject1 = new Random(SystemClock.uptimeMillis());
      Object localObject3 = new byte[32];
      ((Random)localObject1).nextBytes((byte[])localObject3);
      localObject1 = w.a((byte[])localObject3);
      localObject3 = new ContentValues();
      ((ContentValues)localObject3).put("secret", (String)localObject1);
      ((ContentValues)localObject3).put("name", "message_db_key");
      ((ContentValues)localObject3).put("version", "0");
      getWritableDatabase().insert("secret", null, (ContentValues)localObject3);
      localObject3 = ((String)localObject1).getBytes(Charset.forName("UTF-8"));
      localObject1 = localObject3;
      return (byte[])localObject3;
    }
    finally
    {
      if (!localCursor.isClosed()) {
        localCursor.close();
      }
    }
  }
  
  public List<User> getUsersByKeyword(String paramString)
  {
    Object localObject1 = getReadableDatabase();
    Object localObject2 = String.format("%s = ? and %s = ? and (%s like ? or %s like ? or %s like ? or %s like ?)", new Object[] { "follow_me", "following", "pinyin_remark", "pinyin_screename", "remark", "screenName" });
    String str1 = paramString + "%";
    String str2 = paramString + "%";
    String str3 = "%" + paramString + "%";
    paramString = "%" + paramString + "%";
    paramString = ((SQLiteDatabase)localObject1).query("sn_user", new String[] { "userId", "profileImageUrl", "screenName", "description", "remark" }, (String)localObject2, new String[] { "1", "1", str1, str2, str3, paramString }, null, null, null);
    localObject1 = new ArrayList();
    paramString.moveToFirst();
    while (!paramString.isAfterLast())
    {
      localObject2 = new User();
      ((User)localObject2).setUserId(paramString.getLong(paramString.getColumnIndex("userId")));
      ((User)localObject2).setProfileImageUrl(paramString.getString(paramString.getColumnIndex("profileImageUrl")));
      ((User)localObject2).setScreenName(paramString.getString(paramString.getColumnIndex("screenName")));
      ((User)localObject2).setDescription(paramString.getString(paramString.getColumnIndex("description")));
      ((User)localObject2).setRemark(paramString.getString(paramString.getColumnIndex("remark")));
      ((List)localObject1).add(localObject2);
      paramString.moveToNext();
    }
    paramString.close();
    return (List<User>)localObject1;
  }
  
  /* Error */
  public ResultSet<User, Long> getUsersByUserIds(Set<Long> paramSet)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokeinterface 670 1 0
    //   6: ifeq +25 -> 31
    //   9: new 651	com/xueqiu/android/base/storage/ResultSet
    //   12: dup
    //   13: new 660	java/util/HashSet
    //   16: dup
    //   17: invokespecial 661	java/util/HashSet:<init>	()V
    //   20: new 660	java/util/HashSet
    //   23: dup
    //   24: invokespecial 661	java/util/HashSet:<init>	()V
    //   27: invokespecial 722	com/xueqiu/android/base/storage/ResultSet:<init>	(Ljava/util/Set;Ljava/util/Set;)V
    //   30: areturn
    //   31: invokestatic 403	com/xueqiu/android/base/storage/DatabaseCache:getInstance	()Lcom/xueqiu/android/base/storage/DatabaseCache;
    //   34: aload_1
    //   35: invokevirtual 841	com/xueqiu/android/base/storage/DatabaseCache:getUsers	(Ljava/util/Set;)Lcom/xueqiu/android/base/storage/ResultSet;
    //   38: astore_2
    //   39: new 660	java/util/HashSet
    //   42: dup
    //   43: invokespecial 661	java/util/HashSet:<init>	()V
    //   46: astore 5
    //   48: aload_1
    //   49: astore_3
    //   50: aload_2
    //   51: ifnull +41 -> 92
    //   54: aload_1
    //   55: astore_3
    //   56: aload_2
    //   57: invokevirtual 655	com/xueqiu/android/base/storage/ResultSet:founded	()Ljava/util/Set;
    //   60: invokeinterface 670 1 0
    //   65: ifne +27 -> 92
    //   68: aload 5
    //   70: aload_2
    //   71: invokevirtual 655	com/xueqiu/android/base/storage/ResultSet:founded	()Ljava/util/Set;
    //   74: invokeinterface 845 2 0
    //   79: pop
    //   80: new 660	java/util/HashSet
    //   83: dup
    //   84: aload_2
    //   85: invokevirtual 658	com/xueqiu/android/base/storage/ResultSet:missed	()Ljava/util/Set;
    //   88: invokespecial 848	java/util/HashSet:<init>	(Ljava/util/Collection;)V
    //   91: astore_3
    //   92: aload_3
    //   93: invokeinterface 670 1 0
    //   98: ifne +247 -> 345
    //   101: new 344	java/lang/StringBuilder
    //   104: dup
    //   105: invokespecial 671	java/lang/StringBuilder:<init>	()V
    //   108: astore_1
    //   109: aload_1
    //   110: ldc_w 850
    //   113: iconst_1
    //   114: anewarray 4	java/lang/Object
    //   117: dup
    //   118: iconst_0
    //   119: ldc_w 484
    //   122: aastore
    //   123: invokestatic 683	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   126: invokevirtual 356	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   129: pop
    //   130: aload_3
    //   131: invokeinterface 664 1 0
    //   136: astore_2
    //   137: iconst_0
    //   138: istore 6
    //   140: aload_2
    //   141: invokeinterface 593 1 0
    //   146: ifeq +60 -> 206
    //   149: aload_1
    //   150: ldc_w 679
    //   153: iconst_1
    //   154: anewarray 4	java/lang/Object
    //   157: dup
    //   158: iconst_0
    //   159: aload_2
    //   160: invokeinterface 597 1 0
    //   165: checkcast 469	java/lang/Long
    //   168: aastore
    //   169: invokestatic 683	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   172: invokevirtual 356	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   175: pop
    //   176: iload 6
    //   178: aload_3
    //   179: invokeinterface 686 1 0
    //   184: iconst_1
    //   185: isub
    //   186: if_icmpge +11 -> 197
    //   189: aload_1
    //   190: ldc_w 688
    //   193: invokevirtual 356	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   196: pop
    //   197: iload 6
    //   199: iconst_1
    //   200: iadd
    //   201: istore 6
    //   203: goto -63 -> 140
    //   206: aload_1
    //   207: ldc_w 690
    //   210: invokevirtual 356	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   213: pop
    //   214: aload_0
    //   215: invokespecial 431	com/xueqiu/android/base/storage/DBManager:getReadableDatabase	()Lcom/xueqiu/android/base/storage/SQLiteDatabase;
    //   218: astore_2
    //   219: aload_2
    //   220: ldc -56
    //   222: getstatic 289	com/xueqiu/android/base/storage/UserTable:TABLE_COLUMNS	[Ljava/lang/String;
    //   225: aload_1
    //   226: invokevirtual 360	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   229: aconst_null
    //   230: aconst_null
    //   231: aconst_null
    //   232: aconst_null
    //   233: invokevirtual 298	com/xueqiu/android/base/storage/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   236: astore_2
    //   237: aload_2
    //   238: astore_1
    //   239: aload_2
    //   240: invokeinterface 414 1 0
    //   245: pop
    //   246: aload_2
    //   247: astore_1
    //   248: aload_2
    //   249: invokeinterface 565 1 0
    //   254: ifne +102 -> 356
    //   257: aload_2
    //   258: astore_1
    //   259: aload_2
    //   260: invokestatic 307	com/xueqiu/android/base/storage/UserTable:parseCursor	(Landroid/database/Cursor;)Lcom/xueqiu/android/community/model/User;
    //   263: astore 4
    //   265: aload 4
    //   267: ifnull +43 -> 310
    //   270: aload_2
    //   271: astore_1
    //   272: aload_3
    //   273: aload 4
    //   275: invokevirtual 294	com/xueqiu/android/community/model/User:getUserId	()J
    //   278: invokestatic 472	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   281: invokeinterface 695 2 0
    //   286: pop
    //   287: aload_2
    //   288: astore_1
    //   289: aload 5
    //   291: aload 4
    //   293: invokeinterface 691 2 0
    //   298: pop
    //   299: aload_2
    //   300: astore_1
    //   301: invokestatic 403	com/xueqiu/android/base/storage/DatabaseCache:getInstance	()Lcom/xueqiu/android/base/storage/DatabaseCache;
    //   304: aload 4
    //   306: invokevirtual 407	com/xueqiu/android/base/storage/DatabaseCache:cacheUser	(Lcom/xueqiu/android/community/model/User;)Lcom/xueqiu/android/community/model/User;
    //   309: pop
    //   310: aload_2
    //   311: astore_1
    //   312: aload_2
    //   313: invokeinterface 576 1 0
    //   318: pop
    //   319: goto -73 -> 246
    //   322: astore 4
    //   324: aload_2
    //   325: astore_1
    //   326: ldc 13
    //   328: ldc -108
    //   330: aload 4
    //   332: invokestatic 853	com/xueqiu/android/base/util/v:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   335: aload_2
    //   336: ifnull +9 -> 345
    //   339: aload_2
    //   340: invokeinterface 326 1 0
    //   345: new 651	com/xueqiu/android/base/storage/ResultSet
    //   348: dup
    //   349: aload 5
    //   351: aload_3
    //   352: invokespecial 722	com/xueqiu/android/base/storage/ResultSet:<init>	(Ljava/util/Set;Ljava/util/Set;)V
    //   355: areturn
    //   356: aload_2
    //   357: ifnull -12 -> 345
    //   360: aload_2
    //   361: invokeinterface 326 1 0
    //   366: goto -21 -> 345
    //   369: astore_2
    //   370: aconst_null
    //   371: astore_1
    //   372: aload_1
    //   373: ifnull +9 -> 382
    //   376: aload_1
    //   377: invokeinterface 326 1 0
    //   382: aload_2
    //   383: athrow
    //   384: astore_2
    //   385: goto -13 -> 372
    //   388: astore 4
    //   390: aconst_null
    //   391: astore_2
    //   392: goto -68 -> 324
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	395	0	this	DBManager
    //   0	395	1	paramSet	Set<Long>
    //   38	323	2	localObject1	Object
    //   369	14	2	localObject2	Object
    //   384	1	2	localObject3	Object
    //   391	1	2	localObject4	Object
    //   49	303	3	localObject5	Object
    //   263	42	4	localUser	User
    //   322	9	4	localException1	Exception
    //   388	1	4	localException2	Exception
    //   46	304	5	localHashSet	HashSet
    //   138	64	6	i	int
    // Exception table:
    //   from	to	target	type
    //   239	246	322	java/lang/Exception
    //   248	257	322	java/lang/Exception
    //   259	265	322	java/lang/Exception
    //   272	287	322	java/lang/Exception
    //   289	299	322	java/lang/Exception
    //   301	310	322	java/lang/Exception
    //   312	319	322	java/lang/Exception
    //   219	237	369	finally
    //   239	246	384	finally
    //   248	257	384	finally
    //   259	265	384	finally
    //   272	287	384	finally
    //   289	299	384	finally
    //   301	310	384	finally
    //   312	319	384	finally
    //   326	335	384	finally
    //   219	237	388	java/lang/Exception
  }
  
  public boolean insertComment(Comment paramComment)
  {
    return insertComment(paramComment, -1);
  }
  
  public boolean insertComment(Comment paramComment, int paramInt)
  {
    if (paramComment.getUser() != null) {
      insertOrUpdateUserByKeepFollowShip(paramComment.getUser());
    }
    if (paramComment.getStatus() != null) {
      insertStatus(paramComment.getStatus());
    }
    if (paramComment.getReplyComment() != null) {
      insertComment(paramComment.getReplyComment());
    }
    paramComment = CommentTable.contentValues(paramComment);
    if (paramInt != -1) {
      paramComment.put("type", Integer.valueOf(paramInt));
    }
    return getWritableDatabase().replace("sn_comment", null, paramComment) != -1L;
  }
  
  public void insertComments(List<Comment> paramList, int paramInt)
  {
    v.a("DBManager", "comment ========================");
    SQLiteDatabase localSQLiteDatabase = getWritableDatabase();
    localSQLiteDatabase.delete("sn_comment", "type= ? ", new String[] { String.valueOf(paramInt) });
    try
    {
      localSQLiteDatabase.beginTransaction();
      int i = paramList.size() - 1;
      while (i >= 0)
      {
        Comment localComment1 = (Comment)paramList.get(i);
        if (localComment1.getReplyComment() != null)
        {
          Comment localComment2 = localComment1.getReplyComment();
          bool = insertComment(localComment2);
          v.a("DBManager", "insert a rely comment successful=" + bool + "+ commentid=" + localComment2.getText());
        }
        boolean bool = insertComment(localComment1, paramInt);
        v.a("DBManager", "insert a comment successful=" + bool + "+ commentid=" + localComment1.getText());
        i -= 1;
      }
      localSQLiteDatabase.setTransactionSuccessful();
      return;
    }
    finally
    {
      if (localSQLiteDatabase.inTransaction()) {
        localSQLiteDatabase.endTransaction();
      }
    }
  }
  
  public boolean insertDraft(Draft paramDraft)
  {
    if (paramDraft == null) {}
    while (getWritableDatabase().insert("t_draft_table", "", DraftTable.contentValues(paramDraft)) == -1L) {
      return false;
    }
    return true;
  }
  
  public boolean insertOrUpdateUserByKeepFollowShip(User paramUser)
  {
    return insertOrUpdateUserByKeepFollowShip(getWritableDatabase(), paramUser);
  }
  
  public boolean insertPortFolio(OldPortFolio paramOldPortFolio)
  {
    paramOldPortFolio = PortFolioTable.contentValues(paramOldPortFolio);
    return getWritableDatabase().replace("sn_portfolio", null, paramOldPortFolio) != -1L;
  }
  
  public void insertPortfolios(List<OldPortFolio> paramList)
  {
    SQLiteDatabase localSQLiteDatabase = getWritableDatabase();
    localSQLiteDatabase.delete("sn_portfolio", null, null);
    try
    {
      localSQLiteDatabase.beginTransaction();
      int i = paramList.size() - 1;
      while (i >= 0)
      {
        insertPortFolio((OldPortFolio)paramList.get(i));
        i -= 1;
      }
      localSQLiteDatabase.setTransactionSuccessful();
      return;
    }
    finally
    {
      if (localSQLiteDatabase.inTransaction()) {
        localSQLiteDatabase.endTransaction();
      }
    }
  }
  
  public void insertTimeline(List<Status> paramList, int paramInt)
  {
    SQLiteDatabase localSQLiteDatabase = getWritableDatabase();
    localSQLiteDatabase.delete("sn_status", "type= ? ", new String[] { String.valueOf(paramInt) });
    for (;;)
    {
      int i;
      try
      {
        localSQLiteDatabase.beginTransaction();
        i = paramList.size() - 1;
        if (i >= 0)
        {
          Status localStatus1 = (Status)paramList.get(i);
          if ((localStatus1 != null) && (localStatus1.getMark() == 0))
          {
            if (localStatus1.getRetweetedStatus() != null)
            {
              Status localStatus2 = localStatus1.getRetweetedStatus();
              bool = insertStatus(localSQLiteDatabase, localStatus2);
              v.a("DBManager", "insert a retweet status successful=" + bool + "+ statusId=" + localStatus2.getStatusId());
            }
            boolean bool = insertStatus(localSQLiteDatabase, localStatus1, paramInt);
            v.a("DBManager", "insert a status successful=" + bool + "+ statusId=" + localStatus1.getStatusId());
          }
        }
        else
        {
          localSQLiteDatabase.setTransactionSuccessful();
          return;
        }
      }
      finally
      {
        localSQLiteDatabase.endTransaction();
      }
      i -= 1;
    }
  }
  
  /* Error */
  public boolean insertUser(User paramUser)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 59	com/xueqiu/android/base/storage/DBManager:mContext	Landroid/content/Context;
    //   4: invokestatic 394	com/xueqiu/android/base/storage/prefs/DataStore:getInstance	(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;
    //   7: astore_2
    //   8: aload_2
    //   9: ifnull +8 -> 17
    //   12: aload_2
    //   13: aload_1
    //   14: invokevirtual 398	com/xueqiu/android/base/storage/prefs/DataStore:updateTalkInfo	(Lcom/xueqiu/android/community/model/User;)V
    //   17: invokestatic 403	com/xueqiu/android/base/storage/DatabaseCache:getInstance	()Lcom/xueqiu/android/base/storage/DatabaseCache;
    //   20: aload_1
    //   21: invokevirtual 407	com/xueqiu/android/base/storage/DatabaseCache:cacheUser	(Lcom/xueqiu/android/community/model/User;)Lcom/xueqiu/android/community/model/User;
    //   24: pop
    //   25: aload_0
    //   26: invokespecial 198	com/xueqiu/android/base/storage/DBManager:getWritableDatabase	()Lcom/xueqiu/android/base/storage/SQLiteDatabase;
    //   29: astore_2
    //   30: aload_2
    //   31: invokevirtual 893	com/xueqiu/android/base/storage/SQLiteDatabase:beginTransaction	()V
    //   34: aload_1
    //   35: invokevirtual 294	com/xueqiu/android/community/model/User:getUserId	()J
    //   38: lconst_0
    //   39: lcmp
    //   40: ifle +116 -> 156
    //   43: aload_1
    //   44: invokevirtual 294	com/xueqiu/android/community/model/User:getUserId	()J
    //   47: lstore 5
    //   49: aload_2
    //   50: ldc -56
    //   52: iconst_1
    //   53: anewarray 86	java/lang/String
    //   56: dup
    //   57: iconst_0
    //   58: ldc_w 409
    //   61: aastore
    //   62: ldc_w 411
    //   65: iconst_1
    //   66: anewarray 86	java/lang/String
    //   69: dup
    //   70: iconst_0
    //   71: lload 5
    //   73: invokestatic 189	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   76: aastore
    //   77: aconst_null
    //   78: aconst_null
    //   79: aconst_null
    //   80: invokevirtual 298	com/xueqiu/android/base/storage/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   83: astore_3
    //   84: aload_3
    //   85: invokeinterface 303 1 0
    //   90: ifle +60 -> 150
    //   93: aload_3
    //   94: invokeinterface 414 1 0
    //   99: pop
    //   100: aload_3
    //   101: iconst_0
    //   102: invokeinterface 418 2 0
    //   107: astore 4
    //   109: aload 4
    //   111: ifnull +15 -> 126
    //   114: aload 4
    //   116: aload_1
    //   117: invokevirtual 359	com/xueqiu/android/community/model/User:getScreenName	()Ljava/lang/String;
    //   120: invokevirtual 422	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   123: ifne +27 -> 150
    //   126: aload_2
    //   127: ldc -56
    //   129: ldc_w 424
    //   132: iconst_1
    //   133: anewarray 86	java/lang/String
    //   136: dup
    //   137: iconst_0
    //   138: aload_1
    //   139: invokevirtual 294	com/xueqiu/android/community/model/User:getUserId	()J
    //   142: invokestatic 189	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   145: aastore
    //   146: invokevirtual 427	com/xueqiu/android/base/storage/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   149: pop
    //   150: aload_3
    //   151: invokeinterface 326 1 0
    //   156: aload_2
    //   157: ldc -56
    //   159: aconst_null
    //   160: aload_1
    //   161: invokestatic 206	com/xueqiu/android/base/storage/UserTable:contentValues	(Lcom/xueqiu/android/community/model/User;)Landroid/content/ContentValues;
    //   164: invokevirtual 212	com/xueqiu/android/base/storage/SQLiteDatabase:replace	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   167: lstore 5
    //   169: aload_2
    //   170: invokevirtual 905	com/xueqiu/android/base/storage/SQLiteDatabase:setTransactionSuccessful	()V
    //   173: lload 5
    //   175: ldc2_w 44
    //   178: lcmp
    //   179: ifeq +13 -> 192
    //   182: iconst_1
    //   183: istore 7
    //   185: aload_2
    //   186: invokevirtual 911	com/xueqiu/android/base/storage/SQLiteDatabase:endTransaction	()V
    //   189: iload 7
    //   191: ireturn
    //   192: iconst_0
    //   193: istore 7
    //   195: goto -10 -> 185
    //   198: astore_1
    //   199: aload_2
    //   200: invokevirtual 911	com/xueqiu/android/base/storage/SQLiteDatabase:endTransaction	()V
    //   203: aload_1
    //   204: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	205	0	this	DBManager
    //   0	205	1	paramUser	User
    //   7	193	2	localObject	Object
    //   83	68	3	localCursor	android.database.Cursor
    //   107	8	4	str	String
    //   47	127	5	l	long
    //   183	11	7	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   30	109	198	finally
    //   114	126	198	finally
    //   126	150	198	finally
    //   150	156	198	finally
    //   156	173	198	finally
  }
  
  public void insertUsers(List<User> paramList)
  {
    SQLiteDatabase localSQLiteDatabase = getWritableDatabase();
    try
    {
      localSQLiteDatabase.beginTransaction();
      int i = paramList.size() - 1;
      while (i >= 0)
      {
        User localUser = (User)paramList.get(i);
        boolean bool = insertUser(localUser);
        v.a("DBManager", "insert a user successful=" + bool + "+ userid=" + localUser.getUserId());
        i -= 1;
      }
      localSQLiteDatabase.setTransactionSuccessful();
      return;
    }
    finally
    {
      if (localSQLiteDatabase.inTransaction()) {
        localSQLiteDatabase.endTransaction();
      }
    }
  }
  
  public boolean isFriend(long paramLong)
  {
    android.database.Cursor localCursor = getReadableDatabase().query("sn_user", UserTable.TABLE_COLUMNS, "follow_me = ? and following = ? and userId = ? ", new String[] { "1", "1", String.valueOf(paramLong) }, null, null, null);
    int i = localCursor.getCount();
    localCursor.close();
    return i == 1;
  }
  
  public void markTalkRead(Long paramLong, Boolean paramBoolean)
  {
    if (DataStore.getInstance(this.mContext) == null) {}
    do
    {
      return;
      paramLong = DataStore.getInstance(this.mContext).getTalk(paramLong.longValue(), paramBoolean.booleanValue());
    } while (paramLong == null);
    paramLong.setUnread(0);
    paramBoolean = DataStore.getInstance(this.mContext).getHeaderMessage(paramLong);
    if (paramBoolean != null) {
      paramLong.setReadAt(paramBoolean.getCreatedAt());
    }
    DataStore.getInstance(this.mContext).saveTalk(paramLong);
  }
  
  public boolean markTalkTargetReads(List<Long> paramList1, List<Boolean> paramList, List<Long> paramList2)
  {
    return markTalkTargetReads((Long[])paramList1.toArray(new Long[paramList1.size()]), (Boolean[])paramList.toArray(new Boolean[paramList.size()]), (Long[])paramList2.toArray(new Long[paramList2.size()]));
  }
  
  public boolean markTalkTargetReads(Long[] paramArrayOfLong1, Boolean[] paramArrayOfBoolean, Long[] paramArrayOfLong2)
  {
    assert ((paramArrayOfLong1.length == paramArrayOfLong2.length) && (paramArrayOfLong1.length == paramArrayOfBoolean.length));
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    if (i < paramArrayOfLong1.length)
    {
      long l1 = paramArrayOfLong1[i].longValue();
      boolean bool = paramArrayOfBoolean[i].booleanValue();
      long l2 = paramArrayOfLong2[i].longValue();
      Talk localTalk = DataStore.getInstance(this.mContext).getTalk(l1, bool);
      if (localTalk != null)
      {
        localArrayList.add(localTalk);
        if (l2 <= 0L) {
          break label135;
        }
        localTalk.setTargetReadAt(new Date(l2));
      }
      for (;;)
      {
        i += 1;
        break;
        label135:
        Message localMessage = DataStore.getInstance(this.mContext).getHeaderMessage(localTalk);
        if (localMessage != null) {
          localTalk.setTargetReadAt(localMessage.getCreatedAt());
        }
      }
    }
    DataStore.getInstance(this.mContext).saveTalks(localArrayList);
    return false;
  }
  
  public Comment queryCommentById(long paramLong)
  {
    android.database.Cursor localCursor = getReadableDatabase().query("sn_comment", CommentTable.TABLE_COLUMNS, "comment_id=" + paramLong, null, null, null, null);
    Comment localComment = CommentTable.parseCursor(localCursor);
    if (localComment.getUserId() > 0L) {
      localComment.setUser(queryUserByUserId(localComment.getUserId()));
    }
    if (localComment.getStatusId() > 0L) {
      localComment.setStatus(queryStatusById(localComment.getStatusId()));
    }
    if (localComment.getReplyCommentId() > 0L) {
      localComment.setReplyComment(queryCommentById(localComment.getReplyCommentId()));
    }
    localCursor.close();
    return localComment;
  }
  
  public List<Comment> queryComments(int paramInt)
  {
    android.database.Cursor localCursor = getReadableDatabase().query("sn_comment", CommentTable.TABLE_COLUMNS, "type= ?", new String[] { String.valueOf(paramInt) }, null, null, "created_at desc");
    ArrayList localArrayList = new ArrayList();
    if (localCursor != null)
    {
      localCursor.moveToFirst();
      while (!localCursor.isAfterLast())
      {
        Comment localComment = CommentTable.parseCursor(localCursor);
        if (localComment.getUserId() > 0L) {
          localComment.setUser(queryUserByUserId(localComment.getUserId()));
        }
        if (localComment.getStatusId() > 0L) {
          localComment.setStatus(queryStatusById(localComment.getStatusId()));
        }
        if (localComment.getReplyCommentId() > 0L) {
          localComment.setReplyComment(queryCommentById(localComment.getReplyCommentId()));
        }
        localArrayList.add(localComment);
        localCursor.moveToNext();
      }
      localCursor.close();
    }
    return localArrayList;
  }
  
  public List<OldPortFolio> queryPortFolios()
  {
    android.database.Cursor localCursor = getReadableDatabase().query("sn_portfolio", PortFolioTable.TABLE_COLUMNS, null, null, null, null, " ROWID desc");
    ArrayList localArrayList = new ArrayList();
    if (localCursor != null)
    {
      localCursor.moveToFirst();
      while (!localCursor.isAfterLast())
      {
        localArrayList.add(PortFolioTable.parseCursor(localCursor));
        localCursor.moveToNext();
      }
      localCursor.close();
    }
    return localArrayList;
  }
  
  public List<Status> queryTimeine(int paramInt)
  {
    return queryTimeine(paramInt, "created_at desc");
  }
  
  public List<Status> queryTimeine(int paramInt, String paramString)
  {
    paramString = getReadableDatabase().query("sn_status", StatusTable.TABLE_COLUMNS, "type= ?", new String[] { String.valueOf(paramInt) }, null, null, paramString);
    ArrayList localArrayList = new ArrayList();
    if (paramString != null)
    {
      paramString.moveToFirst();
      if (!paramString.isAfterLast())
      {
        Status localStatus = StatusTable.parseCursor(paramString);
        long l = localStatus.getUserId();
        if (l > 0L) {
          localStatus.setUser(queryUserByUserId(l));
        }
        for (;;)
        {
          if (localStatus.getReTweetStatusId() != 0L) {
            localStatus.setRetweetedStatus(queryStatusById(localStatus.getReTweetStatusId()));
          }
          localArrayList.add(localStatus);
          paramString.moveToNext();
          break;
          String str = localStatus.getScreenName();
          if ((str != null) && (!TextUtils.isEmpty(str))) {
            localStatus.setUser(queryUserByScreenName(str));
          }
        }
      }
      paramString.close();
    }
    return localArrayList;
  }
  
  public List<Status> queryTodayTopicStatuses(int paramInt)
  {
    return queryTimeine(paramInt, null);
  }
  
  /* Error */
  public User queryUserByScreenName(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: invokespecial 431	com/xueqiu/android/base/storage/DBManager:getReadableDatabase	()Lcom/xueqiu/android/base/storage/SQLiteDatabase;
    //   6: astore_3
    //   7: aload_3
    //   8: ldc -56
    //   10: getstatic 289	com/xueqiu/android/base/storage/UserTable:TABLE_COLUMNS	[Ljava/lang/String;
    //   13: ldc_w 1068
    //   16: iconst_1
    //   17: anewarray 86	java/lang/String
    //   20: dup
    //   21: iconst_0
    //   22: aload_1
    //   23: aastore
    //   24: aconst_null
    //   25: aconst_null
    //   26: aconst_null
    //   27: invokevirtual 298	com/xueqiu/android/base/storage/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   30: astore_1
    //   31: aload_1
    //   32: astore_2
    //   33: aload_2
    //   34: ifnull +22 -> 56
    //   37: aload_2
    //   38: astore_1
    //   39: aload_2
    //   40: invokestatic 307	com/xueqiu/android/base/storage/UserTable:parseCursor	(Landroid/database/Cursor;)Lcom/xueqiu/android/community/model/User;
    //   43: astore_3
    //   44: aload_2
    //   45: ifnull +9 -> 54
    //   48: aload_2
    //   49: invokeinterface 326 1 0
    //   54: aload_3
    //   55: areturn
    //   56: aload_2
    //   57: ifnull +9 -> 66
    //   60: aload_2
    //   61: invokeinterface 326 1 0
    //   66: aconst_null
    //   67: areturn
    //   68: astore_3
    //   69: aconst_null
    //   70: astore_2
    //   71: aload_2
    //   72: astore_1
    //   73: aload_3
    //   74: invokevirtual 66	java/lang/Exception:printStackTrace	()V
    //   77: aload_2
    //   78: ifnull -12 -> 66
    //   81: aload_2
    //   82: invokeinterface 326 1 0
    //   87: goto -21 -> 66
    //   90: astore_1
    //   91: aload_2
    //   92: ifnull +9 -> 101
    //   95: aload_2
    //   96: invokeinterface 326 1 0
    //   101: aload_1
    //   102: athrow
    //   103: astore_3
    //   104: aload_1
    //   105: astore_2
    //   106: aload_3
    //   107: astore_1
    //   108: goto -17 -> 91
    //   111: astore_3
    //   112: goto -41 -> 71
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	115	0	this	DBManager
    //   0	115	1	paramString	String
    //   1	105	2	str	String
    //   6	49	3	localObject1	Object
    //   68	6	3	localException1	Exception
    //   103	4	3	localObject2	Object
    //   111	1	3	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   7	31	68	java/lang/Exception
    //   7	31	90	finally
    //   39	44	103	finally
    //   73	77	103	finally
    //   39	44	111	java/lang/Exception
  }
  
  public User queryUserByUserId(long paramLong)
  {
    return queryUserByUserId(getReadableDatabase(), paramLong);
  }
  
  public boolean saveIMGroup(IMGroup paramIMGroup)
  {
    DataStore localDataStore = DataStore.getInstance(this.mContext);
    if (localDataStore == null) {}
    do
    {
      return false;
      localDataStore.updateTalkInfo(paramIMGroup);
      DatabaseCache.getInstance().cacheIMGroups(new HashSet(Arrays.asList(new IMGroup[] { paramIMGroup })));
      paramIMGroup = IMGroup.Table.contentValues(paramIMGroup);
    } while (getWritableDatabase().replace("sn_organize", null, paramIMGroup) == -1L);
    return true;
  }
  
  /* Error */
  public boolean saveIMGroups(List<IMGroup> paramList)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 59	com/xueqiu/android/base/storage/DBManager:mContext	Landroid/content/Context;
    //   4: invokestatic 394	com/xueqiu/android/base/storage/prefs/DataStore:getInstance	(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;
    //   7: astore_2
    //   8: aload_2
    //   9: ifnonnull +5 -> 14
    //   12: iconst_0
    //   13: ireturn
    //   14: aload_2
    //   15: aconst_null
    //   16: aload_1
    //   17: invokevirtual 1092	com/xueqiu/android/base/storage/prefs/DataStore:updateTalksInfo	(Ljava/util/List;Ljava/util/List;)V
    //   20: invokestatic 403	com/xueqiu/android/base/storage/DatabaseCache:getInstance	()Lcom/xueqiu/android/base/storage/DatabaseCache;
    //   23: new 660	java/util/HashSet
    //   26: dup
    //   27: aload_1
    //   28: invokespecial 848	java/util/HashSet:<init>	(Ljava/util/Collection;)V
    //   31: invokevirtual 1083	com/xueqiu/android/base/storage/DatabaseCache:cacheIMGroups	(Ljava/util/Set;)Ljava/util/Set;
    //   34: pop
    //   35: aload_0
    //   36: invokespecial 198	com/xueqiu/android/base/storage/DBManager:getWritableDatabase	()Lcom/xueqiu/android/base/storage/SQLiteDatabase;
    //   39: astore_2
    //   40: aload_2
    //   41: invokevirtual 893	com/xueqiu/android/base/storage/SQLiteDatabase:beginTransaction	()V
    //   44: aload_1
    //   45: invokeinterface 588 1 0
    //   50: astore_1
    //   51: aload_1
    //   52: invokeinterface 593 1 0
    //   57: ifeq +38 -> 95
    //   60: aload_0
    //   61: aload_1
    //   62: invokeinterface 597 1 0
    //   67: checkcast 632	com/xueqiu/android/message/model/IMGroup
    //   70: invokevirtual 1094	com/xueqiu/android/base/storage/DBManager:saveIMGroup	(Lcom/xueqiu/android/message/model/IMGroup;)Z
    //   73: pop
    //   74: goto -23 -> 51
    //   77: astore_1
    //   78: aload_1
    //   79: invokevirtual 66	java/lang/Exception:printStackTrace	()V
    //   82: aload_2
    //   83: invokevirtual 908	com/xueqiu/android/base/storage/SQLiteDatabase:inTransaction	()Z
    //   86: ifeq +7 -> 93
    //   89: aload_2
    //   90: invokevirtual 911	com/xueqiu/android/base/storage/SQLiteDatabase:endTransaction	()V
    //   93: iconst_0
    //   94: ireturn
    //   95: aload_2
    //   96: invokevirtual 905	com/xueqiu/android/base/storage/SQLiteDatabase:setTransactionSuccessful	()V
    //   99: aload_2
    //   100: invokevirtual 908	com/xueqiu/android/base/storage/SQLiteDatabase:inTransaction	()Z
    //   103: ifeq +7 -> 110
    //   106: aload_2
    //   107: invokevirtual 911	com/xueqiu/android/base/storage/SQLiteDatabase:endTransaction	()V
    //   110: iconst_1
    //   111: ireturn
    //   112: astore_1
    //   113: aload_2
    //   114: invokevirtual 908	com/xueqiu/android/base/storage/SQLiteDatabase:inTransaction	()Z
    //   117: ifeq +7 -> 124
    //   120: aload_2
    //   121: invokevirtual 911	com/xueqiu/android/base/storage/SQLiteDatabase:endTransaction	()V
    //   124: aload_1
    //   125: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	126	0	this	DBManager
    //   0	126	1	paramList	List<IMGroup>
    //   7	114	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   40	51	77	java/lang/Exception
    //   51	74	77	java/lang/Exception
    //   95	99	77	java/lang/Exception
    //   40	51	112	finally
    //   51	74	112	finally
    //   78	82	112	finally
    //   95	99	112	finally
  }
  
  public void saveSimpleUsers(List<User> paramList)
  {
    Object localObject = DataStore.getInstance(this.mContext);
    if (localObject == null) {
      return;
    }
    ((DataStore)localObject).updateTalksInfo(paramList, null);
    localObject = getWritableDatabase();
    for (;;)
    {
      User localUser;
      try
      {
        ((SQLiteDatabase)localObject).beginTransaction();
        Iterator localIterator = paramList.iterator();
        if (!localIterator.hasNext()) {
          break label287;
        }
        localUser = (User)localIterator.next();
        localCursor = ((SQLiteDatabase)localObject).query("sn_user", UserTable.TABLE_COLUMNS, "userId= ?", new String[] { String.valueOf(localUser.getUserId()) }, null, null, null);
        if (localCursor == null) {
          break label303;
        }
        try
        {
          paramList = UserTable.parseCursor(localCursor);
        }
        catch (Exception paramList)
        {
          v.c("DBManager", "", paramList);
          localCursor.close();
          paramList = null;
          continue;
        }
        finally
        {
          localCursor.close();
        }
        if (paramList != null)
        {
          paramList.setProfileImageUrl(localUser.getProfileImageUrl());
          paramList.setProfileLargeImageUrl(localUser.getProfileLargeImageUrl());
          paramList.setType(localUser.getType());
          paramList.setRemark(localUser.getRemark());
          paramList.setFollowing(localUser.isFollowing());
          paramList.setFollowMe(localUser.isFollowMe());
          paramList.setGender(localUser.getGender());
          DatabaseCache.getInstance().cacheUser(paramList);
          ((SQLiteDatabase)localObject).replace("sn_user", null, UserTable.contentValues(paramList));
          continue;
        }
      }
      catch (Exception paramList)
      {
        v.c("DBManager", "saveSimpleUsers", paramList);
        return;
      }
      finally
      {
        android.database.Cursor localCursor;
        if (((SQLiteDatabase)localObject).inTransaction()) {
          ((SQLiteDatabase)localObject).endTransaction();
        }
      }
      DatabaseCache.getInstance().cacheUser(localUser);
      ((SQLiteDatabase)localObject).insert("sn_user", null, UserTable.contentValues(localUser));
      continue;
      label287:
      ((SQLiteDatabase)localObject).setTransactionSuccessful();
      if (!((SQLiteDatabase)localObject).inTransaction()) {
        break;
      }
      ((SQLiteDatabase)localObject).endTransaction();
      return;
      label303:
      paramList = null;
    }
  }
  
  public List<Message> updateTalkByMessages(List<Message> paramList)
  {
    SQLiteDatabase localSQLiteDatabase = getReadableDatabase();
    HashMap localHashMap = new HashMap();
    Iterator localIterator = paramList.iterator();
    if (localIterator.hasNext())
    {
      Message localMessage = (Message)localIterator.next();
      Object localObject2 = (Talk)localHashMap.get(Long.valueOf(localMessage.getToId()));
      Object localObject1 = localObject2;
      if (localObject2 == null) {
        localObject1 = DataStore.getInstance(this.mContext).getTalk(localMessage);
      }
      localObject2 = localObject1;
      if (localObject1 == null)
      {
        localObject2 = localMessage.createTalk();
        ((Talk)localObject2).setUnread(1);
        ((Talk)localObject2).setActive(false);
      }
      localHashMap.put(Long.valueOf(((Talk)localObject2).getId()), localObject2);
      if (((Talk)localObject2).getReadAt().getTime() > localMessage.getCreatedAt().getTime())
      {
        localMessage.setNotify(false);
        label147:
        if (localMessage.getCreatedAt().getTime() < ((Talk)localObject2).getLastTime().getTime()) {
          break label337;
        }
        if ((!((Talk)localObject2).isActive()) && (localMessage.getType() != 7)) {
          collapseTalk(localSQLiteDatabase, localMessage, (Talk)localObject2);
        }
        ((Talk)localObject2).setActive(true);
        ((Talk)localObject2).loadLastMessage(localMessage);
        if (localMessage.getFromId() <= 0L) {
          break label359;
        }
        if (!((Talk)localObject2).isGroup()) {
          break label347;
        }
        localObject1 = queryUserByUserId(localSQLiteDatabase, localMessage.getFromId());
        if (localObject1 != null)
        {
          if (!localMessage.isByMyself()) {
            break label339;
          }
          localObject1 = "我";
          label248:
          ((Talk)localObject2).setSummary(String.format("%s:%s", new Object[] { localObject1, localMessage.getSummary() }));
        }
      }
      for (;;)
      {
        v.a("DBManager", String.format("update [talk:%s] [summary:%s] by [msg:%s].", new Object[] { ((Talk)localObject2).getName(), ((Talk)localObject2).getSummary(), localMessage }));
        break;
        if (((Talk)localObject2).isCollapsed())
        {
          localMessage.setNotify(false);
          break label147;
        }
        localMessage.setNotify(((Talk)localObject2).isNotify());
        break label147;
        label337:
        break;
        label339:
        localObject1 = ((User)localObject1).getScreenName();
        break label248;
        label347:
        ((Talk)localObject2).setSummary(localMessage.getSummary());
        continue;
        label359:
        if (localMessage.getType() == 7) {
          ((Talk)localObject2).setSummary(localMessage.getEventText(this));
        } else {
          ((Talk)localObject2).setSummary(localMessage.getSummary());
        }
      }
    }
    DataStore.getInstance(this.mContext).saveTalks(new ArrayList(localHashMap.values()));
    return paramList;
  }
  
  public boolean updateUnfollowedUsers(List<Long> paramList)
  {
    DatabaseCache.getInstance().invalidUsers(new HashSet(paramList));
    SQLiteDatabase localSQLiteDatabase = getWritableDatabase();
    StringBuilder localStringBuilder = new StringBuilder();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      localStringBuilder.append(((Long)paramList.next()).longValue());
      localStringBuilder.append(",");
    }
    if (localStringBuilder.indexOf(",") != -1) {
      localStringBuilder.deleteCharAt(localStringBuilder.lastIndexOf(","));
    }
    try
    {
      localSQLiteDatabase.beginTransaction();
      paramList = new ContentValues();
      paramList.put("following", Integer.valueOf(0));
      long l = localSQLiteDatabase.update("sn_user", paramList, "userId in (?)", new String[] { localStringBuilder.toString() });
      localSQLiteDatabase.setTransactionSuccessful();
      return l != -1L;
    }
    finally
    {
      if (localSQLiteDatabase.inTransaction()) {
        localSQLiteDatabase.endTransaction();
      }
    }
  }
  
  public boolean updateUserInfoById(ContentValues paramContentValues, String paramString)
  {
    DatabaseCache.getInstance().invalidUsers(new HashSet(Arrays.asList(new Long[] { Long.valueOf(paramString) })));
    SQLiteDatabase localSQLiteDatabase = getWritableDatabase();
    try
    {
      localSQLiteDatabase.beginTransaction();
      long l = localSQLiteDatabase.update("sn_user", paramContentValues, "userId=?", new String[] { paramString });
      localSQLiteDatabase.setTransactionSuccessful();
      return l != -1L;
    }
    finally
    {
      if (localSQLiteDatabase.inTransaction()) {
        localSQLiteDatabase.endTransaction();
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\storage\DBManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */