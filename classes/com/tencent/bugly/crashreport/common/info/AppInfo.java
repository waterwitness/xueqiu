package com.tencent.bugly.crashreport.common.info;

import android.app.ActivityManager;
import android.app.ActivityManager.MemoryInfo;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Process;
import com.tencent.bugly.proguard.w;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class AppInfo
{
  private static ActivityManager a;
  
  static
  {
    "@buglyAllChannel@".split(",");
    "@buglyAllChannelPriority@".split(",");
  }
  
  /* Error */
  public static String a(int paramInt)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 4
    //   3: new 29	java/io/FileReader
    //   6: dup
    //   7: new 31	java/lang/StringBuilder
    //   10: dup
    //   11: ldc 33
    //   13: invokespecial 36	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   16: iload_0
    //   17: invokevirtual 40	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   20: ldc 42
    //   22: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   25: invokevirtual 49	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   28: invokespecial 50	java/io/FileReader:<init>	(Ljava/lang/String;)V
    //   31: astore_2
    //   32: aload_2
    //   33: astore_1
    //   34: sipush 512
    //   37: newarray <illegal type>
    //   39: astore_3
    //   40: aload_2
    //   41: astore_1
    //   42: aload_2
    //   43: aload_3
    //   44: invokevirtual 54	java/io/FileReader:read	([C)I
    //   47: pop
    //   48: goto +94 -> 142
    //   51: aload_2
    //   52: astore_1
    //   53: new 14	java/lang/String
    //   56: dup
    //   57: aload_3
    //   58: invokespecial 57	java/lang/String:<init>	([C)V
    //   61: iconst_0
    //   62: iload 4
    //   64: invokevirtual 61	java/lang/String:substring	(II)Ljava/lang/String;
    //   67: astore_3
    //   68: aload_3
    //   69: astore_1
    //   70: aload_2
    //   71: invokevirtual 64	java/io/FileReader:close	()V
    //   74: aload_1
    //   75: areturn
    //   76: astore_3
    //   77: aconst_null
    //   78: astore_2
    //   79: aload_2
    //   80: astore_1
    //   81: aload_3
    //   82: invokestatic 69	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   85: ifne +9 -> 94
    //   88: aload_2
    //   89: astore_1
    //   90: aload_3
    //   91: invokevirtual 72	java/lang/Throwable:printStackTrace	()V
    //   94: iload_0
    //   95: invokestatic 75	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   98: astore_3
    //   99: aload_3
    //   100: astore_1
    //   101: aload_2
    //   102: ifnull -28 -> 74
    //   105: aload_2
    //   106: invokevirtual 64	java/io/FileReader:close	()V
    //   109: aload_3
    //   110: areturn
    //   111: astore_1
    //   112: aload_3
    //   113: areturn
    //   114: astore_2
    //   115: aconst_null
    //   116: astore_1
    //   117: aload_1
    //   118: ifnull +7 -> 125
    //   121: aload_1
    //   122: invokevirtual 64	java/io/FileReader:close	()V
    //   125: aload_2
    //   126: athrow
    //   127: astore_2
    //   128: aload_1
    //   129: areturn
    //   130: astore_1
    //   131: goto -6 -> 125
    //   134: astore_2
    //   135: goto -18 -> 117
    //   138: astore_3
    //   139: goto -60 -> 79
    //   142: iload 4
    //   144: sipush 512
    //   147: if_icmpge -96 -> 51
    //   150: aload_3
    //   151: iload 4
    //   153: caload
    //   154: ifeq -103 -> 51
    //   157: iload 4
    //   159: iconst_1
    //   160: iadd
    //   161: istore 4
    //   163: goto -21 -> 142
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	166	0	paramInt	int
    //   33	68	1	localObject1	Object
    //   111	1	1	localThrowable1	Throwable
    //   116	13	1	str1	String
    //   130	1	1	localThrowable2	Throwable
    //   31	75	2	localFileReader	java.io.FileReader
    //   114	12	2	localObject2	Object
    //   127	1	2	localThrowable3	Throwable
    //   134	1	2	localObject3	Object
    //   39	30	3	localObject4	Object
    //   76	15	3	localThrowable4	Throwable
    //   98	15	3	str2	String
    //   138	13	3	localThrowable5	Throwable
    //   1	161	4	i	int
    // Exception table:
    //   from	to	target	type
    //   3	32	76	java/lang/Throwable
    //   105	109	111	java/lang/Throwable
    //   3	32	114	finally
    //   70	74	127	java/lang/Throwable
    //   121	125	130	java/lang/Throwable
    //   34	40	134	finally
    //   42	48	134	finally
    //   53	68	134	finally
    //   81	88	134	finally
    //   90	94	134	finally
    //   34	40	138	java/lang/Throwable
    //   42	48	138	java/lang/Throwable
    //   53	68	138	java/lang/Throwable
  }
  
  public static String a(Context paramContext)
  {
    if (paramContext == null) {
      return null;
    }
    try
    {
      paramContext = paramContext.getPackageName();
      return paramContext;
    }
    catch (Throwable paramContext)
    {
      if (!w.a(paramContext)) {
        paramContext.printStackTrace();
      }
    }
    return "fail";
  }
  
  public static String a(PackageInfo paramPackageInfo)
  {
    if (paramPackageInfo == null) {
      return null;
    }
    try
    {
      paramPackageInfo = paramPackageInfo.versionName;
      return paramPackageInfo;
    }
    catch (Throwable paramPackageInfo)
    {
      if (!w.a(paramPackageInfo)) {
        paramPackageInfo.printStackTrace();
      }
    }
    return "fail";
  }
  
  public static List<String> a(Map<String, String> paramMap)
  {
    if (paramMap == null) {
      return null;
    }
    try
    {
      paramMap = (String)paramMap.get("BUGLY_DISABLE");
      if ((paramMap != null) && (paramMap.length() != 0))
      {
        paramMap = paramMap.split(",");
        int i = 0;
        while (i < paramMap.length)
        {
          paramMap[i] = paramMap[i].trim();
          i += 1;
        }
        paramMap = Arrays.asList(paramMap);
        return paramMap;
      }
    }
    catch (Throwable paramMap)
    {
      if (!w.a(paramMap)) {
        paramMap.printStackTrace();
      }
      return null;
    }
    return null;
  }
  
  public static boolean a(Context paramContext, String paramString)
  {
    if ((paramContext == null) || (paramString == null) || (paramString.trim().length() <= 0)) {}
    for (;;)
    {
      return false;
      try
      {
        paramContext = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 4096).requestedPermissions;
        if (paramContext != null)
        {
          int j = paramContext.length;
          int i = 0;
          while (i < j)
          {
            boolean bool = paramString.equals(paramContext[i]);
            if (bool) {
              return true;
            }
            i += 1;
          }
          if (w.a(paramContext)) {}
        }
      }
      catch (Throwable paramContext) {}
    }
    paramContext.printStackTrace();
    return false;
  }
  
  public static PackageInfo b(Context paramContext)
  {
    try
    {
      String str = a(paramContext);
      paramContext = paramContext.getPackageManager().getPackageInfo(str, 0);
      return paramContext;
    }
    catch (Throwable paramContext)
    {
      if (!w.a(paramContext)) {
        paramContext.printStackTrace();
      }
    }
    return null;
  }
  
  public static String b(PackageInfo paramPackageInfo)
  {
    if (paramPackageInfo == null) {
      return null;
    }
    try
    {
      paramPackageInfo = Integer.toString(paramPackageInfo.versionCode);
      return paramPackageInfo;
    }
    catch (Throwable paramPackageInfo)
    {
      if (!w.a(paramPackageInfo)) {
        paramPackageInfo.printStackTrace();
      }
    }
    return "fail";
  }
  
  public static String c(Context paramContext)
  {
    try
    {
      paramContext = a(Process.myPid());
      return paramContext;
    }
    catch (Throwable paramContext)
    {
      paramContext.printStackTrace();
    }
    return null;
  }
  
  public static Map<String, String> d(Context paramContext)
  {
    if (paramContext == null) {
      return null;
    }
    for (;;)
    {
      try
      {
        paramContext = paramContext.getPackageManager().getApplicationInfo(paramContext.getPackageName(), 128);
        if (paramContext.metaData == null) {
          break label206;
        }
        HashMap localHashMap = new HashMap();
        Object localObject = paramContext.metaData.get("BUGLY_DISABLE");
        if (localObject != null) {
          localHashMap.put("BUGLY_DISABLE", localObject.toString());
        }
        localObject = paramContext.metaData.get("BUGLY_APPID");
        if (localObject != null) {
          localHashMap.put("BUGLY_APPID", localObject.toString());
        }
        localObject = paramContext.metaData.get("BUGLY_APP_CHANNEL");
        if (localObject != null) {
          localHashMap.put("BUGLY_APP_CHANNEL", localObject.toString());
        }
        localObject = paramContext.metaData.get("BUGLY_APP_VERSION");
        if (localObject != null) {
          localHashMap.put("BUGLY_APP_VERSION", localObject.toString());
        }
        localObject = paramContext.metaData.get("BUGLY_ENABLE_DEBUG");
        if (localObject != null) {
          localHashMap.put("BUGLY_ENABLE_DEBUG", localObject.toString());
        }
        localObject = paramContext.metaData.get("com.tencent.rdm.uuid");
        paramContext = localHashMap;
        if (localObject != null)
        {
          localHashMap.put("com.tencent.rdm.uuid", localObject.toString());
          paramContext = localHashMap;
        }
        return paramContext;
      }
      catch (Throwable paramContext) {}
      if (w.a(paramContext)) {
        break;
      }
      paramContext.printStackTrace();
      return null;
      label206:
      paramContext = null;
    }
  }
  
  public static boolean e(Context paramContext)
  {
    if (paramContext == null) {
      return false;
    }
    if (a == null) {
      a = (ActivityManager)paramContext.getSystemService("activity");
    }
    try
    {
      paramContext = new ActivityManager.MemoryInfo();
      a.getMemoryInfo(paramContext);
      if (paramContext.lowMemory)
      {
        w.c("Memory is low.", new Object[0]);
        return true;
      }
      return false;
    }
    catch (Throwable paramContext)
    {
      if (!w.a(paramContext)) {
        paramContext.printStackTrace();
      }
    }
    return false;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\bugly\crashreport\common\info\AppInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */