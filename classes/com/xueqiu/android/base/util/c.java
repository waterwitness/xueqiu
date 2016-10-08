package com.xueqiu.android.base.util;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.util.Log;
import com.tencent.bugly.crashreport.CrashReport.CrashHandleCallback;
import com.xueqiu.android.base.d;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.TimeUnit;

public final class c
  extends CrashReport.CrashHandleCallback
{
  private static final long a = TimeUnit.DAYS.toMillis(7L);
  @SuppressLint({"SimpleDateFormat"})
  private static final DateFormat b = new SimpleDateFormat("yyyy-MM-dd");
  private final Context c;
  private String d;
  
  public c(Context paramContext)
  {
    this.c = paramContext;
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0);
      this.d = (paramContext.versionName + "(" + paramContext.versionCode + ")");
      return;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
  }
  
  private static String a()
  {
    String str = d.a + "crash/";
    File localFile = new File(str);
    if (!localFile.exists()) {
      localFile.mkdirs();
    }
    return str;
  }
  
  private boolean a(String paramString)
  {
    long l = a;
    Object localObject1 = new File(a());
    try
    {
      localObject1 = ((File)localObject1).listFiles(new FilenameFilter()
      {
        public final boolean accept(File paramAnonymousFile, String paramAnonymousString)
        {
          paramAnonymousFile = new File(paramAnonymousFile, paramAnonymousString);
          return this.a - paramAnonymousFile.lastModified() > this.b;
        }
      });
      if (localObject1 != null)
      {
        int j = localObject1.length;
        int i = 0;
        while (i < j)
        {
          k.b(localObject1[i]);
          i += 1;
        }
      }
      Object localObject2;
      String str1;
      Object localObject3;
      String str2;
      String str3;
      return false;
    }
    catch (Exception localException)
    {
      Log.v("CrashHandleCallback", "exception occurs when deleting outmoded logs", localException);
      localObject2 = b.format(new Date());
      str1 = "crash-" + (String)localObject2 + ".log";
      localObject2 = a();
      localObject3 = (String)localObject2 + str1;
      str1 = Build.VERSION.RELEASE;
      str2 = Build.MODEL;
      str3 = Build.MANUFACTURER;
      localObject3 = new File((String)localObject3);
      if (((File)localObject3).exists()) {
        ((File)localObject3).delete();
      }
      for (;;)
      {
        try
        {
          localObject2 = new PrintWriter((File)localObject3, "utf-8");
          ((PrintWriter)localObject2).write("Device: " + str3 + ", " + str2 + "\n");
          ((PrintWriter)localObject2).write("Android Version: " + str1 + "\n");
          if (this.d != null) {
            ((PrintWriter)localObject2).write("App Version: " + this.d + "\n");
          }
          ((PrintWriter)localObject2).write("---------------------\n\n");
          ((PrintWriter)localObject2).write(paramString);
          ((PrintWriter)localObject2).close();
          return true;
        }
        catch (FileNotFoundException paramString)
        {
          return false;
        }
        catch (UnsupportedEncodingException paramString) {}
        try
        {
          new File((String)localObject2).mkdirs();
          ((File)localObject3).createNewFile();
        }
        catch (IOException paramString)
        {
          return false;
        }
      }
    }
  }
  
  /* Error */
  public final java.util.Map<String, String> onCrashHandleStart(int paramInt, String paramString1, String paramString2, String paramString3)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 6
    //   3: aload_0
    //   4: monitorenter
    //   5: invokestatic 129	java/lang/System:currentTimeMillis	()J
    //   8: getstatic 216	com/xueqiu/android/base/SnowBallApplication:a	J
    //   11: lsub
    //   12: ldc2_w 217
    //   15: lcmp
    //   16: ifge +233 -> 249
    //   19: iload 6
    //   21: ifeq +10 -> 31
    //   24: aload_0
    //   25: getfield 51	com/xueqiu/android/base/util/c:c	Landroid/content/Context;
    //   28: invokestatic 222	com/xueqiu/android/base/n:a	(Landroid/content/Context;)V
    //   31: aload_0
    //   32: getfield 51	com/xueqiu/android/base/util/c:c	Landroid/content/Context;
    //   35: invokestatic 228	android/preference/PreferenceManager:getDefaultSharedPreferences	(Landroid/content/Context;)Landroid/content/SharedPreferences;
    //   38: invokeinterface 234 1 0
    //   43: astore 5
    //   45: aload 5
    //   47: invokeinterface 239 1 0
    //   52: pop
    //   53: aload 5
    //   55: invokeinterface 242 1 0
    //   60: aload_0
    //   61: getfield 51	com/xueqiu/android/base/util/c:c	Landroid/content/Context;
    //   64: invokestatic 246	com/xueqiu/android/base/storage/prefs/UserPrefs:clear	(Landroid/content/Context;)V
    //   67: invokestatic 251	com/xueqiu/android/base/q:a	()Lcom/xueqiu/android/base/q;
    //   70: astore 5
    //   72: aload 5
    //   74: getfield 254	com/xueqiu/android/base/q:a	Lcom/xueqiu/android/base/b/ae;
    //   77: ifnull +27 -> 104
    //   80: aload 5
    //   82: getfield 254	com/xueqiu/android/base/q:a	Lcom/xueqiu/android/base/b/ae;
    //   85: getfield 259	com/android/volley/p:d	Lcom/android/volley/b;
    //   88: ifnull +16 -> 104
    //   91: aload 5
    //   93: getfield 254	com/xueqiu/android/base/q:a	Lcom/xueqiu/android/base/b/ae;
    //   96: getfield 259	com/android/volley/p:d	Lcom/android/volley/b;
    //   99: invokeinterface 263 1 0
    //   104: aload_0
    //   105: getfield 51	com/xueqiu/android/base/util/c:c	Landroid/content/Context;
    //   108: invokestatic 269	com/xueqiu/android/base/storage/prefs/DataStore:getInstance	(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;
    //   111: invokevirtual 272	com/xueqiu/android/base/storage/prefs/DataStore:clearData	()V
    //   114: invokestatic 277	com/d/a/b/f:a	()Lcom/d/a/b/f;
    //   117: invokevirtual 280	com/d/a/b/f:e	()V
    //   120: invokestatic 285	com/xueqiu/android/base/storage/DBManager:getInstance	()Lcom/xueqiu/android/base/storage/DBManager;
    //   123: invokevirtual 286	com/xueqiu/android/base/storage/DBManager:clearData	()V
    //   126: aload_0
    //   127: getfield 51	com/xueqiu/android/base/util/c:c	Landroid/content/Context;
    //   130: invokestatic 289	com/xueqiu/android/base/n:b	(Landroid/content/Context;)Lcom/xueqiu/android/base/n;
    //   133: astore 5
    //   135: aload 5
    //   137: getfield 292	com/xueqiu/android/base/n:b	Lcom/alipay/euler/andfix/patch/PatchManager;
    //   140: invokevirtual 297	com/alipay/euler/andfix/patch/PatchManager:removeAllPatch	()V
    //   143: aload 5
    //   145: getfield 300	com/xueqiu/android/base/n:e	Landroid/content/SharedPreferences;
    //   148: invokeinterface 234 1 0
    //   153: astore 5
    //   155: aload 5
    //   157: ldc_w 302
    //   160: ldc_w 304
    //   163: invokeinterface 308 3 0
    //   168: pop
    //   169: aload 5
    //   171: invokeinterface 242 1 0
    //   176: invokestatic 313	com/xueqiu/android/base/i:a	()Lcom/xueqiu/android/base/h;
    //   179: new 315	com/xueqiu/android/common/model/SNBEvent
    //   182: dup
    //   183: sipush 1000
    //   186: bipush 11
    //   188: invokespecial 318	com/xueqiu/android/common/model/SNBEvent:<init>	(II)V
    //   191: invokevirtual 323	com/xueqiu/android/base/h:a	(Lcom/xueqiu/android/common/model/SNBEvent;)V
    //   194: ldc_w 325
    //   197: iconst_3
    //   198: anewarray 327	java/lang/Object
    //   201: dup
    //   202: iconst_0
    //   203: aload_2
    //   204: aastore
    //   205: dup
    //   206: iconst_1
    //   207: aload_3
    //   208: aastore
    //   209: dup
    //   210: iconst_2
    //   211: aload 4
    //   213: aastore
    //   214: invokestatic 332	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   217: astore 5
    //   219: invokestatic 337	com/xueqiu/android/base/g:a	()Lcom/xueqiu/android/base/f;
    //   222: getfield 342	com/xueqiu/android/base/f:b	Z
    //   225: ifeq +10 -> 235
    //   228: aload_0
    //   229: aload 5
    //   231: invokespecial 344	com/xueqiu/android/base/util/c:a	(Ljava/lang/String;)Z
    //   234: pop
    //   235: aload_0
    //   236: iload_1
    //   237: aload_2
    //   238: aload_3
    //   239: aload 4
    //   241: invokespecial 346	com/tencent/bugly/crashreport/CrashReport$CrashHandleCallback:onCrashHandleStart	(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    //   244: astore_2
    //   245: aload_0
    //   246: monitorexit
    //   247: aload_2
    //   248: areturn
    //   249: iconst_0
    //   250: istore 6
    //   252: goto -233 -> 19
    //   255: astore 5
    //   257: aload 5
    //   259: invokevirtual 347	java/lang/Throwable:printStackTrace	()V
    //   262: goto -86 -> 176
    //   265: astore 5
    //   267: goto -32 -> 235
    //   270: astore_2
    //   271: aload_0
    //   272: monitorexit
    //   273: aload_2
    //   274: athrow
    //   275: astore 5
    //   277: goto -246 -> 31
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	280	0	this	c
    //   0	280	1	paramInt	int
    //   0	280	2	paramString1	String
    //   0	280	3	paramString2	String
    //   0	280	4	paramString3	String
    //   43	187	5	localObject	Object
    //   255	3	5	localThrowable1	Throwable
    //   265	1	5	localThrowable2	Throwable
    //   275	1	5	localThrowable3	Throwable
    //   1	250	6	i	int
    // Exception table:
    //   from	to	target	type
    //   31	104	255	java/lang/Throwable
    //   104	176	255	java/lang/Throwable
    //   176	235	265	java/lang/Throwable
    //   257	262	265	java/lang/Throwable
    //   5	19	270	finally
    //   24	31	270	finally
    //   31	104	270	finally
    //   104	176	270	finally
    //   176	235	270	finally
    //   235	245	270	finally
    //   257	262	270	finally
    //   5	19	275	java/lang/Throwable
    //   24	31	275	java/lang/Throwable
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\util\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */