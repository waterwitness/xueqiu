package com.d.a.a.a.a.a;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import com.d.a.c.c;
import com.d.a.c.d;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

public final class f
  implements com.d.a.a.a.b
{
  public static final Bitmap.CompressFormat a = Bitmap.CompressFormat.PNG;
  protected a b;
  protected final com.d.a.a.a.b.a c;
  protected int d = 32768;
  protected Bitmap.CompressFormat e = a;
  protected int f = 100;
  private File g;
  
  public f(File paramFile1, File paramFile2, com.d.a.a.a.b.a parama, long paramLong, int paramInt)
  {
    if (paramFile1 == null) {
      throw new IllegalArgumentException("cacheDir argument must be not null");
    }
    if (paramLong < 0L) {
      throw new IllegalArgumentException("cacheMaxSize argument must be positive number");
    }
    if (paramInt < 0) {
      throw new IllegalArgumentException("cacheMaxFileCount argument must be positive number");
    }
    if (parama == null) {
      throw new IllegalArgumentException("fileNameGenerator argument must be not null");
    }
    if (paramLong == 0L) {
      paramLong = Long.MAX_VALUE;
    }
    for (;;)
    {
      if (paramInt == 0) {
        paramInt = Integer.MAX_VALUE;
      }
      for (;;)
      {
        this.g = paramFile2;
        this.c = parama;
        a(paramFile1, paramFile2, paramLong, paramInt);
        return;
      }
    }
  }
  
  private void a(File paramFile1, File paramFile2, long paramLong, int paramInt)
  {
    try
    {
      this.b = a.a(paramFile1, paramLong, paramInt);
      return;
    }
    catch (IOException paramFile1)
    {
      do
      {
        d.a(paramFile1);
        if (paramFile2 != null) {
          a(paramFile2, null, paramLong, paramInt);
        }
      } while (this.b != null);
      throw paramFile1;
    }
  }
  
  private String b(String paramString)
  {
    return this.c.a(paramString);
  }
  
  /* Error */
  public final File a(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aconst_null
    //   4: astore_2
    //   5: aload_0
    //   6: getfield 71	com/d/a/a/a/a/a/f:b	Lcom/d/a/a/a/a/a/a;
    //   9: aload_0
    //   10: aload_1
    //   11: invokespecial 84	com/d/a/a/a/a/a/f:b	(Ljava/lang/String;)Ljava/lang/String;
    //   14: invokevirtual 87	com/d/a/a/a/a/a/a:a	(Ljava/lang/String;)Lcom/d/a/a/a/a/a/e;
    //   17: astore_1
    //   18: aload_1
    //   19: ifnonnull +17 -> 36
    //   22: aload_2
    //   23: astore_3
    //   24: aload_1
    //   25: ifnull +9 -> 34
    //   28: aload_1
    //   29: invokevirtual 92	com/d/a/a/a/a/a/e:close	()V
    //   32: aload_2
    //   33: astore_3
    //   34: aload_3
    //   35: areturn
    //   36: aload_1
    //   37: astore_2
    //   38: aload_1
    //   39: getfield 95	com/d/a/a/a/a/a/e:a	[Ljava/io/File;
    //   42: iconst_0
    //   43: aaload
    //   44: astore_3
    //   45: aload_3
    //   46: astore_2
    //   47: goto -25 -> 22
    //   50: astore_3
    //   51: aconst_null
    //   52: astore_1
    //   53: aload_1
    //   54: astore_2
    //   55: aload_3
    //   56: invokestatic 76	com/d/a/c/d:a	(Ljava/lang/Throwable;)V
    //   59: aload 4
    //   61: astore_3
    //   62: aload_1
    //   63: ifnull -29 -> 34
    //   66: aload_1
    //   67: invokevirtual 92	com/d/a/a/a/a/a/e:close	()V
    //   70: aconst_null
    //   71: areturn
    //   72: astore_1
    //   73: aconst_null
    //   74: astore_2
    //   75: aload_2
    //   76: ifnull +7 -> 83
    //   79: aload_2
    //   80: invokevirtual 92	com/d/a/a/a/a/a/e:close	()V
    //   83: aload_1
    //   84: athrow
    //   85: astore_1
    //   86: goto -11 -> 75
    //   89: astore_3
    //   90: goto -37 -> 53
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	93	0	this	f
    //   0	93	1	paramString	String
    //   4	76	2	localObject1	Object
    //   23	23	3	localObject2	Object
    //   50	6	3	localIOException1	IOException
    //   61	1	3	localObject3	Object
    //   89	1	3	localIOException2	IOException
    //   1	59	4	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   5	18	50	java/io/IOException
    //   5	18	72	finally
    //   38	45	85	finally
    //   55	59	85	finally
    //   38	45	89	java/io/IOException
  }
  
  public final void a()
  {
    try
    {
      this.b.c();
    }
    catch (IOException localIOException1)
    {
      for (;;)
      {
        try
        {
          a(this.b.b, this.g, this.b.a(), this.b.b());
          return;
        }
        catch (IOException localIOException2)
        {
          d.a(localIOException2);
        }
        localIOException1 = localIOException1;
        d.a(localIOException1);
      }
    }
  }
  
  public final boolean a(String paramString, Bitmap paramBitmap)
  {
    b localb = this.b.b(b(paramString));
    if (localb == null) {
      return false;
    }
    paramString = new BufferedOutputStream(localb.a(), this.d);
    boolean bool;
    try
    {
      bool = paramBitmap.compress(this.e, this.f, paramString);
      com.d.a.c.b.a(paramString);
      if (bool)
      {
        localb.b();
        return bool;
      }
    }
    finally
    {
      com.d.a.c.b.a(paramString);
    }
    localb.c();
    return bool;
  }
  
  public final boolean a(String paramString, InputStream paramInputStream, c paramc)
  {
    paramString = this.b.b(b(paramString));
    if (paramString == null) {
      return false;
    }
    BufferedOutputStream localBufferedOutputStream = new BufferedOutputStream(paramString.a(), this.d);
    try
    {
      boolean bool = com.d.a.c.b.a(paramInputStream, localBufferedOutputStream, paramc, this.d);
      com.d.a.c.b.a(localBufferedOutputStream);
      if (bool)
      {
        paramString.b();
        return bool;
      }
      paramString.c();
      return bool;
    }
    finally
    {
      com.d.a.c.b.a(localBufferedOutputStream);
      paramString.c();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\d\a\a\a\a\a\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */