package com.xueqiu.android.base.storage.prefs;

import com.sleepycat.b.bp;
import com.sleepycat.b.i;
import com.sleepycat.b.l;
import com.sleepycat.b.x;
import com.sleepycat.b.z;
import com.xueqiu.android.base.util.k;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.message.database.comparator.MessageComparator;
import com.xueqiu.android.message.database.comparator.StringComparator;
import com.xueqiu.android.message.database.comparator.TalkComparator;
import java.io.File;
import java.io.IOException;

public class DbEnv
{
  private static final String TAG = "DbEnv";
  private static int dbNo = 0;
  private x dbEnv;
  private i messageDb;
  private i talkDb;
  private i talkMessageDb;
  private i talkTimelineDb;
  private i userPrefsDb;
  
  private l createConfig(boolean paramBoolean, Class paramClass)
  {
    boolean bool = true;
    l locall = new l();
    locall.d = true;
    if (!paramBoolean) {}
    for (;;)
    {
      locall.b = bool;
      locall.e = paramBoolean;
      locall.a(false);
      locall.a(paramClass);
      return locall;
      bool = false;
    }
  }
  
  public void clearData()
  {
    bp localbp = this.dbEnv.b();
    this.messageDb.close();
    this.talkDb.close();
    this.talkMessageDb.close();
    this.talkTimelineDb.close();
    this.userPrefsDb.close();
    this.dbEnv.a(localbp, "message");
    this.dbEnv.a(localbp, "talk");
    this.dbEnv.a(localbp, "talk_message");
    this.dbEnv.a(localbp, "talk_timeline");
    this.dbEnv.a(localbp, "user_prefs");
    localbp.b();
  }
  
  /* Error */
  public void close()
  {
    // Byte code:
    //   0: ldc 8
    //   2: ldc 94
    //   4: iconst_1
    //   5: anewarray 4	java/lang/Object
    //   8: dup
    //   9: iconst_0
    //   10: getstatic 22	com/xueqiu/android/base/storage/prefs/DbEnv:dbNo	I
    //   13: invokestatic 100	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   16: aastore
    //   17: invokestatic 106	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   20: invokestatic 111	com/xueqiu/android/base/util/v:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   23: aload_0
    //   24: getfield 58	com/xueqiu/android/base/storage/prefs/DbEnv:messageDb	Lcom/sleepycat/b/i;
    //   27: ifnull +10 -> 37
    //   30: aload_0
    //   31: getfield 58	com/xueqiu/android/base/storage/prefs/DbEnv:messageDb	Lcom/sleepycat/b/i;
    //   34: invokevirtual 63	com/sleepycat/b/i:close	()V
    //   37: aload_0
    //   38: getfield 65	com/xueqiu/android/base/storage/prefs/DbEnv:talkDb	Lcom/sleepycat/b/i;
    //   41: ifnull +10 -> 51
    //   44: aload_0
    //   45: getfield 65	com/xueqiu/android/base/storage/prefs/DbEnv:talkDb	Lcom/sleepycat/b/i;
    //   48: invokevirtual 63	com/sleepycat/b/i:close	()V
    //   51: aload_0
    //   52: getfield 67	com/xueqiu/android/base/storage/prefs/DbEnv:talkMessageDb	Lcom/sleepycat/b/i;
    //   55: ifnull +10 -> 65
    //   58: aload_0
    //   59: getfield 67	com/xueqiu/android/base/storage/prefs/DbEnv:talkMessageDb	Lcom/sleepycat/b/i;
    //   62: invokevirtual 63	com/sleepycat/b/i:close	()V
    //   65: aload_0
    //   66: getfield 69	com/xueqiu/android/base/storage/prefs/DbEnv:talkTimelineDb	Lcom/sleepycat/b/i;
    //   69: ifnull +10 -> 79
    //   72: aload_0
    //   73: getfield 69	com/xueqiu/android/base/storage/prefs/DbEnv:talkTimelineDb	Lcom/sleepycat/b/i;
    //   76: invokevirtual 63	com/sleepycat/b/i:close	()V
    //   79: aload_0
    //   80: getfield 71	com/xueqiu/android/base/storage/prefs/DbEnv:userPrefsDb	Lcom/sleepycat/b/i;
    //   83: ifnull +10 -> 93
    //   86: aload_0
    //   87: getfield 71	com/xueqiu/android/base/storage/prefs/DbEnv:userPrefsDb	Lcom/sleepycat/b/i;
    //   90: invokevirtual 63	com/sleepycat/b/i:close	()V
    //   93: aload_0
    //   94: getfield 51	com/xueqiu/android/base/storage/prefs/DbEnv:dbEnv	Lcom/sleepycat/b/x;
    //   97: ifnull +75 -> 172
    //   100: aload_0
    //   101: getfield 51	com/xueqiu/android/base/storage/prefs/DbEnv:dbEnv	Lcom/sleepycat/b/x;
    //   104: astore_1
    //   105: aload_1
    //   106: invokevirtual 113	com/sleepycat/b/x:e	()V
    //   109: aload_1
    //   110: invokevirtual 116	com/sleepycat/b/x:g	()V
    //   113: new 118	com/sleepycat/b/c
    //   116: dup
    //   117: invokespecial 119	com/sleepycat/b/c:<init>	()V
    //   120: astore_2
    //   121: aload_2
    //   122: iconst_1
    //   123: putfield 120	com/sleepycat/b/c:b	Z
    //   126: aload_2
    //   127: iconst_1
    //   128: putfield 121	com/sleepycat/b/c:e	Z
    //   131: aload_1
    //   132: getfield 124	com/sleepycat/b/x:a	Lcom/sleepycat/b/c/ad;
    //   135: aload_2
    //   136: ldc 126
    //   138: invokevirtual 131	com/sleepycat/b/c/ad:a	(Lcom/sleepycat/b/c;Ljava/lang/String;)Z
    //   141: pop
    //   142: aload_0
    //   143: getfield 51	com/xueqiu/android/base/storage/prefs/DbEnv:dbEnv	Lcom/sleepycat/b/x;
    //   146: astore_1
    //   147: aload_1
    //   148: invokevirtual 113	com/sleepycat/b/x:e	()V
    //   151: aload_1
    //   152: invokevirtual 116	com/sleepycat/b/x:g	()V
    //   155: aload_1
    //   156: getfield 124	com/sleepycat/b/x:a	Lcom/sleepycat/b/c/ad;
    //   159: getfield 135	com/sleepycat/b/c/ad:w	Lcom/sleepycat/b/g/am;
    //   162: invokevirtual 139	com/sleepycat/b/g/am:a	()V
    //   165: aload_0
    //   166: getfield 51	com/xueqiu/android/base/storage/prefs/DbEnv:dbEnv	Lcom/sleepycat/b/x;
    //   169: invokevirtual 140	com/sleepycat/b/x:close	()V
    //   172: return
    //   173: astore_1
    //   174: ldc 8
    //   176: ldc -114
    //   178: aload_1
    //   179: invokestatic 146	com/xueqiu/android/base/util/v:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   182: goto -145 -> 37
    //   185: astore_1
    //   186: ldc 8
    //   188: ldc -108
    //   190: aload_1
    //   191: invokestatic 146	com/xueqiu/android/base/util/v:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   194: goto -143 -> 51
    //   197: astore_1
    //   198: ldc 8
    //   200: ldc -106
    //   202: aload_1
    //   203: invokestatic 146	com/xueqiu/android/base/util/v:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   206: goto -141 -> 65
    //   209: astore_1
    //   210: ldc 8
    //   212: ldc -104
    //   214: aload_1
    //   215: invokestatic 146	com/xueqiu/android/base/util/v:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   218: goto -139 -> 79
    //   221: astore_1
    //   222: ldc 8
    //   224: ldc -102
    //   226: aload_1
    //   227: invokestatic 146	com/xueqiu/android/base/util/v:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   230: goto -137 -> 93
    //   233: astore_2
    //   234: aload_1
    //   235: getfield 124	com/sleepycat/b/x:a	Lcom/sleepycat/b/c/ad;
    //   238: ifnull +11 -> 249
    //   241: aload_1
    //   242: getfield 124	com/sleepycat/b/x:a	Lcom/sleepycat/b/c/ad;
    //   245: aload_2
    //   246: invokevirtual 157	com/sleepycat/b/c/ad:a	(Ljava/lang/Error;)V
    //   249: aload_2
    //   250: athrow
    //   251: astore_1
    //   252: ldc 8
    //   254: ldc -97
    //   256: aload_1
    //   257: invokestatic 146	com/xueqiu/android/base/util/v:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   260: goto -118 -> 142
    //   263: astore_2
    //   264: aload_1
    //   265: getfield 124	com/sleepycat/b/x:a	Lcom/sleepycat/b/c/ad;
    //   268: ifnull +11 -> 279
    //   271: aload_1
    //   272: getfield 124	com/sleepycat/b/x:a	Lcom/sleepycat/b/c/ad;
    //   275: aload_2
    //   276: invokevirtual 157	com/sleepycat/b/c/ad:a	(Ljava/lang/Error;)V
    //   279: aload_2
    //   280: athrow
    //   281: astore_1
    //   282: ldc 8
    //   284: ldc -95
    //   286: aload_1
    //   287: invokestatic 146	com/xueqiu/android/base/util/v:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   290: goto -125 -> 165
    //   293: astore_1
    //   294: ldc 8
    //   296: ldc -97
    //   298: aload_1
    //   299: invokestatic 146	com/xueqiu/android/base/util/v:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   302: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	303	0	this	DbEnv
    //   104	52	1	localx	x
    //   173	6	1	localThrowable1	Throwable
    //   185	6	1	localThrowable2	Throwable
    //   197	6	1	localThrowable3	Throwable
    //   209	6	1	localThrowable4	Throwable
    //   221	21	1	localThrowable5	Throwable
    //   251	21	1	localThrowable6	Throwable
    //   281	6	1	localThrowable7	Throwable
    //   293	6	1	localThrowable8	Throwable
    //   120	16	2	localc	com.sleepycat.b.c
    //   233	17	2	localError1	Error
    //   263	17	2	localError2	Error
    // Exception table:
    //   from	to	target	type
    //   30	37	173	java/lang/Throwable
    //   44	51	185	java/lang/Throwable
    //   58	65	197	java/lang/Throwable
    //   72	79	209	java/lang/Throwable
    //   86	93	221	java/lang/Throwable
    //   105	142	233	java/lang/Error
    //   100	105	251	java/lang/Throwable
    //   105	142	251	java/lang/Throwable
    //   234	249	251	java/lang/Throwable
    //   249	251	251	java/lang/Throwable
    //   147	165	263	java/lang/Error
    //   142	147	281	java/lang/Throwable
    //   147	165	281	java/lang/Throwable
    //   264	279	281	java/lang/Throwable
    //   279	281	281	java/lang/Throwable
    //   165	172	293	java/lang/Throwable
  }
  
  public x getDbEnv()
  {
    return this.dbEnv;
  }
  
  public i getMessageDb()
  {
    return this.messageDb;
  }
  
  public i getTalkDb()
  {
    return this.talkDb;
  }
  
  public i getTalkMessageDb()
  {
    return this.talkMessageDb;
  }
  
  public i getTalkTimelineDb()
  {
    return this.talkTimelineDb;
  }
  
  public i getUserPrefsDb()
  {
    return this.userPrefsDb;
  }
  
  public void setup(File paramFile, boolean paramBoolean)
  {
    int i = dbNo + 1;
    dbNo = i;
    v.a("DbEnv", String.format("setup database env:%d", new Object[] { Integer.valueOf(i) }));
    z localz = new z();
    localz.a(paramBoolean);
    boolean bool;
    if (!paramBoolean)
    {
      bool = true;
      localz.d = bool;
      localz.b();
      localz.e();
      if ((!paramFile.exists()) && (!paramFile.mkdirs())) {
        v.e("DbEnv", String.format("create directory %s failed.", new Object[] { paramFile.getAbsolutePath() }));
      }
    }
    for (;;)
    {
      try
      {
        this.dbEnv = new x(paramFile, localz);
        paramFile = this.dbEnv.b();
        this.messageDb = this.dbEnv.a(paramFile, "message", createConfig(paramBoolean, MessageComparator.class));
        this.talkDb = this.dbEnv.a(paramFile, "talk", createConfig(paramBoolean, TalkComparator.class));
        this.talkMessageDb = this.dbEnv.a(paramFile, "talk_message", createConfig(paramBoolean, TalkComparator.class));
        this.talkTimelineDb = this.dbEnv.a(paramFile, "talk_timeline", createConfig(paramBoolean, TalkComparator.class));
        this.userPrefsDb = this.dbEnv.a(paramFile, "user_prefs", createConfig(paramBoolean, StringComparator.class));
        paramFile.b();
        return;
      }
      catch (Throwable localThrowable)
      {
        v.b("DbEnv", "open db failed, will try again.", localThrowable);
      }
      bool = false;
      break;
      try
      {
        k.b(paramFile);
        paramFile.mkdirs();
        this.dbEnv = new x(paramFile, localz);
      }
      catch (IOException localIOException)
      {
        for (;;)
        {
          v.b("DbEnv", "", localThrowable);
        }
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\storage\prefs\DbEnv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */