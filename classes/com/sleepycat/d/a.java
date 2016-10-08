package com.sleepycat.d;

import java.io.File;

public final class a
{
  public String a = null;
  public String b = null;
  private final File c;
  private final String d;
  private final String e;
  private final File f;
  private int g;
  private int h;
  private int i;
  
  public a(File paramFile, String paramString1, String paramString2, int paramInt1, int paramInt2)
  {
    if (!paramFile.exists()) {
      paramFile.mkdirs();
    }
    while (paramFile.isDirectory())
    {
      this.c = new File(paramFile.getAbsolutePath() + File.separator + paramString1 + "." + paramString2);
      this.g = (paramInt1 - 1);
      this.h = paramInt2;
      this.e = paramString1;
      this.d = paramString2;
      this.f = paramFile;
      if (!this.c.exists()) {
        return;
      }
      if (this.c.isFile()) {
        break;
      }
      throw new IllegalArgumentException("Statistic log file" + this.c.getAbsolutePath() + " exists but is not a file.");
    }
    throw new IllegalArgumentException("Specified statistic log directory " + paramFile.getAbsolutePath() + " is not a directory.");
    this.a = b();
    a();
  }
  
  private String a(int paramInt)
  {
    if (paramInt < 0) {
      return this.f.getAbsolutePath() + File.separator + this.e + "." + this.d;
    }
    return this.f.getAbsolutePath() + File.separator + this.e + "." + paramInt + "." + this.d;
  }
  
  /* Error */
  private String b()
  {
    // Byte code:
    //   0: new 101	java/io/BufferedReader
    //   3: dup
    //   4: new 103	java/io/FileReader
    //   7: dup
    //   8: aload_0
    //   9: getfield 58	com/sleepycat/d/a:c	Ljava/io/File;
    //   12: invokespecial 106	java/io/FileReader:<init>	(Ljava/io/File;)V
    //   15: invokespecial 109	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   18: astore_2
    //   19: aload_2
    //   20: astore_1
    //   21: aload_2
    //   22: invokevirtual 112	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   25: astore_3
    //   26: aload_2
    //   27: ifnull +7 -> 34
    //   30: aload_2
    //   31: invokevirtual 115	java/io/BufferedReader:close	()V
    //   34: aload_3
    //   35: areturn
    //   36: astore_3
    //   37: aconst_null
    //   38: astore_1
    //   39: new 99	java/io/IOException
    //   42: dup
    //   43: new 36	java/lang/StringBuilder
    //   46: dup
    //   47: ldc 117
    //   49: invokespecial 76	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   52: aload_0
    //   53: getfield 58	com/sleepycat/d/a:c	Ljava/io/File;
    //   56: invokevirtual 41	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   59: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   62: invokevirtual 53	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   65: aload_3
    //   66: invokespecial 120	java/io/IOException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   69: athrow
    //   70: astore_3
    //   71: aload_1
    //   72: astore_2
    //   73: aload_3
    //   74: astore_1
    //   75: aload_2
    //   76: ifnull +7 -> 83
    //   79: aload_2
    //   80: invokevirtual 115	java/io/BufferedReader:close	()V
    //   83: aload_1
    //   84: athrow
    //   85: astore_2
    //   86: goto -3 -> 83
    //   89: astore_1
    //   90: aload_3
    //   91: areturn
    //   92: astore_1
    //   93: aconst_null
    //   94: astore_2
    //   95: goto -20 -> 75
    //   98: astore_3
    //   99: aload_2
    //   100: astore_1
    //   101: goto -62 -> 39
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	104	0	this	a
    //   20	64	1	localObject1	Object
    //   89	1	1	localIOException1	java.io.IOException
    //   92	1	1	localObject2	Object
    //   100	1	1	localObject3	Object
    //   18	62	2	localObject4	Object
    //   85	1	2	localIOException2	java.io.IOException
    //   94	6	2	localObject5	Object
    //   25	10	3	str1	String
    //   36	30	3	localFileNotFoundException1	java.io.FileNotFoundException
    //   70	21	3	str2	String
    //   98	1	3	localFileNotFoundException2	java.io.FileNotFoundException
    // Exception table:
    //   from	to	target	type
    //   0	19	36	java/io/FileNotFoundException
    //   21	26	70	finally
    //   39	70	70	finally
    //   79	83	85	java/io/IOException
    //   30	34	89	java/io/IOException
    //   0	19	92	finally
    //   21	26	98	java/io/FileNotFoundException
  }
  
  private void c()
  {
    File localFile = new File(a(this.g - 1));
    if (localFile.exists()) {
      localFile.delete();
    }
    int j = this.g - 2;
    while (j >= -1)
    {
      localFile = new File(a(j));
      if (localFile.exists()) {
        localFile.renameTo(new File(a(j + 1)));
      }
      j -= 1;
    }
    this.i = 0;
  }
  
  /* Error */
  private void c(String paramString)
  {
    // Byte code:
    //   0: new 133	java/io/PrintWriter
    //   3: dup
    //   4: new 135	java/io/FileWriter
    //   7: dup
    //   8: aload_0
    //   9: getfield 58	com/sleepycat/d/a:c	Ljava/io/File;
    //   12: iconst_1
    //   13: invokespecial 138	java/io/FileWriter:<init>	(Ljava/io/File;Z)V
    //   16: invokespecial 141	java/io/PrintWriter:<init>	(Ljava/io/Writer;)V
    //   19: astore_3
    //   20: aload_3
    //   21: astore_2
    //   22: aload_3
    //   23: aload_1
    //   24: invokevirtual 144	java/io/PrintWriter:println	(Ljava/lang/String;)V
    //   27: aload_3
    //   28: ifnull +11 -> 39
    //   31: aload_3
    //   32: invokevirtual 147	java/io/PrintWriter:flush	()V
    //   35: aload_3
    //   36: invokevirtual 148	java/io/PrintWriter:close	()V
    //   39: return
    //   40: astore_1
    //   41: aconst_null
    //   42: astore_2
    //   43: new 99	java/io/IOException
    //   46: dup
    //   47: new 36	java/lang/StringBuilder
    //   50: dup
    //   51: ldc 117
    //   53: invokespecial 76	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   56: aload_0
    //   57: getfield 58	com/sleepycat/d/a:c	Ljava/io/File;
    //   60: invokevirtual 41	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   63: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   66: invokevirtual 53	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   69: aload_1
    //   70: invokespecial 120	java/io/IOException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   73: athrow
    //   74: astore_1
    //   75: aload_2
    //   76: ifnull +11 -> 87
    //   79: aload_2
    //   80: invokevirtual 147	java/io/PrintWriter:flush	()V
    //   83: aload_2
    //   84: invokevirtual 148	java/io/PrintWriter:close	()V
    //   87: aload_1
    //   88: athrow
    //   89: astore_1
    //   90: aconst_null
    //   91: astore_2
    //   92: goto -17 -> 75
    //   95: astore_1
    //   96: aload_3
    //   97: astore_2
    //   98: goto -55 -> 43
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	101	0	this	a
    //   0	101	1	paramString	String
    //   21	77	2	localPrintWriter1	java.io.PrintWriter
    //   19	78	3	localPrintWriter2	java.io.PrintWriter
    // Exception table:
    //   from	to	target	type
    //   0	20	40	java/io/FileNotFoundException
    //   22	27	74	finally
    //   43	74	74	finally
    //   0	20	89	finally
    //   22	27	95	java/io/FileNotFoundException
  }
  
  /* Error */
  public final String a()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_0
    //   3: iconst_0
    //   4: putfield 131	com/sleepycat/d/a:i	I
    //   7: new 101	java/io/BufferedReader
    //   10: dup
    //   11: new 103	java/io/FileReader
    //   14: dup
    //   15: aload_0
    //   16: getfield 58	com/sleepycat/d/a:c	Ljava/io/File;
    //   19: invokespecial 106	java/io/FileReader:<init>	(Ljava/io/File;)V
    //   22: invokespecial 109	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   25: astore_2
    //   26: aload_2
    //   27: astore_1
    //   28: aload_2
    //   29: invokevirtual 112	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   32: astore 4
    //   34: aload 4
    //   36: ifnull +70 -> 106
    //   39: aload_2
    //   40: astore_1
    //   41: aload_0
    //   42: aload_0
    //   43: getfield 131	com/sleepycat/d/a:i	I
    //   46: iconst_1
    //   47: iadd
    //   48: putfield 131	com/sleepycat/d/a:i	I
    //   51: aload 4
    //   53: astore_3
    //   54: goto -28 -> 26
    //   57: astore_3
    //   58: aconst_null
    //   59: astore_1
    //   60: new 99	java/io/IOException
    //   63: dup
    //   64: new 36	java/lang/StringBuilder
    //   67: dup
    //   68: ldc 117
    //   70: invokespecial 76	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   73: aload_0
    //   74: getfield 58	com/sleepycat/d/a:c	Ljava/io/File;
    //   77: invokevirtual 41	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   80: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   83: invokevirtual 53	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   86: aload_3
    //   87: invokespecial 120	java/io/IOException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   90: athrow
    //   91: astore_3
    //   92: aload_1
    //   93: astore_2
    //   94: aload_3
    //   95: astore_1
    //   96: aload_2
    //   97: ifnull +7 -> 104
    //   100: aload_2
    //   101: invokevirtual 115	java/io/BufferedReader:close	()V
    //   104: aload_1
    //   105: athrow
    //   106: aload_2
    //   107: ifnull +7 -> 114
    //   110: aload_2
    //   111: invokevirtual 115	java/io/BufferedReader:close	()V
    //   114: aload_3
    //   115: areturn
    //   116: astore_2
    //   117: goto -13 -> 104
    //   120: astore_1
    //   121: aload_3
    //   122: areturn
    //   123: astore_1
    //   124: aconst_null
    //   125: astore_2
    //   126: goto -30 -> 96
    //   129: astore_3
    //   130: aload_2
    //   131: astore_1
    //   132: goto -72 -> 60
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	135	0	this	a
    //   27	78	1	localObject1	Object
    //   120	1	1	localIOException1	java.io.IOException
    //   123	1	1	localObject2	Object
    //   131	1	1	localObject3	Object
    //   25	86	2	localObject4	Object
    //   116	1	2	localIOException2	java.io.IOException
    //   125	6	2	localObject5	Object
    //   1	53	3	localObject6	Object
    //   57	30	3	localFileNotFoundException1	java.io.FileNotFoundException
    //   91	31	3	str1	String
    //   129	1	3	localFileNotFoundException2	java.io.FileNotFoundException
    //   32	20	4	str2	String
    // Exception table:
    //   from	to	target	type
    //   7	26	57	java/io/FileNotFoundException
    //   28	34	91	finally
    //   41	51	91	finally
    //   60	91	91	finally
    //   100	104	116	java/io/IOException
    //   110	114	120	java/io/IOException
    //   7	26	123	finally
    //   28	34	129	java/io/FileNotFoundException
    //   41	51	129	java/io/FileNotFoundException
  }
  
  public final void a(String paramString)
  {
    if (!paramString.equals(this.a))
    {
      if (this.a != null) {
        c();
      }
      this.i += 1;
      c(paramString);
      this.a = paramString;
      this.b = null;
    }
  }
  
  public final void b(String paramString)
  {
    if (this.i >= this.h)
    {
      c();
      this.i += 1;
      c(this.a);
    }
    this.i += 1;
    c(paramString);
    this.b = paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\d\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */