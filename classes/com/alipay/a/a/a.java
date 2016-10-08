package com.alipay.a.a;

import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.res.Resources;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.StatFs;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.util.Log;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public final class a
{
  private static a a = new a();
  
  public static a a()
  {
    return a;
  }
  
  public static String a(Context paramContext)
  {
    return ((WifiManager)paramContext.getSystemService("wifi")).getConnectionInfo().getMacAddress();
  }
  
  public static String b()
  {
    String str2 = "";
    Object localObject = str2;
    for (;;)
    {
      try
      {
        localFileReader = new FileReader("/proc/cpuinfo");
        str1 = str2;
        localObject = str2;
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
        FileReader localFileReader;
        String str1;
        BufferedReader localBufferedReader;
        continue;
      }
      try
      {
        localBufferedReader = new BufferedReader(localFileReader, 1024);
        str1 = str2;
        localObject = str2;
        str2 = localBufferedReader.readLine();
        str1 = str2;
        localObject = str2;
        localBufferedReader.close();
        str1 = str2;
        localObject = str2;
        localFileReader.close();
        localObject = str2;
      }
      catch (IOException localIOException)
      {
        localObject = str1;
        Log.i("deviceid", "getCpuNum" + localIOException.getLocalizedMessage());
        localObject = str1;
      }
    }
    if (localObject != null) {
      return ((String)localObject).substring(((String)localObject).indexOf(':') + 1).trim();
    }
    return "";
  }
  
  public static String b(Context paramContext)
  {
    if (paramContext != null) {
      try
      {
        paramContext = (TelephonyManager)paramContext.getSystemService("phone");
        if (paramContext != null)
        {
          paramContext = paramContext.getDeviceId();
          return paramContext;
        }
      }
      catch (Exception paramContext) {}
    }
    return null;
  }
  
  public static String c()
  {
    try
    {
      i = Build.VERSION.class.getField("SDK_INT").getInt(null);
      return Integer.toString(i);
    }
    catch (Exception localException1)
    {
      for (;;)
      {
        try
        {
          i = Integer.parseInt((String)Build.VERSION.class.getField("SDK").get(null));
        }
        catch (Exception localException2)
        {
          int i = 2;
        }
      }
    }
  }
  
  public static String c(Context paramContext)
  {
    if (paramContext != null) {
      try
      {
        paramContext = (TelephonyManager)paramContext.getSystemService("phone");
        if (paramContext != null)
        {
          paramContext = paramContext.getSubscriberId();
          return paramContext;
        }
      }
      catch (Exception paramContext) {}
    }
    return null;
  }
  
  public static String d()
  {
    return Build.VERSION.RELEASE;
  }
  
  public static String d(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getResources().getDisplayMetrics();
      paramContext = Integer.toString(paramContext.widthPixels) + "*" + Integer.toString(paramContext.heightPixels);
      return paramContext;
    }
    catch (Exception paramContext) {}
    return null;
  }
  
  public static String e()
  {
    return Build.MODEL;
  }
  
  public static String e(Context paramContext)
  {
    return paramContext.getPackageName();
  }
  
  public static String f()
  {
    int i = 2;
    String[] arrayOfString1 = new String[2];
    arrayOfString1[0] = "";
    arrayOfString1[1] = "";
    try
    {
      BufferedReader localBufferedReader = new BufferedReader(new FileReader("/proc/cpuinfo"), 8192);
      String[] arrayOfString2 = localBufferedReader.readLine().split("\\s+");
      for (;;)
      {
        if (i >= arrayOfString2.length)
        {
          arrayOfString2 = localBufferedReader.readLine().split("\\s+");
          arrayOfString1[1] = (arrayOfString1[1] + arrayOfString2[2]);
          localBufferedReader.close();
          return arrayOfString1[1];
        }
        arrayOfString1[0] = (arrayOfString1[0] + arrayOfString2[i] + " ");
        i += 1;
      }
      return null;
    }
    catch (IOException localIOException) {}
  }
  
  /* Error */
  public static long g()
  {
    // Byte code:
    //   0: new 53	java/io/BufferedReader
    //   3: dup
    //   4: new 46	java/io/FileReader
    //   7: dup
    //   8: ldc -62
    //   10: invokespecial 51	java/io/FileReader:<init>	(Ljava/lang/String;)V
    //   13: sipush 8192
    //   16: invokespecial 56	java/io/BufferedReader:<init>	(Ljava/io/Reader;I)V
    //   19: astore_0
    //   20: aload_0
    //   21: invokevirtual 59	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   24: ldc -72
    //   26: invokevirtual 188	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   29: iconst_1
    //   30: aaload
    //   31: invokestatic 197	java/lang/Integer:valueOf	(Ljava/lang/String;)Ljava/lang/Integer;
    //   34: invokevirtual 201	java/lang/Integer:intValue	()I
    //   37: istore_1
    //   38: iload_1
    //   39: i2l
    //   40: lstore_2
    //   41: aload_0
    //   42: invokevirtual 62	java/io/BufferedReader:close	()V
    //   45: lload_2
    //   46: lreturn
    //   47: astore_0
    //   48: lconst_0
    //   49: lstore_2
    //   50: ldc 78
    //   52: new 80	java/lang/StringBuilder
    //   55: dup
    //   56: ldc -53
    //   58: invokespecial 83	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   61: aload_0
    //   62: invokevirtual 86	java/io/IOException:getLocalizedMessage	()Ljava/lang/String;
    //   65: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   68: invokevirtual 93	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   71: invokestatic 99	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   74: pop
    //   75: lload_2
    //   76: lreturn
    //   77: astore_0
    //   78: goto -28 -> 50
    // Local variable table:
    //   start	length	slot	name	signature
    //   19	23	0	localBufferedReader	BufferedReader
    //   47	15	0	localIOException1	IOException
    //   77	1	0	localIOException2	IOException
    //   37	2	1	i	int
    //   40	36	2	l	long
    // Exception table:
    //   from	to	target	type
    //   0	38	47	java/io/IOException
    //   41	45	77	java/io/IOException
  }
  
  public static long h()
  {
    long[] arrayOfLong = new long[2];
    try
    {
      if ("mounted".equals(Environment.getExternalStorageState()))
      {
        StatFs localStatFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
        long l1 = localStatFs.getBlockSize();
        long l2 = localStatFs.getBlockCount();
        long l3 = localStatFs.getAvailableBlocks();
        arrayOfLong[0] = (l2 * l1);
        arrayOfLong[1] = (l3 * l1);
      }
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
    return arrayOfLong[0];
  }
  
  public static String i()
  {
    return Build.DISPLAY;
  }
  
  public static String j()
  {
    try
    {
      Object localObject = BluetoothAdapter.getDefaultAdapter();
      if (localObject != null)
      {
        boolean bool = ((BluetoothAdapter)localObject).isEnabled();
        if (!bool) {
          return "";
        }
      }
      localObject = ((BluetoothAdapter)localObject).getAddress();
      return (String)localObject;
    }
    catch (Exception localException) {}
    return null;
  }
  
  public static String k()
  {
    try
    {
      Object localObject1 = Class.forName("android.os.SystemProperties");
      Object localObject2 = ((Class)localObject1).newInstance();
      localObject1 = (String)((Class)localObject1).getMethod("get", new Class[] { String.class, String.class }).invoke(localObject2, new Object[] { "gsm.version.baseband", "no message" });
      return (String)localObject1;
    }
    catch (Exception localException) {}
    return null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\alipay\a\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */