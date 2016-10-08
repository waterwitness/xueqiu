package com.xueqiu.android.base.util;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.OutputStream;
import org.apache.commons.a.a.a;

public final class k
{
  public static File a(String paramString)
  {
    com.xueqiu.android.base.b.a();
    paramString = new File(com.xueqiu.android.base.b.d().getFilesDir(), paramString);
    if (!paramString.exists()) {
      paramString.mkdir();
    }
    while (paramString.isDirectory()) {
      return paramString;
    }
    paramString.delete();
    paramString.mkdir();
    return paramString;
  }
  
  /* Error */
  public static String a(File paramFile)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 31	java/io/File:exists	()Z
    //   4: ifeq +98 -> 102
    //   7: aload_0
    //   8: invokevirtual 49	java/io/File:canRead	()Z
    //   11: ifeq +91 -> 102
    //   14: aconst_null
    //   15: astore_1
    //   16: aconst_null
    //   17: astore_2
    //   18: new 51	java/io/BufferedReader
    //   21: dup
    //   22: new 53	java/io/InputStreamReader
    //   25: dup
    //   26: new 55	java/io/FileInputStream
    //   29: dup
    //   30: aload_0
    //   31: invokespecial 58	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   34: ldc 60
    //   36: invokestatic 66	java/nio/charset/Charset:forName	(Ljava/lang/String;)Ljava/nio/charset/Charset;
    //   39: invokespecial 69	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    //   42: invokespecial 72	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   45: astore_0
    //   46: aload_0
    //   47: astore_1
    //   48: new 74	java/lang/StringBuilder
    //   51: dup
    //   52: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   55: astore_2
    //   56: aload_0
    //   57: astore_1
    //   58: aload_0
    //   59: invokevirtual 81	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   62: astore_3
    //   63: aload_3
    //   64: ifnull +41 -> 105
    //   67: aload_0
    //   68: astore_1
    //   69: aload_2
    //   70: aload_3
    //   71: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   74: pop
    //   75: aload_0
    //   76: astore_1
    //   77: aload_2
    //   78: ldc 87
    //   80: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   83: pop
    //   84: goto -28 -> 56
    //   87: astore_2
    //   88: aload_0
    //   89: astore_1
    //   90: aload_2
    //   91: invokevirtual 90	java/io/FileNotFoundException:printStackTrace	()V
    //   94: aload_0
    //   95: ifnull +7 -> 102
    //   98: aload_0
    //   99: invokevirtual 93	java/io/BufferedReader:close	()V
    //   102: ldc 95
    //   104: areturn
    //   105: aload_0
    //   106: astore_1
    //   107: aload_2
    //   108: invokevirtual 98	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   111: astore_2
    //   112: aload_0
    //   113: invokevirtual 93	java/io/BufferedReader:close	()V
    //   116: aload_2
    //   117: areturn
    //   118: astore_0
    //   119: aload_0
    //   120: invokevirtual 99	java/io/IOException:printStackTrace	()V
    //   123: aload_2
    //   124: areturn
    //   125: astore_0
    //   126: aload_0
    //   127: invokevirtual 99	java/io/IOException:printStackTrace	()V
    //   130: goto -28 -> 102
    //   133: astore_1
    //   134: aload_2
    //   135: astore_0
    //   136: aload_1
    //   137: astore_2
    //   138: aload_0
    //   139: astore_1
    //   140: aload_2
    //   141: invokevirtual 99	java/io/IOException:printStackTrace	()V
    //   144: aload_0
    //   145: ifnull -43 -> 102
    //   148: aload_0
    //   149: invokevirtual 93	java/io/BufferedReader:close	()V
    //   152: goto -50 -> 102
    //   155: astore_0
    //   156: aload_0
    //   157: invokevirtual 99	java/io/IOException:printStackTrace	()V
    //   160: goto -58 -> 102
    //   163: astore_0
    //   164: aload_1
    //   165: ifnull +7 -> 172
    //   168: aload_1
    //   169: invokevirtual 93	java/io/BufferedReader:close	()V
    //   172: aload_0
    //   173: athrow
    //   174: astore_1
    //   175: aload_1
    //   176: invokevirtual 99	java/io/IOException:printStackTrace	()V
    //   179: goto -7 -> 172
    //   182: astore_0
    //   183: goto -19 -> 164
    //   186: astore_2
    //   187: goto -49 -> 138
    //   190: astore_2
    //   191: aconst_null
    //   192: astore_0
    //   193: goto -105 -> 88
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	196	0	paramFile	File
    //   15	92	1	localFile1	File
    //   133	4	1	localIOException1	IOException
    //   139	30	1	localFile2	File
    //   174	2	1	localIOException2	IOException
    //   17	61	2	localStringBuilder	StringBuilder
    //   87	21	2	localFileNotFoundException1	java.io.FileNotFoundException
    //   111	30	2	localObject	Object
    //   186	1	2	localIOException3	IOException
    //   190	1	2	localFileNotFoundException2	java.io.FileNotFoundException
    //   62	9	3	str	String
    // Exception table:
    //   from	to	target	type
    //   48	56	87	java/io/FileNotFoundException
    //   58	63	87	java/io/FileNotFoundException
    //   69	75	87	java/io/FileNotFoundException
    //   77	84	87	java/io/FileNotFoundException
    //   107	112	87	java/io/FileNotFoundException
    //   112	116	118	java/io/IOException
    //   98	102	125	java/io/IOException
    //   18	46	133	java/io/IOException
    //   148	152	155	java/io/IOException
    //   18	46	163	finally
    //   140	144	163	finally
    //   168	172	174	java/io/IOException
    //   48	56	182	finally
    //   58	63	182	finally
    //   69	75	182	finally
    //   77	84	182	finally
    //   90	94	182	finally
    //   107	112	182	finally
    //   48	56	186	java/io/IOException
    //   58	63	186	java/io/IOException
    //   69	75	186	java/io/IOException
    //   77	84	186	java/io/IOException
    //   107	112	186	java/io/IOException
    //   18	46	190	java/io/FileNotFoundException
  }
  
  public static boolean a(AssetManager paramAssetManager, String paramString1, String paramString2)
  {
    String[] arrayOfString;
    Object localObject;
    boolean bool2;
    try
    {
      arrayOfString = paramAssetManager.list(paramString1);
      localObject = new File(paramString2);
      if ((((File)localObject).exists()) || (((File)localObject).mkdirs())) {
        break label67;
      }
      throw new IOException("mkdirs failed:" + paramString2);
    }
    catch (Exception paramAssetManager)
    {
      paramAssetManager.printStackTrace();
      bool2 = false;
    }
    return bool2;
    label67:
    boolean bool1 = true;
    int j = arrayOfString.length;
    int i = 0;
    for (;;)
    {
      bool2 = bool1;
      if (i >= j) {
        break;
      }
      localObject = arrayOfString[i];
      if (((String)localObject).contains("."))
      {
        bool1 &= b(paramAssetManager, paramString1 + "/" + (String)localObject, paramString2 + "/" + (String)localObject);
      }
      else
      {
        bool2 = a(paramAssetManager, paramString1 + "/" + (String)localObject, paramString2 + "/" + (String)localObject);
        bool1 &= bool2;
      }
      i += 1;
    }
  }
  
  public static boolean a(File paramFile, Bitmap paramBitmap)
  {
    if (paramFile.exists()) {
      paramFile.delete();
    }
    try
    {
      paramFile = new FileOutputStream(paramFile);
      paramBitmap.compress(Bitmap.CompressFormat.JPEG, 80, paramFile);
      paramFile.flush();
      paramFile.close();
      return true;
    }
    catch (Exception paramFile)
    {
      paramFile.printStackTrace();
    }
    return false;
  }
  
  public static boolean a(File paramFile, String paramString)
  {
    try
    {
      if (!paramFile.exists()) {
        paramFile.createNewFile();
      }
      paramFile = new BufferedOutputStream(new FileOutputStream(paramFile));
      paramFile.write(paramString.getBytes("UTF-8"));
      paramFile.flush();
      paramFile.close();
      return true;
    }
    catch (Exception paramFile)
    {
      paramFile.printStackTrace();
    }
    return false;
  }
  
  public static boolean a(String paramString1, String paramString2)
  {
    try
    {
      paramString1 = new FileInputStream(new File(paramString1));
      File localFile = new File(paramString2);
      if ((!localFile.exists()) && (!localFile.createNewFile())) {
        throw new IOException("createNewFile failed:" + paramString2);
      }
    }
    catch (Exception paramString1)
    {
      paramString1.printStackTrace();
      return false;
    }
    paramString2 = new FileOutputStream(paramString2);
    org.apache.commons.a.c.b.a(paramString1, paramString2);
    paramString1.close();
    paramString2.flush();
    paramString2.close();
    return true;
  }
  
  public static void b(File paramFile)
  {
    if (paramFile.isDirectory()) {
      try
      {
        File[] arrayOfFile = paramFile.listFiles();
        int j = arrayOfFile.length;
        int i = 0;
        while (i < j)
        {
          b(arrayOfFile[i]);
          i += 1;
        }
      }
      finally
      {
        if (!paramFile.delete()) {
          throw new IOException("delete failed:" + paramFile.getAbsolutePath());
        }
      }
    }
    if ((paramFile.exists()) && (!paramFile.delete())) {
      throw new IOException("delete failed:" + paramFile.getAbsolutePath());
    }
  }
  
  public static void b(String paramString1, String paramString2)
  {
    Object localObject1 = new File(paramString2);
    if (!((File)localObject1).exists()) {
      ((File)localObject1).mkdir();
    }
    localObject1 = new org.apache.commons.a.a.a.b(new FileInputStream(paramString1));
    paramString1 = ((org.apache.commons.a.a.a.b)localObject1).a();
    if (paramString1 != null)
    {
      Object localObject2 = paramString2 + File.separator + paramString1.a();
      if (paramString1.c()) {
        new File((String)localObject2).mkdirs();
      }
      for (;;)
      {
        paramString1 = ((org.apache.commons.a.a.a.b)localObject1).a();
        break;
        localObject2 = new BufferedOutputStream(new FileOutputStream((String)localObject2));
        org.apache.commons.a.c.b.a((InputStream)localObject1, (OutputStream)localObject2, (int)paramString1.b());
        ((BufferedOutputStream)localObject2).flush();
        ((BufferedOutputStream)localObject2).close();
      }
    }
  }
  
  public static boolean b(AssetManager paramAssetManager, String paramString1, String paramString2)
  {
    try
    {
      paramAssetManager = paramAssetManager.open(paramString1);
      paramString1 = new File(paramString2);
      if ((!paramString1.exists()) && (!paramString1.createNewFile())) {
        throw new IOException("createNewFile failed:" + paramString2);
      }
    }
    catch (Exception paramAssetManager)
    {
      paramAssetManager.printStackTrace();
      return false;
    }
    paramString1 = new FileOutputStream(paramString2);
    org.apache.commons.a.c.b.a(paramAssetManager, paramString1);
    paramAssetManager.close();
    paramString1.flush();
    paramString1.close();
    return true;
  }
  
  public static Object c(File paramFile)
  {
    try
    {
      FileInputStream localFileInputStream = new FileInputStream(paramFile);
      paramFile = new ObjectInputStream(localFileInputStream).readObject();
      v.a(localException1.toString());
    }
    catch (Exception localException1)
    {
      try
      {
        localFileInputStream.close();
        return paramFile;
      }
      catch (Exception localException2)
      {
        for (;;) {}
      }
      localException1 = localException1;
      paramFile = null;
    }
    return paramFile;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\util\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */