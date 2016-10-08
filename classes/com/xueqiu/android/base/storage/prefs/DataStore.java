package com.xueqiu.android.base.storage.prefs;

import android.content.Context;
import com.sleepycat.b.ao;
import com.sleepycat.b.av;
import com.sleepycat.b.bp;
import com.sleepycat.b.e;
import com.sleepycat.b.i;
import com.sleepycat.b.m;
import com.sleepycat.b.n;
import com.sleepycat.b.x;
import com.snowballfinance.message.a.c;
import com.snowballfinance.message.a.d;
import com.xueqiu.android.base.b;
import com.xueqiu.android.base.storage.DBManager;
import com.xueqiu.android.base.util.k;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.message.database.bind.MessageBinding;
import com.xueqiu.android.message.database.bind.TalkBinding;
import com.xueqiu.android.message.database.comparator.MessageComparator;
import com.xueqiu.android.message.database.key.MessageKey;
import com.xueqiu.android.message.database.key.TalkKey;
import com.xueqiu.android.message.model.IMGroup;
import com.xueqiu.android.message.model.Message;
import com.xueqiu.android.message.model.Talk;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class DataStore
{
  private static final String DB_HOME = "db_home_v3";
  private static final int ENCRYPT_TIMES = 16;
  private static final String TAG = "DataStore";
  private static DataStore instance = null;
  private Context mContext;
  private DbEnv mDbEnv;
  private MessageBinding mMessageBinding;
  private long mOwnerId;
  private byte[] mSecret;
  private TalkBinding mTalkBinding;
  
  private DataStore(Context paramContext, long paramLong)
  {
    this.mContext = paramContext;
    this.mOwnerId = paramLong;
    this.mDbEnv = new DbEnv();
    this.mDbEnv.setup(getDatabasePath(paramLong, "db_home_v3"), false);
    this.mTalkBinding = new TalkBinding();
    this.mSecret = DBManager.getInstance().getMessageDBSecret();
    this.mMessageBinding = new MessageBinding(this.mSecret);
  }
  
  public static void close()
  {
    if (instance != null) {
      instance.closeEnv();
    }
  }
  
  private void closeEnv()
  {
    if (this.mDbEnv != null) {
      this.mDbEnv.close();
    }
    instance = null;
  }
  
  private static void destroyDBWhileOccurredException()
  {
    File localFile = getDatabasePath(UserLogonDataPrefs.getLogonUserId(), "db_home_v3");
    try
    {
      k.b(localFile);
      localFile.mkdirs();
      return;
    }
    catch (IOException localIOException)
    {
      v.b("DataStore", "", localIOException);
    }
  }
  
  private static File getDatabasePath(long paramLong, String paramString)
  {
    b.a();
    return new File(String.format("%s/%d/%s", new Object[] { b.d().getFilesDir().getAbsolutePath(), Long.valueOf(paramLong), paramString }));
  }
  
  private MessageKey getHeaderKey(bp parambp, long paramLong, boolean paramBoolean, ao paramao)
  {
    TalkKey localTalkKey = new TalkKey(paramLong, paramBoolean);
    m localm = new m();
    try
    {
      if (this.mDbEnv.getTalkMessageDb().a(parambp, new m(localTalkKey.getBytes()), localm, paramao) == av.a)
      {
        parambp = new MessageKey(localm.a);
        return parambp;
      }
    }
    catch (n parambp)
    {
      v.c("DataStore", String.format("getHeaderKey [%d:%s] failed.", new Object[] { Long.valueOf(paramLong), Boolean.valueOf(paramBoolean) }), parambp);
    }
    return null;
  }
  
  public static DataStore getInstance(Context paramContext)
  {
    long l = UserLogonDataPrefs.getLogonUserId();
    if ((instance == null) || (instance.mOwnerId != l)) {
      if (instance != null) {
        instance.closeEnv();
      }
    }
    try
    {
      instance = new DataStore(paramContext, l);
      return instance;
    }
    catch (Throwable localThrowable)
    {
      for (;;)
      {
        v.c("DataStore", "open db_env failed.", localThrowable);
        localThrowable.printStackTrace();
        recreateDBWhileOccurredException(paramContext, l);
      }
    }
  }
  
  private Message getMessage(bp parambp, MessageKey paramMessageKey, ao paramao)
  {
    m localm = new m();
    try
    {
      if (this.mDbEnv.getMessageDb().a(parambp, new m(paramMessageKey.getBytes()), localm, paramao) == av.a)
      {
        parambp = (Message)this.mMessageBinding.entryToObject(localm);
        return parambp;
      }
    }
    catch (n parambp)
    {
      parambp.printStackTrace();
    }
    return null;
  }
  
  private List<Message> getMessages(MessageKey paramMessageKey, int paramInt, boolean paramBoolean)
  {
    Object localObject2 = null;
    Object localObject1 = null;
    long l = System.currentTimeMillis();
    ArrayList localArrayList = new ArrayList();
    if (paramMessageKey == null) {
      return localArrayList;
    }
    for (;;)
    {
      try
      {
        locale = this.mDbEnv.getMessageDb().a(null, null);
        localObject1 = locale;
        localObject2 = locale;
        m localm1 = new m(paramMessageKey.getBytes());
        localObject1 = locale;
        localObject2 = locale;
        m localm2 = new m();
        localObject1 = locale;
        localObject2 = locale;
        if (locale.e(localm1, localm2, ao.a) == av.a)
        {
          int i = paramInt;
          if (!paramBoolean)
          {
            i = paramInt - 1;
            localObject1 = locale;
            localObject2 = locale;
            localArrayList.add((Message)this.mMessageBinding.entryToObject(localm2));
          }
          localObject1 = locale;
          localObject2 = locale;
          if ((locale.c(localm1, localm2, ao.a) == av.a) && (i > 0))
          {
            localObject1 = locale;
            localObject2 = locale;
            MessageKey localMessageKey = new MessageKey(localm1.a);
            localObject1 = locale;
            localObject2 = locale;
            if (localMessageKey.talkId == paramMessageKey.talkId)
            {
              localObject1 = locale;
              localObject2 = locale;
              if (localMessageKey.isGroup == paramMessageKey.isGroup)
              {
                localObject1 = locale;
                localObject2 = locale;
                localArrayList.add((Message)this.mMessageBinding.entryToObject(localm2));
                i -= 1;
                continue;
              }
            }
          }
        }
      }
      catch (n paramMessageKey)
      {
        e locale;
        localObject2 = localObject1;
        paramMessageKey.printStackTrace();
        if (localObject1 == null) {
          continue;
        }
        try
        {
          ((e)localObject1).close();
        }
        catch (n paramMessageKey)
        {
          paramMessageKey.printStackTrace();
        }
        continue;
      }
      finally
      {
        if (localObject2 == null) {
          break label378;
        }
      }
      try
      {
        locale.close();
        v.a("DataStore", String.format("get %d messages in %dms", new Object[] { Integer.valueOf(localArrayList.size()), Long.valueOf(System.currentTimeMillis() - l) }));
        return localArrayList;
      }
      catch (n paramMessageKey)
      {
        paramMessageKey.printStackTrace();
      }
    }
    try
    {
      ((e)localObject2).close();
      label378:
      throw paramMessageKey;
    }
    catch (n localn)
    {
      for (;;)
      {
        localn.printStackTrace();
      }
    }
  }
  
  public static void recreateDBWhileOccurredException(Context paramContext, long paramLong)
  {
    destroyDBWhileOccurredException();
    close();
    instance = null;
    try
    {
      instance = new DataStore(paramContext, paramLong);
      v.e("DataStore", "recreate db success");
      return;
    }
    catch (Throwable paramContext)
    {
      paramContext.printStackTrace();
      v.e("DataStore", "recreate db failed");
    }
  }
  
  public void clearData()
  {
    this.mDbEnv.clearData();
  }
  
  /* Error */
  public void deleteMessage(long paramLong1, long paramLong2, long paramLong3, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 46	com/xueqiu/android/base/storage/prefs/DataStore:mDbEnv	Lcom/xueqiu/android/base/storage/prefs/DbEnv;
    //   4: invokevirtual 296	com/xueqiu/android/base/storage/prefs/DbEnv:getDbEnv	()Lcom/sleepycat/b/x;
    //   7: invokevirtual 301	com/sleepycat/b/x:b	()Lcom/sleepycat/b/bp;
    //   10: astore 8
    //   12: new 155	com/xueqiu/android/message/database/key/TalkKey
    //   15: dup
    //   16: lload 5
    //   18: iload 7
    //   20: invokespecial 158	com/xueqiu/android/message/database/key/TalkKey:<init>	(JZ)V
    //   23: astore 12
    //   25: new 181	com/xueqiu/android/message/database/key/MessageKey
    //   28: dup
    //   29: lload_1
    //   30: lload_3
    //   31: lload 5
    //   33: iload 7
    //   35: invokespecial 303	com/xueqiu/android/message/database/key/MessageKey:<init>	(JJJZ)V
    //   38: astore 11
    //   40: new 160	com/sleepycat/b/m
    //   43: dup
    //   44: invokespecial 161	com/sleepycat/b/m:<init>	()V
    //   47: astore 13
    //   49: new 160	com/sleepycat/b/m
    //   52: dup
    //   53: invokespecial 161	com/sleepycat/b/m:<init>	()V
    //   56: astore 14
    //   58: aload 13
    //   60: aload 12
    //   62: invokevirtual 168	com/xueqiu/android/message/database/key/TalkKey:getBytes	()[B
    //   65: invokevirtual 305	com/sleepycat/b/m:a	([B)V
    //   68: aload_0
    //   69: aload 8
    //   71: lload 5
    //   73: iload 7
    //   75: getstatic 307	com/sleepycat/b/ao:d	Lcom/sleepycat/b/ao;
    //   78: invokespecial 309	com/xueqiu/android/base/storage/prefs/DataStore:getHeaderKey	(Lcom/sleepycat/b/bp;JZLcom/sleepycat/b/ao;)Lcom/xueqiu/android/message/database/key/MessageKey;
    //   81: astore 9
    //   83: aload 9
    //   85: ifnull +436 -> 521
    //   88: aload 9
    //   90: aload 11
    //   92: invokevirtual 312	com/xueqiu/android/message/database/key/MessageKey:equals	(Ljava/lang/Object;)Z
    //   95: ifeq +426 -> 521
    //   98: aload_0
    //   99: getfield 46	com/xueqiu/android/base/storage/prefs/DataStore:mDbEnv	Lcom/xueqiu/android/base/storage/prefs/DbEnv;
    //   102: invokevirtual 212	com/xueqiu/android/base/storage/prefs/DbEnv:getMessageDb	()Lcom/sleepycat/b/i;
    //   105: aload 8
    //   107: aconst_null
    //   108: invokevirtual 233	com/sleepycat/b/i:a	(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/g;)Lcom/sleepycat/b/e;
    //   111: astore 10
    //   113: aload 10
    //   115: astore 9
    //   117: aload 10
    //   119: new 160	com/sleepycat/b/m
    //   122: dup
    //   123: aload 11
    //   125: invokevirtual 213	com/xueqiu/android/message/database/key/MessageKey:getBytes	()[B
    //   128: invokespecial 169	com/sleepycat/b/m:<init>	([B)V
    //   131: aload 14
    //   133: getstatic 307	com/sleepycat/b/ao:d	Lcom/sleepycat/b/ao;
    //   136: invokevirtual 244	com/sleepycat/b/e:e	(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;
    //   139: getstatic 179	com/sleepycat/b/av:a	Lcom/sleepycat/b/av;
    //   142: if_acmpne +103 -> 245
    //   145: aload 10
    //   147: astore 9
    //   149: aload 10
    //   151: aload 13
    //   153: aload 14
    //   155: getstatic 238	com/sleepycat/b/ao:a	Lcom/sleepycat/b/ao;
    //   158: invokevirtual 252	com/sleepycat/b/e:c	(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;
    //   161: getstatic 179	com/sleepycat/b/av:a	Lcom/sleepycat/b/av;
    //   164: if_acmpne +81 -> 245
    //   167: aload 10
    //   169: astore 9
    //   171: new 181	com/xueqiu/android/message/database/key/MessageKey
    //   174: dup
    //   175: aload 13
    //   177: getfield 183	com/sleepycat/b/m:a	[B
    //   180: invokespecial 184	com/xueqiu/android/message/database/key/MessageKey:<init>	([B)V
    //   183: astore 14
    //   185: aload 10
    //   187: astore 9
    //   189: aload 14
    //   191: getfield 255	com/xueqiu/android/message/database/key/MessageKey:talkId	J
    //   194: lload 5
    //   196: lcmp
    //   197: ifne +99 -> 296
    //   200: aload 10
    //   202: astore 9
    //   204: aload 14
    //   206: getfield 259	com/xueqiu/android/message/database/key/MessageKey:isGroup	Z
    //   209: iload 7
    //   211: if_icmpne +85 -> 296
    //   214: aload 10
    //   216: astore 9
    //   218: aload_0
    //   219: getfield 46	com/xueqiu/android/base/storage/prefs/DataStore:mDbEnv	Lcom/xueqiu/android/base/storage/prefs/DbEnv;
    //   222: invokevirtual 165	com/xueqiu/android/base/storage/prefs/DbEnv:getTalkMessageDb	()Lcom/sleepycat/b/i;
    //   225: aload 8
    //   227: new 160	com/sleepycat/b/m
    //   230: dup
    //   231: aload 12
    //   233: invokevirtual 168	com/xueqiu/android/message/database/key/TalkKey:getBytes	()[B
    //   236: invokespecial 169	com/sleepycat/b/m:<init>	([B)V
    //   239: aload 13
    //   241: invokevirtual 315	com/sleepycat/b/i:a	(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/av;
    //   244: pop
    //   245: aload 10
    //   247: astore 9
    //   249: aload 10
    //   251: invokevirtual 260	com/sleepycat/b/e:close	()V
    //   254: aconst_null
    //   255: astore 10
    //   257: aload 10
    //   259: astore 9
    //   261: aload_0
    //   262: getfield 46	com/xueqiu/android/base/storage/prefs/DataStore:mDbEnv	Lcom/xueqiu/android/base/storage/prefs/DbEnv;
    //   265: invokevirtual 212	com/xueqiu/android/base/storage/prefs/DbEnv:getMessageDb	()Lcom/sleepycat/b/i;
    //   268: aload 8
    //   270: new 160	com/sleepycat/b/m
    //   273: dup
    //   274: aload 11
    //   276: invokevirtual 213	com/xueqiu/android/message/database/key/MessageKey:getBytes	()[B
    //   279: invokespecial 169	com/sleepycat/b/m:<init>	([B)V
    //   282: invokevirtual 318	com/sleepycat/b/i:a	(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/av;
    //   285: pop
    //   286: aload 10
    //   288: astore 9
    //   290: aload 8
    //   292: invokevirtual 322	com/sleepycat/b/bp:b	()V
    //   295: return
    //   296: aload 10
    //   298: astore 9
    //   300: aload_0
    //   301: getfield 46	com/xueqiu/android/base/storage/prefs/DataStore:mDbEnv	Lcom/xueqiu/android/base/storage/prefs/DbEnv;
    //   304: invokevirtual 165	com/xueqiu/android/base/storage/prefs/DbEnv:getTalkMessageDb	()Lcom/sleepycat/b/i;
    //   307: aload 8
    //   309: new 160	com/sleepycat/b/m
    //   312: dup
    //   313: aload 12
    //   315: invokevirtual 168	com/xueqiu/android/message/database/key/TalkKey:getBytes	()[B
    //   318: invokespecial 169	com/sleepycat/b/m:<init>	([B)V
    //   321: invokevirtual 318	com/sleepycat/b/i:a	(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/av;
    //   324: pop
    //   325: goto -80 -> 245
    //   328: astore 11
    //   330: aload 10
    //   332: astore 9
    //   334: aload 8
    //   336: astore 10
    //   338: aload 9
    //   340: astore 8
    //   342: aload 11
    //   344: astore 9
    //   346: ldc 14
    //   348: ldc_w 324
    //   351: iconst_4
    //   352: anewarray 4	java/lang/Object
    //   355: dup
    //   356: iconst_0
    //   357: lload_1
    //   358: invokestatic 140	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   361: aastore
    //   362: dup
    //   363: iconst_1
    //   364: lload_3
    //   365: invokestatic 140	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   368: aastore
    //   369: dup
    //   370: iconst_2
    //   371: lload 5
    //   373: invokestatic 140	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   376: aastore
    //   377: dup
    //   378: iconst_3
    //   379: iload 7
    //   381: invokestatic 191	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   384: aastore
    //   385: invokestatic 146	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   388: aload 9
    //   390: invokestatic 194	com/xueqiu/android/base/util/v:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   393: aload 10
    //   395: ifnull +8 -> 403
    //   398: aload 10
    //   400: invokevirtual 326	com/sleepycat/b/bp:a	()V
    //   403: aload 8
    //   405: ifnull -110 -> 295
    //   408: aload 8
    //   410: invokevirtual 260	com/sleepycat/b/e:close	()V
    //   413: return
    //   414: astore 8
    //   416: aload 8
    //   418: invokevirtual 220	com/sleepycat/b/n:printStackTrace	()V
    //   421: return
    //   422: astore 9
    //   424: aload 9
    //   426: invokevirtual 220	com/sleepycat/b/n:printStackTrace	()V
    //   429: goto -26 -> 403
    //   432: astore 10
    //   434: aload 8
    //   436: astore 9
    //   438: aload 10
    //   440: astore 8
    //   442: aload 9
    //   444: ifnull +8 -> 452
    //   447: aload 9
    //   449: invokevirtual 260	com/sleepycat/b/e:close	()V
    //   452: aload 8
    //   454: athrow
    //   455: astore 9
    //   457: aload 9
    //   459: invokevirtual 220	com/sleepycat/b/n:printStackTrace	()V
    //   462: goto -10 -> 452
    //   465: astore 8
    //   467: aconst_null
    //   468: astore 9
    //   470: goto -28 -> 442
    //   473: astore 8
    //   475: goto -33 -> 442
    //   478: astore 9
    //   480: aconst_null
    //   481: astore 10
    //   483: aconst_null
    //   484: astore 8
    //   486: goto -140 -> 346
    //   489: astore 9
    //   491: aconst_null
    //   492: astore 11
    //   494: aload 8
    //   496: astore 10
    //   498: aload 11
    //   500: astore 8
    //   502: goto -156 -> 346
    //   505: astore 9
    //   507: aconst_null
    //   508: astore 11
    //   510: aload 8
    //   512: astore 10
    //   514: aload 11
    //   516: astore 8
    //   518: goto -172 -> 346
    //   521: goto -267 -> 254
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	524	0	this	DataStore
    //   0	524	1	paramLong1	long
    //   0	524	3	paramLong2	long
    //   0	524	5	paramLong3	long
    //   0	524	7	paramBoolean	boolean
    //   10	399	8	localObject1	Object
    //   414	21	8	localn1	n
    //   440	13	8	localObject2	Object
    //   465	1	8	localObject3	Object
    //   473	1	8	localObject4	Object
    //   484	33	8	localObject5	Object
    //   81	308	9	localObject6	Object
    //   422	3	9	localn2	n
    //   436	12	9	localn3	n
    //   455	3	9	localn4	n
    //   468	1	9	localObject7	Object
    //   478	1	9	localException1	Exception
    //   489	1	9	localException2	Exception
    //   505	1	9	localException3	Exception
    //   111	288	10	localObject8	Object
    //   432	7	10	localObject9	Object
    //   481	32	10	localObject10	Object
    //   38	237	11	localMessageKey	MessageKey
    //   328	15	11	localException4	Exception
    //   492	23	11	localObject11	Object
    //   23	291	12	localTalkKey	TalkKey
    //   47	193	13	localm	m
    //   56	149	14	localObject12	Object
    // Exception table:
    //   from	to	target	type
    //   117	145	328	java/lang/Exception
    //   149	167	328	java/lang/Exception
    //   171	185	328	java/lang/Exception
    //   189	200	328	java/lang/Exception
    //   204	214	328	java/lang/Exception
    //   218	245	328	java/lang/Exception
    //   249	254	328	java/lang/Exception
    //   300	325	328	java/lang/Exception
    //   408	413	414	com/sleepycat/b/n
    //   398	403	422	com/sleepycat/b/n
    //   346	393	432	finally
    //   398	403	432	finally
    //   424	429	432	finally
    //   447	452	455	com/sleepycat/b/n
    //   0	12	465	finally
    //   12	83	465	finally
    //   88	113	465	finally
    //   117	145	473	finally
    //   149	167	473	finally
    //   171	185	473	finally
    //   189	200	473	finally
    //   204	214	473	finally
    //   218	245	473	finally
    //   249	254	473	finally
    //   261	286	473	finally
    //   290	295	473	finally
    //   300	325	473	finally
    //   0	12	478	java/lang/Exception
    //   12	83	489	java/lang/Exception
    //   88	113	489	java/lang/Exception
    //   261	286	505	java/lang/Exception
    //   290	295	505	java/lang/Exception
  }
  
  /* Error */
  public void deleteMessages(long paramLong, boolean paramBoolean)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: aload_0
    //   4: getfield 46	com/xueqiu/android/base/storage/prefs/DataStore:mDbEnv	Lcom/xueqiu/android/base/storage/prefs/DbEnv;
    //   7: invokevirtual 296	com/xueqiu/android/base/storage/prefs/DbEnv:getDbEnv	()Lcom/sleepycat/b/x;
    //   10: invokevirtual 301	com/sleepycat/b/x:b	()Lcom/sleepycat/b/bp;
    //   13: astore 5
    //   15: new 160	com/sleepycat/b/m
    //   18: dup
    //   19: new 155	com/xueqiu/android/message/database/key/TalkKey
    //   22: dup
    //   23: lload_1
    //   24: iload_3
    //   25: invokespecial 158	com/xueqiu/android/message/database/key/TalkKey:<init>	(JZ)V
    //   28: invokevirtual 168	com/xueqiu/android/message/database/key/TalkKey:getBytes	()[B
    //   31: invokespecial 169	com/sleepycat/b/m:<init>	([B)V
    //   34: astore 6
    //   36: aload_0
    //   37: aload 5
    //   39: lload_1
    //   40: iload_3
    //   41: getstatic 307	com/sleepycat/b/ao:d	Lcom/sleepycat/b/ao;
    //   44: invokespecial 309	com/xueqiu/android/base/storage/prefs/DataStore:getHeaderKey	(Lcom/sleepycat/b/bp;JZLcom/sleepycat/b/ao;)Lcom/xueqiu/android/message/database/key/MessageKey;
    //   47: astore 8
    //   49: aload 8
    //   51: ifnull +212 -> 263
    //   54: aload_0
    //   55: getfield 46	com/xueqiu/android/base/storage/prefs/DataStore:mDbEnv	Lcom/xueqiu/android/base/storage/prefs/DbEnv;
    //   58: invokevirtual 212	com/xueqiu/android/base/storage/prefs/DbEnv:getMessageDb	()Lcom/sleepycat/b/i;
    //   61: aload 5
    //   63: aconst_null
    //   64: invokevirtual 233	com/sleepycat/b/i:a	(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/g;)Lcom/sleepycat/b/e;
    //   67: astore 4
    //   69: new 160	com/sleepycat/b/m
    //   72: dup
    //   73: invokespecial 161	com/sleepycat/b/m:<init>	()V
    //   76: astore 7
    //   78: aload 4
    //   80: new 160	com/sleepycat/b/m
    //   83: dup
    //   84: aload 8
    //   86: invokevirtual 213	com/xueqiu/android/message/database/key/MessageKey:getBytes	()[B
    //   89: invokespecial 169	com/sleepycat/b/m:<init>	([B)V
    //   92: aload 7
    //   94: getstatic 307	com/sleepycat/b/ao:d	Lcom/sleepycat/b/ao;
    //   97: invokevirtual 244	com/sleepycat/b/e:e	(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;
    //   100: getstatic 179	com/sleepycat/b/av:a	Lcom/sleepycat/b/av;
    //   103: if_acmpne +140 -> 243
    //   106: aload 4
    //   108: invokevirtual 330	com/sleepycat/b/e:b	()Lcom/sleepycat/b/av;
    //   111: pop
    //   112: new 160	com/sleepycat/b/m
    //   115: dup
    //   116: invokespecial 161	com/sleepycat/b/m:<init>	()V
    //   119: astore 8
    //   121: aload 4
    //   123: aload 8
    //   125: aload 7
    //   127: getstatic 307	com/sleepycat/b/ao:d	Lcom/sleepycat/b/ao;
    //   130: invokevirtual 252	com/sleepycat/b/e:c	(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;
    //   133: getstatic 179	com/sleepycat/b/av:a	Lcom/sleepycat/b/av;
    //   136: if_acmpne +107 -> 243
    //   139: new 181	com/xueqiu/android/message/database/key/MessageKey
    //   142: dup
    //   143: aload 8
    //   145: getfield 183	com/sleepycat/b/m:a	[B
    //   148: invokespecial 184	com/xueqiu/android/message/database/key/MessageKey:<init>	([B)V
    //   151: astore 9
    //   153: aload 9
    //   155: getfield 255	com/xueqiu/android/message/database/key/MessageKey:talkId	J
    //   158: lload_1
    //   159: lcmp
    //   160: ifne +83 -> 243
    //   163: aload 9
    //   165: getfield 259	com/xueqiu/android/message/database/key/MessageKey:isGroup	Z
    //   168: iload_3
    //   169: if_icmpne +74 -> 243
    //   172: aload 4
    //   174: invokevirtual 330	com/sleepycat/b/e:b	()Lcom/sleepycat/b/av;
    //   177: pop
    //   178: goto -57 -> 121
    //   181: astore 7
    //   183: aload 5
    //   185: astore 6
    //   187: aload 7
    //   189: astore 5
    //   191: ldc 14
    //   193: ldc_w 332
    //   196: iconst_2
    //   197: anewarray 4	java/lang/Object
    //   200: dup
    //   201: iconst_0
    //   202: lload_1
    //   203: invokestatic 140	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   206: aastore
    //   207: dup
    //   208: iconst_1
    //   209: iload_3
    //   210: invokestatic 191	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   213: aastore
    //   214: invokestatic 146	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   217: aload 5
    //   219: invokestatic 194	com/xueqiu/android/base/util/v:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   222: aload 6
    //   224: ifnull +8 -> 232
    //   227: aload 6
    //   229: invokevirtual 326	com/sleepycat/b/bp:a	()V
    //   232: aload 4
    //   234: ifnull +8 -> 242
    //   237: aload 4
    //   239: invokevirtual 260	com/sleepycat/b/e:close	()V
    //   242: return
    //   243: aload 4
    //   245: invokevirtual 260	com/sleepycat/b/e:close	()V
    //   248: aload_0
    //   249: getfield 46	com/xueqiu/android/base/storage/prefs/DataStore:mDbEnv	Lcom/xueqiu/android/base/storage/prefs/DbEnv;
    //   252: invokevirtual 165	com/xueqiu/android/base/storage/prefs/DbEnv:getTalkMessageDb	()Lcom/sleepycat/b/i;
    //   255: aload 5
    //   257: aload 6
    //   259: invokevirtual 318	com/sleepycat/b/i:a	(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/av;
    //   262: pop
    //   263: aload 5
    //   265: invokevirtual 322	com/sleepycat/b/bp:b	()V
    //   268: return
    //   269: astore 4
    //   271: aload 5
    //   273: astore 6
    //   275: aconst_null
    //   276: astore 7
    //   278: aload 4
    //   280: astore 5
    //   282: aload 7
    //   284: astore 4
    //   286: goto -95 -> 191
    //   289: astore 6
    //   291: ldc 14
    //   293: ldc_w 334
    //   296: iconst_2
    //   297: anewarray 4	java/lang/Object
    //   300: dup
    //   301: iconst_0
    //   302: lload_1
    //   303: invokestatic 140	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   306: aastore
    //   307: dup
    //   308: iconst_1
    //   309: iload_3
    //   310: invokestatic 191	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   313: aastore
    //   314: invokestatic 146	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   317: aload 5
    //   319: invokestatic 194	com/xueqiu/android/base/util/v:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   322: goto -90 -> 232
    //   325: astore 5
    //   327: aload 4
    //   329: ifnull +8 -> 337
    //   332: aload 4
    //   334: invokevirtual 260	com/sleepycat/b/e:close	()V
    //   337: aload 5
    //   339: athrow
    //   340: astore 4
    //   342: aload 4
    //   344: invokevirtual 220	com/sleepycat/b/n:printStackTrace	()V
    //   347: return
    //   348: astore 4
    //   350: aload 4
    //   352: invokevirtual 220	com/sleepycat/b/n:printStackTrace	()V
    //   355: goto -18 -> 337
    //   358: astore 5
    //   360: aconst_null
    //   361: astore 4
    //   363: goto -36 -> 327
    //   366: astore 5
    //   368: goto -41 -> 327
    //   371: astore 5
    //   373: aconst_null
    //   374: astore 4
    //   376: goto -185 -> 191
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	379	0	this	DataStore
    //   0	379	1	paramLong	long
    //   0	379	3	paramBoolean	boolean
    //   67	177	4	locale	e
    //   269	10	4	localException1	Exception
    //   284	49	4	localObject1	Object
    //   340	3	4	localn1	n
    //   348	3	4	localn2	n
    //   361	14	4	localObject2	Object
    //   13	305	5	localObject3	Object
    //   325	13	5	localObject4	Object
    //   358	1	5	localObject5	Object
    //   366	1	5	localObject6	Object
    //   371	1	5	localException2	Exception
    //   1	273	6	localObject7	Object
    //   289	1	6	localn3	n
    //   76	50	7	localm	m
    //   181	7	7	localException3	Exception
    //   276	7	7	localObject8	Object
    //   47	97	8	localObject9	Object
    //   151	13	9	localMessageKey	MessageKey
    // Exception table:
    //   from	to	target	type
    //   69	121	181	java/lang/Exception
    //   121	178	181	java/lang/Exception
    //   243	248	181	java/lang/Exception
    //   15	49	269	java/lang/Exception
    //   54	69	269	java/lang/Exception
    //   248	263	269	java/lang/Exception
    //   263	268	269	java/lang/Exception
    //   227	232	289	com/sleepycat/b/n
    //   191	222	325	finally
    //   227	232	325	finally
    //   291	322	325	finally
    //   237	242	340	com/sleepycat/b/n
    //   332	337	348	com/sleepycat/b/n
    //   3	15	358	finally
    //   15	49	358	finally
    //   54	69	358	finally
    //   248	263	358	finally
    //   263	268	358	finally
    //   69	121	366	finally
    //   121	178	366	finally
    //   243	248	366	finally
    //   3	15	371	java/lang/Exception
  }
  
  public void deleteTalk(long paramLong, boolean paramBoolean)
  {
    m localm = new m(new TalkKey(paramLong, paramBoolean).getBytes());
    try
    {
      this.mDbEnv.getTalkDb().a(null, localm);
      return;
    }
    catch (n localn)
    {
      v.a("DataStore", String.format("delete talk [%d:%s] failed.", new Object[] { Long.valueOf(paramLong), Boolean.valueOf(paramBoolean) }), localn);
    }
  }
  
  public Message getHeaderMessage(Talk paramTalk)
  {
    Object localObject = null;
    MessageKey localMessageKey = getHeaderKey(null, paramTalk.getId(), paramTalk.isGroup(), ao.a);
    paramTalk = (Talk)localObject;
    if (localMessageKey != null) {
      paramTalk = getMessage(localMessageKey.messageId, localMessageKey.sequenceId, localMessageKey.talkId, localMessageKey.isGroup);
    }
    return paramTalk;
  }
  
  public Message getMessage(long paramLong1, long paramLong2, long paramLong3, boolean paramBoolean)
  {
    Object localObject = new MessageKey(paramLong1, paramLong2, paramLong3, paramBoolean);
    m localm = new m();
    try
    {
      if (this.mDbEnv.getMessageDb().a(null, new m(((MessageKey)localObject).getBytes()), localm, ao.a) == av.a)
      {
        localObject = (Message)this.mMessageBinding.entryToObject(localm);
        return (Message)localObject;
      }
    }
    catch (n localn)
    {
      localn.printStackTrace();
    }
    return null;
  }
  
  public List<Message> getMessages(long paramLong, boolean paramBoolean, int paramInt)
  {
    MessageKey localMessageKey = getHeaderKey(null, paramLong, paramBoolean, ao.a);
    if (localMessageKey != null) {
      return getMessages(localMessageKey, paramInt, false);
    }
    return new ArrayList();
  }
  
  public List<Message> getMessages(Message paramMessage, int paramInt, boolean paramBoolean)
  {
    return getMessages(new MessageKey(paramMessage), paramInt, paramBoolean);
  }
  
  public byte[] getPref(String paramString)
  {
    byte[] arrayOfByte = null;
    m localm = new m();
    try
    {
      if (this.mDbEnv.getUserPrefsDb().a(null, new m(paramString.getBytes(Charset.forName("UTF-8"))), localm, ao.a) == av.a) {
        arrayOfByte = c.a(localm.a, this.mSecret);
      }
      return arrayOfByte;
    }
    catch (Throwable localThrowable)
    {
      v.c("DataStore", String.format("getPref [%s] failed.", new Object[] { paramString }), localThrowable);
      recreateDBWhileOccurredException(this.mContext, this.mOwnerId);
    }
    return null;
  }
  
  public Talk getTalk(long paramLong, boolean paramBoolean)
  {
    Object localObject = new m(new TalkKey(paramLong, paramBoolean).getBytes());
    m localm = new m();
    try
    {
      if (this.mDbEnv.getTalkDb().a(null, (m)localObject, localm, ao.a) == av.a)
      {
        localObject = (Talk)this.mTalkBinding.entryToObject(localm);
        return (Talk)localObject;
      }
    }
    catch (n localn)
    {
      localn.printStackTrace();
    }
    return null;
  }
  
  public Talk getTalk(Message paramMessage)
  {
    paramMessage = new MessageKey(paramMessage);
    return getTalk(paramMessage.talkId, paramMessage.isGroup);
  }
  
  public long getTalkTimeline(long paramLong, boolean paramBoolean)
  {
    m localm1 = new m(new TalkKey(paramLong, paramBoolean).getBytes());
    m localm2 = new m();
    try
    {
      if (this.mDbEnv.getTalkTimelineDb().a(null, localm1, localm2, ao.a) == av.a)
      {
        long l = ByteBuffer.wrap(localm2.a).getLong();
        return l;
      }
    }
    catch (n localn)
    {
      v.a("DataStore", String.format("getTalkTS [%d:%s] failed.", new Object[] { Long.valueOf(paramLong), Boolean.valueOf(paramBoolean) }), localn);
    }
    return -1L;
  }
  
  public List<Talk> getTalks()
  {
    localObject3 = null;
    Object localObject1 = null;
    long l = System.currentTimeMillis();
    ArrayList localArrayList = new ArrayList();
    try
    {
      e locale = this.mDbEnv.getTalkDb().a(null, null);
      localObject1 = locale;
      localObject3 = locale;
      m localm1 = new m();
      localObject1 = locale;
      localObject3 = locale;
      m localm2 = new m();
      for (;;)
      {
        localObject1 = locale;
        localObject3 = locale;
        if (locale.c(localm1, localm2, ao.a) != av.a) {
          break;
        }
        localObject1 = locale;
        localObject3 = locale;
        if (((Talk)this.mTalkBinding.entryToObject(localm2)).isActive())
        {
          localObject1 = locale;
          localObject3 = locale;
          localArrayList.add((Talk)this.mTalkBinding.entryToObject(localm2));
        }
      }
      try
      {
        ((e)localObject3).close();
        throw ((Throwable)localObject2);
      }
      catch (n localn3)
      {
        for (;;)
        {
          localn3.printStackTrace();
        }
      }
    }
    catch (n localn4)
    {
      localObject3 = localObject1;
      localn4.printStackTrace();
      if (localObject1 != null) {}
      try
      {
        ((e)localObject1).close();
        for (;;)
        {
          v.a("DataStore", String.format("get %d talks in %dms", new Object[] { Integer.valueOf(localArrayList.size()), Long.valueOf(System.currentTimeMillis() - l) }));
          return localArrayList;
          if (localn4 != null) {
            try
            {
              localn4.close();
            }
            catch (n localn1)
            {
              localn1.printStackTrace();
            }
          }
        }
      }
      catch (n localn2)
      {
        for (;;)
        {
          localn2.printStackTrace();
        }
      }
    }
    finally
    {
      if (localObject3 == null) {}
    }
  }
  
  public List<Talk> getTalks(boolean paramBoolean)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = getTalks().iterator();
    while (localIterator.hasNext())
    {
      Talk localTalk = (Talk)localIterator.next();
      if (localTalk.isCollapsed() == paramBoolean) {
        localArrayList.add(localTalk);
      }
    }
    return localArrayList;
  }
  
  public void saveMessage(Message paramMessage)
  {
    MessageKey localMessageKey1 = new MessageKey(paramMessage);
    Object localObject = new TalkKey(localMessageKey1.talkId, localMessageKey1.isGroup);
    bp localbp2 = null;
    bp localbp1 = localbp2;
    try
    {
      MessageComparator localMessageComparator = new MessageComparator();
      localbp1 = localbp2;
      localbp2 = this.mDbEnv.getDbEnv().b();
      localbp1 = localbp2;
      MessageKey localMessageKey2 = getHeaderKey(localbp2, localMessageKey1.talkId, localMessageKey1.isGroup, ao.d);
      if (localMessageKey2 != null)
      {
        localbp1 = localbp2;
        if (localMessageComparator.compare(localMessageKey1.getBytes(), localMessageKey2.getBytes()) > 0) {}
      }
      else
      {
        localbp1 = localbp2;
        this.mDbEnv.getTalkMessageDb().a(localbp2, new m(((TalkKey)localObject).getBytes()), new m(localMessageKey1.getBytes()));
      }
      localbp1 = localbp2;
      localObject = new m();
      localbp1 = localbp2;
      this.mMessageBinding.objectToEntry(paramMessage, (m)localObject);
      localbp1 = localbp2;
      this.mDbEnv.getMessageDb().a(localbp2, new m(localMessageKey1.getBytes()), (m)localObject);
      localbp1 = localbp2;
      localbp2.b();
      return;
    }
    catch (n paramMessage)
    {
      do
      {
        paramMessage.printStackTrace();
      } while (localbp1 == null);
      try
      {
        localbp1.a();
        return;
      }
      catch (n paramMessage)
      {
        paramMessage.printStackTrace();
      }
    }
  }
  
  public List<Message> saveMessages(List<Message> paramList)
  {
    l = System.currentTimeMillis();
    localArrayList = new ArrayList();
    if ((paramList == null) || (paramList.size() == 0)) {
      return localArrayList;
    }
    localObject1 = null;
    localHashMap = new HashMap();
    try
    {
      bp localbp = this.mDbEnv.getDbEnv().b();
      localObject1 = localbp;
      MessageComparator localMessageComparator = new MessageComparator();
      localObject1 = localbp;
      Iterator localIterator = paramList.iterator();
      Message localMessage;
      MessageKey localMessageKey;
      TalkKey localTalkKey;
      Object localObject2;
      do
      {
        localObject1 = localbp;
        if (!localIterator.hasNext()) {
          break label546;
        }
        localObject1 = localbp;
        localMessage = (Message)localIterator.next();
        localObject1 = localbp;
        localMessageKey = new MessageKey(localMessage);
        localObject1 = localbp;
        localTalkKey = new TalkKey(localMessageKey.talkId, localMessageKey.isGroup);
        localObject1 = localbp;
        if (localMessage.isByMyself())
        {
          localObject1 = localbp;
          if (localMessage.getSequence() != 0L)
          {
            localObject1 = localbp;
            localObject2 = localMessageKey.copy();
            localObject1 = localbp;
            ((MessageKey)localObject2).messageId = 0L;
            localObject1 = localbp;
            this.mDbEnv.getMessageDb().a(localbp, new m(((MessageKey)localObject2).getBytes()));
          }
        }
        localObject1 = localbp;
        localObject2 = getMessage(localbp, localMessageKey, ao.a);
        if (localObject2 == null) {
          break;
        }
        localObject1 = localbp;
      } while (((Message)localObject2).getStatus() == 0);
      localObject1 = localbp;
      localArrayList.add(localMessage);
      localObject1 = localbp;
      if (localHashMap.containsKey(localTalkKey))
      {
        localObject1 = localbp;
        localObject2 = (MessageKey)localHashMap.get(localTalkKey);
      }
      for (;;)
      {
        if (localObject2 != null)
        {
          localObject1 = localbp;
          if (((MessageKey)localObject2).messageId == 0L)
          {
            localObject1 = localbp;
            if (((MessageKey)localObject2).sequenceId == localMessageKey.sequenceId)
            {
              localObject1 = localbp;
              localHashMap.put(localTalkKey, localMessageKey);
              label328:
              localObject1 = localbp;
              localObject2 = new m();
              localObject1 = localbp;
              this.mMessageBinding.objectToEntry(localMessage, (m)localObject2);
              localObject1 = localbp;
              this.mDbEnv.getMessageDb().a(localbp, new m(localMessageKey.getBytes()), (m)localObject2);
              break;
            }
          }
        }
        try
        {
          ((bp)localObject1).a();
          localArrayList.clear();
          for (;;)
          {
            v.a("DataStore", String.format("save %d messages in %dms", new Object[] { Integer.valueOf(paramList.size()), Long.valueOf(System.currentTimeMillis() - l) }));
            return localArrayList;
            localObject1 = localbp;
            Object localObject4 = getHeaderKey(localbp, localTalkKey.id, localTalkKey.isGroup, ao.d);
            Object localObject3 = localObject4;
            if (localObject4 == null) {
              break;
            }
            localObject1 = localbp;
            localHashMap.put(localTalkKey, localObject4);
            localObject3 = localObject4;
            break;
            if (localObject3 != null)
            {
              localObject1 = localbp;
              if (localMessageComparator.compare(localMessageKey.getBytes(), ((MessageKey)localObject3).getBytes()) > 0) {
                break label328;
              }
            }
            localObject1 = localbp;
            localHashMap.put(localTalkKey, localMessageKey);
            break label328;
            localObject1 = localbp;
            localObject3 = localHashMap.entrySet().iterator();
            for (;;)
            {
              localObject1 = localbp;
              if (!((Iterator)localObject3).hasNext()) {
                break;
              }
              localObject1 = localbp;
              localObject4 = (Map.Entry)((Iterator)localObject3).next();
              localObject1 = localbp;
              this.mDbEnv.getTalkMessageDb().a(localbp, new m(((TalkKey)((Map.Entry)localObject4).getKey()).getBytes()), new m(((MessageKey)((Map.Entry)localObject4).getValue()).getBytes()));
            }
            localObject1 = localbp;
            localbp.b();
          }
        }
        catch (n localn)
        {
          for (;;)
          {
            localn.printStackTrace();
          }
        }
      }
    }
    catch (Exception localException)
    {
      v.c("DataStore", "saveMessages failed.", localException);
      if (localObject1 == null) {}
    }
  }
  
  public void saveTalk(Talk paramTalk)
  {
    ArrayList localArrayList = new ArrayList(1);
    localArrayList.add(paramTalk);
    saveTalks(localArrayList);
  }
  
  public void saveTalkTimeline(long paramLong1, boolean paramBoolean, long paramLong2)
  {
    TalkKey localTalkKey = new TalkKey(paramLong1, paramBoolean);
    ByteBuffer localByteBuffer = ByteBuffer.allocate(8);
    localByteBuffer.putLong(paramLong2);
    try
    {
      this.mDbEnv.getTalkTimelineDb().a(null, new m(localTalkKey.getBytes()), new m(localByteBuffer.array()));
      return;
    }
    catch (n localn)
    {
      localn.printStackTrace();
    }
  }
  
  public void saveTalks(List<Talk> paramList)
  {
    long l = System.currentTimeMillis();
    TalkKey localTalkKey = new TalkKey(0L, false);
    localIterator2 = null;
    try
    {
      localbp = this.mDbEnv.getDbEnv().b();
      try
      {
        localIterator2 = paramList.iterator();
        while (localIterator2.hasNext())
        {
          Talk localTalk1 = (Talk)localIterator2.next();
          localTalkKey.id = localTalk1.getId();
          localTalkKey.isGroup = localTalk1.isGroup();
          m localm1 = new m(localTalkKey.getBytes());
          m localm2 = new m();
          if (((localTalk1.getName() == null) || (localTalk1.getName().length() == 0) || (localTalk1.getProfileImageUrl() == null) || (localTalk1.getProfileImageUrl().length() == 0)) && (this.mDbEnv.getTalkDb().a(localbp, localm1, localm2, ao.a) == av.a))
          {
            Talk localTalk2 = (Talk)this.mTalkBinding.entryToObject(localm2);
            if ((localTalk1.getName() == null) || (localTalk1.getName().length() == 0)) {
              localTalk1.setName(localTalk2.getName());
            }
            if ((localTalk1.getProfileImageUrl() == null) || (localTalk1.getProfileImageUrl().length() == 0)) {
              localTalk1.setProfileImageUrl(localTalk2.getProfileImageUrl());
            }
          }
          this.mTalkBinding.objectToEntry(localTalk1, localm2);
          this.mDbEnv.getTalkDb().a(localbp, localm1, localm2);
        }
        v.c("DataStore", "saveTalks failed.", localn1);
      }
      catch (n localn1) {}
    }
    catch (n localn2)
    {
      for (;;)
      {
        bp localbp;
        Iterator localIterator1 = localIterator2;
      }
    }
    if (localbp != null) {}
    try
    {
      localbp.a();
      for (;;)
      {
        v.a("DataStore", String.format("save %d talks in %dms.", new Object[] { Integer.valueOf(paramList.size()), Long.valueOf(System.currentTimeMillis() - l) }));
        return;
        localbp.b();
      }
    }
    catch (n localn3)
    {
      for (;;)
      {
        v.c("DataStore", "saveTalks abort transaction failed.", localn1);
      }
    }
  }
  
  public boolean setPref(String paramString, byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {}
    for (;;)
    {
      return false;
      try
      {
        av localav1 = this.mDbEnv.getUserPrefsDb().a(null, new m(paramString.getBytes(Charset.forName("UTF-8"))), new m(d.a(paramArrayOfByte, this.mSecret)));
        av localav2 = av.a;
        if (localav1 == localav2) {
          return true;
        }
      }
      catch (Throwable localThrowable)
      {
        v.c("DataStore", String.format("setPref [%s:%s] failed.", new Object[] { paramString, new String(paramArrayOfByte, Charset.forName("UTF-8")) }), localThrowable);
      }
    }
    return false;
  }
  
  public void updateTalkInfo(User paramUser)
  {
    ArrayList localArrayList = new ArrayList(1);
    localArrayList.add(paramUser);
    updateTalksInfo(localArrayList, null);
  }
  
  public void updateTalkInfo(IMGroup paramIMGroup)
  {
    ArrayList localArrayList = new ArrayList(1);
    localArrayList.add(paramIMGroup);
    updateTalksInfo(null, localArrayList);
  }
  
  public void updateTalksInfo(List<User> paramList, List<IMGroup> paramList1)
  {
    ArrayList localArrayList = new ArrayList();
    Object localObject;
    if (paramList != null)
    {
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        localObject = (User)paramList.next();
        Talk localTalk = getTalk(((User)localObject).getUserId(), false);
        if (localTalk != null)
        {
          localTalk.setName(((User)localObject).getScreenName());
          localTalk.setProfileImageUrl(((User)localObject).getProfileLargeImageUrl());
          localArrayList.add(localTalk);
        }
      }
    }
    if (paramList1 != null)
    {
      paramList = paramList1.iterator();
      while (paramList.hasNext())
      {
        paramList1 = (IMGroup)paramList.next();
        localObject = getTalk(paramList1.getId(), true);
        if (localObject != null)
        {
          ((Talk)localObject).setName(paramList1.getName());
          ((Talk)localObject).setProfileImageUrl(paramList1.getProfileImageUrl());
          localArrayList.add(localObject);
        }
      }
    }
    saveTalks(localArrayList);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\storage\prefs\DataStore.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */