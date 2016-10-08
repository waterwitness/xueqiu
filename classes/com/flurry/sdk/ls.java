package com.flurry.sdk;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.Environment;
import java.io.File;

public final class ls
{
  private static String a = ls.class.getSimpleName();
  
  public static File a(boolean paramBoolean)
  {
    Object localObject2 = null;
    Context localContext = js.a().c();
    Object localObject1 = localObject2;
    if (paramBoolean)
    {
      localObject1 = localObject2;
      if ("mounted".equals(Environment.getExternalStorageState())) {
        if (Build.VERSION.SDK_INT < 19)
        {
          localObject1 = localObject2;
          if (localContext.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") != 0) {}
        }
        else
        {
          localObject1 = localContext.getExternalFilesDir(null);
        }
      }
    }
    localObject2 = localObject1;
    if (localObject1 == null) {
      localObject2 = localContext.getFilesDir();
    }
    return (File)localObject2;
  }
  
  /* Error */
  @Deprecated
  public static void a(File paramFile, String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +13 -> 14
    //   4: iconst_4
    //   5: getstatic 16	com/flurry/sdk/ls:a	Ljava/lang/String;
    //   8: ldc 71
    //   10: invokestatic 76	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   13: return
    //   14: aload_1
    //   15: ifnonnull +35 -> 50
    //   18: iconst_4
    //   19: getstatic 16	com/flurry/sdk/ls:a	Ljava/lang/String;
    //   22: new 78	java/lang/StringBuilder
    //   25: dup
    //   26: ldc 80
    //   28: invokespecial 83	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   31: aload_0
    //   32: invokevirtual 88	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   35: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   38: invokevirtual 95	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   41: invokestatic 76	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   44: aload_0
    //   45: invokevirtual 99	java/io/File:delete	()Z
    //   48: pop
    //   49: return
    //   50: iconst_4
    //   51: getstatic 16	com/flurry/sdk/ls:a	Ljava/lang/String;
    //   54: new 78	java/lang/StringBuilder
    //   57: dup
    //   58: ldc 101
    //   60: invokespecial 83	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   63: aload_0
    //   64: invokevirtual 88	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   67: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   70: invokevirtual 95	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   73: invokestatic 76	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   76: new 103	java/io/FileOutputStream
    //   79: dup
    //   80: aload_0
    //   81: invokespecial 106	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   84: astore_2
    //   85: aload_2
    //   86: astore_0
    //   87: aload_2
    //   88: aload_1
    //   89: invokevirtual 110	java/lang/String:getBytes	()[B
    //   92: invokevirtual 114	java/io/FileOutputStream:write	([B)V
    //   95: aload_2
    //   96: invokestatic 119	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   99: return
    //   100: astore_3
    //   101: aconst_null
    //   102: astore_1
    //   103: aload_1
    //   104: astore_0
    //   105: bipush 6
    //   107: getstatic 16	com/flurry/sdk/ls:a	Ljava/lang/String;
    //   110: ldc 121
    //   112: aload_3
    //   113: invokestatic 124	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   116: aload_1
    //   117: invokestatic 119	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   120: return
    //   121: astore_1
    //   122: aconst_null
    //   123: astore_0
    //   124: aload_0
    //   125: invokestatic 119	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   128: aload_1
    //   129: athrow
    //   130: astore_1
    //   131: goto -7 -> 124
    //   134: astore_3
    //   135: aload_2
    //   136: astore_1
    //   137: goto -34 -> 103
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	140	0	paramFile	File
    //   0	140	1	paramString	String
    //   84	52	2	localFileOutputStream	java.io.FileOutputStream
    //   100	13	3	localThrowable1	Throwable
    //   134	1	3	localThrowable2	Throwable
    // Exception table:
    //   from	to	target	type
    //   76	85	100	java/lang/Throwable
    //   76	85	121	finally
    //   87	95	130	finally
    //   105	116	130	finally
    //   87	95	134	java/lang/Throwable
  }
  
  public static boolean a(File paramFile)
  {
    if (paramFile == null) {}
    while (paramFile.getAbsoluteFile() == null) {
      return false;
    }
    paramFile = paramFile.getParentFile();
    if (paramFile == null) {
      return true;
    }
    if ((!paramFile.mkdirs()) && (!paramFile.isDirectory()))
    {
      kg.a(6, a, "Unable to create persistent dir: " + paramFile);
      return false;
    }
    return true;
  }
  
  public static File b(boolean paramBoolean)
  {
    Context localContext = js.a().c();
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (paramBoolean)
    {
      localObject1 = localObject2;
      if ("mounted".equals(Environment.getExternalStorageState())) {
        if (Build.VERSION.SDK_INT < 19)
        {
          localObject1 = localObject2;
          if (localContext.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") != 0) {}
        }
        else
        {
          localObject1 = localContext.getExternalCacheDir();
        }
      }
    }
    localObject2 = localObject1;
    if (localObject1 == null) {
      localObject2 = localContext.getCacheDir();
    }
    return (File)localObject2;
  }
  
  public static boolean b(File paramFile)
  {
    if ((paramFile != null) && (paramFile.isDirectory()))
    {
      String[] arrayOfString = paramFile.list();
      int j = arrayOfString.length;
      int i = 0;
      while (i < j)
      {
        if (!b(new File(paramFile, arrayOfString[i]))) {
          return false;
        }
        i += 1;
      }
    }
    return paramFile.delete();
  }
  
  /* Error */
  @Deprecated
  public static String c(File paramFile)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnull +10 -> 11
    //   4: aload_0
    //   5: invokevirtual 162	java/io/File:exists	()Z
    //   8: ifne +14 -> 22
    //   11: iconst_4
    //   12: getstatic 16	com/flurry/sdk/ls:a	Ljava/lang/String;
    //   15: ldc -92
    //   17: invokestatic 76	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   20: aconst_null
    //   21: areturn
    //   22: iconst_4
    //   23: getstatic 16	com/flurry/sdk/ls:a	Ljava/lang/String;
    //   26: new 78	java/lang/StringBuilder
    //   29: dup
    //   30: ldc -90
    //   32: invokespecial 83	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   35: aload_0
    //   36: invokevirtual 88	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   39: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   42: invokevirtual 95	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   45: invokestatic 76	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   48: new 168	java/io/FileInputStream
    //   51: dup
    //   52: aload_0
    //   53: invokespecial 169	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   56: astore_1
    //   57: aload_1
    //   58: astore_0
    //   59: new 78	java/lang/StringBuilder
    //   62: dup
    //   63: invokespecial 170	java/lang/StringBuilder:<init>	()V
    //   66: astore_2
    //   67: aload_1
    //   68: astore_0
    //   69: sipush 1024
    //   72: newarray <illegal type>
    //   74: astore_3
    //   75: aload_1
    //   76: astore_0
    //   77: aload_1
    //   78: aload_3
    //   79: invokevirtual 174	java/io/FileInputStream:read	([B)I
    //   82: istore 4
    //   84: iload 4
    //   86: ifle +53 -> 139
    //   89: aload_1
    //   90: astore_0
    //   91: aload_2
    //   92: new 39	java/lang/String
    //   95: dup
    //   96: aload_3
    //   97: iconst_0
    //   98: iload 4
    //   100: invokespecial 177	java/lang/String:<init>	([BII)V
    //   103: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   106: pop
    //   107: goto -32 -> 75
    //   110: astore_2
    //   111: aload_1
    //   112: astore_0
    //   113: bipush 6
    //   115: getstatic 16	com/flurry/sdk/ls:a	Ljava/lang/String;
    //   118: ldc -77
    //   120: aload_2
    //   121: invokestatic 124	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   124: aload_1
    //   125: invokestatic 119	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   128: aconst_null
    //   129: astore_0
    //   130: aload_0
    //   131: ifnull -111 -> 20
    //   134: aload_0
    //   135: invokevirtual 95	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   138: areturn
    //   139: aload_1
    //   140: invokestatic 119	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   143: aload_2
    //   144: astore_0
    //   145: goto -15 -> 130
    //   148: astore_0
    //   149: aconst_null
    //   150: astore_2
    //   151: aload_0
    //   152: astore_1
    //   153: aload_2
    //   154: invokestatic 119	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   157: aload_1
    //   158: athrow
    //   159: astore_1
    //   160: aload_0
    //   161: astore_2
    //   162: goto -9 -> 153
    //   165: astore_2
    //   166: aconst_null
    //   167: astore_1
    //   168: goto -57 -> 111
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	171	0	paramFile	File
    //   56	102	1	localObject1	Object
    //   159	1	1	localObject2	Object
    //   167	1	1	localObject3	Object
    //   66	26	2	localStringBuilder	StringBuilder
    //   110	34	2	localThrowable1	Throwable
    //   150	12	2	localObject4	Object
    //   165	1	2	localThrowable2	Throwable
    //   74	23	3	arrayOfByte	byte[]
    //   82	17	4	i	int
    // Exception table:
    //   from	to	target	type
    //   59	67	110	java/lang/Throwable
    //   69	75	110	java/lang/Throwable
    //   77	84	110	java/lang/Throwable
    //   91	107	110	java/lang/Throwable
    //   48	57	148	finally
    //   59	67	159	finally
    //   69	75	159	finally
    //   77	84	159	finally
    //   91	107	159	finally
    //   113	124	159	finally
    //   48	57	165	java/lang/Throwable
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\ls.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */