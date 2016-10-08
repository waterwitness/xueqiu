package com.d.a.a.a.a;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

public abstract class a
  implements com.d.a.a.a.b
{
  public static final Bitmap.CompressFormat a = Bitmap.CompressFormat.PNG;
  protected final File b;
  protected final File c;
  protected final com.d.a.a.a.b.a d;
  protected int e = 32768;
  protected Bitmap.CompressFormat f = a;
  protected int g = 100;
  
  public a(File paramFile1, File paramFile2, com.d.a.a.a.b.a parama)
  {
    if (paramFile1 == null) {
      throw new IllegalArgumentException("cacheDir argument must be not null");
    }
    if (parama == null) {
      throw new IllegalArgumentException("fileNameGenerator argument must be not null");
    }
    this.b = paramFile1;
    this.c = paramFile2;
    this.d = parama;
  }
  
  private File b(String paramString)
  {
    String str = this.d.a(paramString);
    File localFile = this.b;
    paramString = localFile;
    if (!this.b.exists())
    {
      paramString = localFile;
      if (!this.b.mkdirs())
      {
        paramString = localFile;
        if (this.c != null) {
          if (!this.c.exists())
          {
            paramString = localFile;
            if (!this.c.mkdirs()) {}
          }
          else
          {
            paramString = this.c;
          }
        }
      }
    }
    return new File(paramString, str);
  }
  
  public final File a(String paramString)
  {
    return b(paramString);
  }
  
  public final void a()
  {
    File[] arrayOfFile = this.b.listFiles();
    if (arrayOfFile != null)
    {
      int j = arrayOfFile.length;
      int i = 0;
      while (i < j)
      {
        arrayOfFile[i].delete();
        i += 1;
      }
    }
  }
  
  public final boolean a(String paramString, Bitmap paramBitmap)
  {
    File localFile = b(paramString);
    paramString = new File(localFile.getAbsolutePath() + ".tmp");
    BufferedOutputStream localBufferedOutputStream = new BufferedOutputStream(new FileOutputStream(paramString), this.e);
    try
    {
      boolean bool1 = paramBitmap.compress(this.f, this.g, localBufferedOutputStream);
      com.d.a.c.b.a(localBufferedOutputStream);
      boolean bool2 = bool1;
      if (bool1)
      {
        bool2 = bool1;
        if (!paramString.renameTo(localFile)) {
          bool2 = false;
        }
      }
      if (!bool2) {
        paramString.delete();
      }
      paramBitmap.recycle();
      return bool2;
    }
    finally
    {
      com.d.a.c.b.a(localBufferedOutputStream);
      paramString.delete();
    }
  }
  
  /* Error */
  public final boolean a(String paramString, java.io.InputStream paramInputStream, com.d.a.c.c paramc)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokespecial 73	com/d/a/a/a/a/a:b	(Ljava/lang/String;)Ljava/io/File;
    //   5: astore 4
    //   7: new 61	java/io/File
    //   10: dup
    //   11: new 83	java/lang/StringBuilder
    //   14: dup
    //   15: invokespecial 84	java/lang/StringBuilder:<init>	()V
    //   18: aload 4
    //   20: invokevirtual 88	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   23: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   26: ldc 94
    //   28: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   31: invokevirtual 97	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   34: invokespecial 98	java/io/File:<init>	(Ljava/lang/String;)V
    //   37: astore 5
    //   39: new 100	java/io/BufferedOutputStream
    //   42: dup
    //   43: new 102	java/io/FileOutputStream
    //   46: dup
    //   47: aload 5
    //   49: invokespecial 105	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   52: aload_0
    //   53: getfield 34	com/d/a/a/a/a/a:e	I
    //   56: invokespecial 108	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;I)V
    //   59: astore_1
    //   60: aload_2
    //   61: aload_1
    //   62: aload_3
    //   63: aload_0
    //   64: getfield 34	com/d/a/a/a/a/a:e	I
    //   67: invokestatic 130	com/d/a/c/b:a	(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/d/a/c/c;I)Z
    //   70: istore 6
    //   72: aload_1
    //   73: invokestatic 119	com/d/a/c/b:a	(Ljava/io/Closeable;)V
    //   76: aload_2
    //   77: invokestatic 119	com/d/a/c/b:a	(Ljava/io/Closeable;)V
    //   80: iload 6
    //   82: istore 7
    //   84: iload 6
    //   86: ifeq +20 -> 106
    //   89: iload 6
    //   91: istore 7
    //   93: aload 5
    //   95: aload 4
    //   97: invokevirtual 123	java/io/File:renameTo	(Ljava/io/File;)Z
    //   100: ifne +6 -> 106
    //   103: iconst_0
    //   104: istore 7
    //   106: iload 7
    //   108: ifne +9 -> 117
    //   111: aload 5
    //   113: invokevirtual 80	java/io/File:delete	()Z
    //   116: pop
    //   117: iload 7
    //   119: ireturn
    //   120: astore_3
    //   121: aload_1
    //   122: invokestatic 119	com/d/a/c/b:a	(Ljava/io/Closeable;)V
    //   125: aload_3
    //   126: athrow
    //   127: astore_1
    //   128: iconst_0
    //   129: istore 6
    //   131: aload_2
    //   132: invokestatic 119	com/d/a/c/b:a	(Ljava/io/Closeable;)V
    //   135: iload 6
    //   137: istore 7
    //   139: iload 6
    //   141: ifeq +20 -> 161
    //   144: iload 6
    //   146: istore 7
    //   148: aload 5
    //   150: aload 4
    //   152: invokevirtual 123	java/io/File:renameTo	(Ljava/io/File;)Z
    //   155: ifne +6 -> 161
    //   158: iconst_0
    //   159: istore 7
    //   161: iload 7
    //   163: ifne +9 -> 172
    //   166: aload 5
    //   168: invokevirtual 80	java/io/File:delete	()Z
    //   171: pop
    //   172: aload_1
    //   173: athrow
    //   174: astore_1
    //   175: goto -44 -> 131
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	178	0	this	a
    //   0	178	1	paramString	String
    //   0	178	2	paramInputStream	java.io.InputStream
    //   0	178	3	paramc	com.d.a.c.c
    //   5	146	4	localFile1	File
    //   37	130	5	localFile2	File
    //   70	75	6	bool1	boolean
    //   82	80	7	bool2	boolean
    // Exception table:
    //   from	to	target	type
    //   60	72	120	finally
    //   39	60	127	finally
    //   121	127	127	finally
    //   72	76	174	finally
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\d\a\a\a\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */