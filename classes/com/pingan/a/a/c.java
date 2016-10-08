package com.pingan.a.a;

import android.os.Environment;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;

public class c
{
  protected static final String a = c.class.getSimpleName();
  private static int b = 1024;
  
  public static String a()
  {
    return Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator;
  }
  
  private static void a(Closeable paramCloseable)
  {
    if (paramCloseable != null) {}
    try
    {
      paramCloseable.close();
      return;
    }
    catch (IOException paramCloseable) {}
  }
  
  private static void a(String paramString1, String paramString2)
  {
    paramString1 = "chmod " + paramString2 + " " + paramString1;
    try
    {
      Runtime.getRuntime().exec(paramString1);
      return;
    }
    catch (Exception paramString1) {}
  }
  
  /* Error */
  public static void a(byte[] paramArrayOfByte, File paramFile)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull +13 -> 14
    //   4: new 86	java/lang/NullPointerException
    //   7: dup
    //   8: ldc 88
    //   10: invokespecial 89	java/lang/NullPointerException:<init>	(Ljava/lang/String;)V
    //   13: athrow
    //   14: aload_1
    //   15: invokevirtual 93	java/io/File:exists	()Z
    //   18: ifne +8 -> 26
    //   21: aload_1
    //   22: invokevirtual 96	java/io/File:createNewFile	()Z
    //   25: pop
    //   26: aconst_null
    //   27: astore_2
    //   28: aconst_null
    //   29: astore_3
    //   30: new 98	java/io/FileOutputStream
    //   33: dup
    //   34: aload_1
    //   35: iconst_1
    //   36: invokespecial 101	java/io/FileOutputStream:<init>	(Ljava/io/File;Z)V
    //   39: astore_1
    //   40: aload_1
    //   41: astore_2
    //   42: aload_1
    //   43: aload_0
    //   44: invokevirtual 105	java/io/FileOutputStream:write	([B)V
    //   47: aload_1
    //   48: invokestatic 107	com/pingan/a/a/c:a	(Ljava/io/Closeable;)V
    //   51: return
    //   52: astore_2
    //   53: aload_2
    //   54: invokevirtual 110	java/io/IOException:printStackTrace	()V
    //   57: goto -31 -> 26
    //   60: astore_0
    //   61: aconst_null
    //   62: astore_1
    //   63: aload_1
    //   64: astore_2
    //   65: aload_0
    //   66: invokevirtual 111	java/io/FileNotFoundException:printStackTrace	()V
    //   69: aload_1
    //   70: invokestatic 107	com/pingan/a/a/c:a	(Ljava/io/Closeable;)V
    //   73: return
    //   74: astore_1
    //   75: aload_3
    //   76: astore_0
    //   77: aload_0
    //   78: astore_2
    //   79: aload_1
    //   80: invokevirtual 110	java/io/IOException:printStackTrace	()V
    //   83: aload_0
    //   84: invokestatic 107	com/pingan/a/a/c:a	(Ljava/io/Closeable;)V
    //   87: return
    //   88: astore_0
    //   89: aload_2
    //   90: invokestatic 107	com/pingan/a/a/c:a	(Ljava/io/Closeable;)V
    //   93: aload_0
    //   94: athrow
    //   95: astore_0
    //   96: goto -7 -> 89
    //   99: astore_2
    //   100: aload_1
    //   101: astore_0
    //   102: aload_2
    //   103: astore_1
    //   104: goto -27 -> 77
    //   107: astore_0
    //   108: goto -45 -> 63
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	111	0	paramArrayOfByte	byte[]
    //   0	111	1	paramFile	File
    //   27	15	2	localFile	File
    //   52	2	2	localIOException1	IOException
    //   64	26	2	localObject1	Object
    //   99	4	2	localIOException2	IOException
    //   29	47	3	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   21	26	52	java/io/IOException
    //   30	40	60	java/io/FileNotFoundException
    //   30	40	74	java/io/IOException
    //   30	40	88	finally
    //   79	83	88	finally
    //   42	47	95	finally
    //   65	69	95	finally
    //   42	47	99	java/io/IOException
    //   42	47	107	java/io/FileNotFoundException
  }
  
  public static boolean a(String paramString)
  {
    if (!f.a(paramString))
    {
      paramString = new File(paramString);
      if (paramString.exists()) {}
    }
    else
    {
      return false;
    }
    try
    {
      paramString.delete();
      return true;
    }
    catch (Exception paramString) {}
    return false;
  }
  
  public static File b(String paramString)
  {
    return b(paramString, "755");
  }
  
  private static File b(String paramString1, String paramString2)
  {
    try
    {
      File localFile = new File(paramString1.substring(0, paramString1.lastIndexOf(File.separator)));
      if (!localFile.exists()) {
        localFile.mkdirs();
      }
      a(localFile.getAbsolutePath(), paramString2);
      paramString1 = new File(paramString1);
      return paramString1;
    }
    catch (Exception paramString1)
    {
      try
      {
        if (!paramString1.exists()) {
          paramString1.createNewFile();
        }
        a(paramString1.getAbsolutePath(), paramString2);
        return paramString1;
      }
      catch (Exception paramString2) {}
      paramString1 = paramString1;
      return null;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\pingan\a\a\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */