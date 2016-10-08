package com.pingan.a.a;

import android.content.Context;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import com.pingan.main.PAVideoSdkApiManager;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintStream;
import java.io.Writer;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public final class e
{
  static String a = "LogM";
  private static int b = 0;
  private static int c = 2;
  private static ExecutorService d = Executors.newCachedThreadPool();
  private static Boolean e = Boolean.valueOf(true);
  private static SimpleDateFormat f = new SimpleDateFormat("yyyyMMdd");
  private static SimpleDateFormat g = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
  private static String h = c.a() + "PinganSDK/";
  private static int i = 0;
  private static String j = "Log.txt";
  private static String k = null;
  
  public static void a(int paramInt)
  {
    File[] arrayOfFile1 = new File(PAVideoSdkApiManager.getLogRootPath()).listFiles();
    if (arrayOfFile1 == null) {
      return;
    }
    long l1 = new Date().getTime();
    int m = 0;
    boolean bool2 = false;
    label36:
    long l2;
    File[] arrayOfFile2;
    int n;
    label186:
    boolean bool1;
    if (m < arrayOfFile1.length)
    {
      l2 = arrayOfFile1[m].lastModified();
      Log.i("lastModified", "delete--||||===now-----" + l1 + "----date=" + new SimpleDateFormat("yyyy-MM-dd HH:mm:ss:SSS").format(new Date()));
      Log.i("lastModified", "delete--||||===" + arrayOfFile1[m].getName() + "-----" + l2);
      if ("upload".equals(arrayOfFile1[m].getName()))
      {
        arrayOfFile2 = new File(PAVideoSdkApiManager.getLogRootPath() + "/upload").listFiles();
        n = 0;
        if (n < arrayOfFile2.length) {
          break label294;
        }
      }
      if ((!arrayOfFile1[m].isDirectory()) || (l2 >= l1 - paramInt * 24 * 60 * 60 * 1000) || ("upload".equals(arrayOfFile1[m].getName()))) {
        break label328;
      }
      bool1 = a(arrayOfFile1[m]);
    }
    for (;;)
    {
      if (!bool1) {
        d(a, arrayOfFile1[m].getName() + "删除失败，等待下次删除！");
      }
      m += 1;
      bool2 = bool1;
      break label36;
      break;
      label294:
      if (arrayOfFile2[n].lastModified() < l1 - 3600000L) {
        b(arrayOfFile2[n]);
      }
      n += 1;
      break label186;
      label328:
      bool1 = bool2;
      if (arrayOfFile1[m].isFile())
      {
        bool1 = bool2;
        if (l2 < l1 - paramInt * 24 * 60 * 60 * 1000) {
          bool1 = b(arrayOfFile1[m]);
        }
      }
    }
  }
  
  private static void a(int paramInt, String paramString1, final String paramString2, final String paramString3)
  {
    if ((!e.booleanValue()) || (c >= paramInt)) {
      return;
    }
    Log.d("LogM", "writeLogtoFile-start");
    d.execute(new Runnable()
    {
      public final void run()
      {
        Object localObject1 = new Date();
        Object localObject2 = e.a().format((Date)localObject1);
        localObject1 = e.b().format((Date)localObject1) + " " + e.this + " " + paramString2 + " " + paramString3;
        localObject2 = new File(e.d() + (String)localObject2, e.e());
        c.b(((File)localObject2).getAbsolutePath());
        try
        {
          localObject2 = new FileWriter((File)localObject2, true);
          BufferedWriter localBufferedWriter = new BufferedWriter((Writer)localObject2);
          localBufferedWriter.write((String)localObject1);
          localBufferedWriter.newLine();
          localBufferedWriter.close();
          ((FileWriter)localObject2).close();
          return;
        }
        catch (IOException localIOException)
        {
          localIOException.printStackTrace();
        }
      }
    });
  }
  
  public static void a(Context paramContext)
  {
    Log.d("LogM", "writeDeviceInfoForLog-start");
    if (!e.booleanValue()) {
      return;
    }
    if (k == null) {
      k = b.a(paramContext);
    }
    d.execute(new Runnable()
    {
      public final void run()
      {
        Object localObject2 = new Date();
        Object localObject1 = e.a().format((Date)localObject2);
        localObject2 = new StringBuilder("\n").append(e.b().format((Date)localObject2)).append(" | ").append(e.c()).append(" | ").append(Build.BRAND + File.separator + Build.MODEL).append(" | ").append(b.b(e.this)).append(" | ");
        Object localObject3 = e.this;
        DisplayMetrics localDisplayMetrics = new DisplayMetrics();
        ((WindowManager)((Context)localObject3).getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics);
        int i = localDisplayMetrics.widthPixels;
        int j = localDisplayMetrics.heightPixels;
        localObject2 = new StringBuilder(String.valueOf(i)).append("x").append(j).toString() + " |  soVer." + PAVideoSdkApiManager.getSOVersion() + " | sdkVer." + PAVideoSdkApiManager.getSDKVersion() + " : " + PAVideoSdkApiManager.getSDKVersionIntroduction() + "\n";
        localObject1 = new File(e.d() + (String)localObject1, e.e());
        Log.d("LogM", "needWriteMessage=" + (String)localObject2 + "--file=" + ((File)localObject1).getAbsolutePath());
        c.b(((File)localObject1).getAbsolutePath());
        try
        {
          localObject1 = new FileWriter((File)localObject1, true);
          localObject3 = new BufferedWriter((Writer)localObject1);
          ((BufferedWriter)localObject3).write((String)localObject2);
          ((BufferedWriter)localObject3).newLine();
          ((BufferedWriter)localObject3).close();
          ((FileWriter)localObject1).close();
          return;
        }
        catch (IOException localIOException)
        {
          localIOException.printStackTrace();
        }
      }
    });
  }
  
  public static void a(String paramString)
  {
    if (2 > b)
    {
      Log.i(a, paramString);
      a(2, "i", a, paramString);
    }
  }
  
  public static void a(String paramString1, String paramString2)
  {
    if (3 > b)
    {
      Log.d(paramString1, paramString2);
      a(3, "d", paramString1, paramString2);
    }
  }
  
  public static void a(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (5 > b)
    {
      Log.e(paramString1, paramString2, paramThrowable);
      a(5, "e", paramString1, paramString2);
    }
  }
  
  private static boolean a(File paramFile)
  {
    int m = 0;
    boolean bool = false;
    if (paramFile.isFile()) {
      bool = paramFile.delete();
    }
    while (!paramFile.isDirectory()) {
      return bool;
    }
    File[] arrayOfFile = paramFile.listFiles();
    if ((arrayOfFile == null) || (arrayOfFile.length == 0)) {
      return paramFile.delete();
    }
    int n = arrayOfFile.length;
    for (;;)
    {
      if (m >= n) {
        return paramFile.delete();
      }
      a(arrayOfFile[m]);
      m += 1;
    }
  }
  
  public static void b(String paramString1, String paramString2)
  {
    if (2 > b)
    {
      Log.i(paramString1, paramString2);
      a(2, "i", paramString1, paramString2);
    }
  }
  
  private static boolean b(File paramFile)
  {
    System.out.println("delete--" + paramFile.getName());
    if ((paramFile.exists()) && (paramFile.isFile())) {
      return paramFile.delete();
    }
    return false;
  }
  
  public static void c(String paramString1, String paramString2)
  {
    if (4 > b)
    {
      Log.w(paramString1, paramString2);
      a(4, "w", paramString1, paramString2);
    }
  }
  
  public static void d(String paramString1, String paramString2)
  {
    if (5 > b)
    {
      Log.e(paramString1, paramString2);
      a(5, "e", paramString1, paramString2);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\pingan\a\a\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */