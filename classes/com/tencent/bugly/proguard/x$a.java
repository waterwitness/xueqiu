package com.tencent.bugly.proguard;

import java.io.File;

public final class x$a
{
  private boolean a;
  private File b;
  private String c;
  private long d;
  private long e = 30720L;
  
  public x$a(String paramString)
  {
    if ((paramString == null) || (paramString.equals(""))) {
      return;
    }
    this.c = paramString;
    this.a = a();
  }
  
  private boolean a()
  {
    boolean bool = false;
    try
    {
      this.b = new File(this.c);
      if ((this.b.exists()) && (!this.b.delete())) {}
      for (this.a = false;; this.a = false)
      {
        return bool;
        if (this.b.createNewFile()) {
          break;
        }
      }
    }
    catch (Throwable localThrowable)
    {
      for (;;)
      {
        this.a = false;
        bool = true;
      }
    }
    finally {}
  }
  
  /* Error */
  public final boolean a(String paramString)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 5
    //   3: aload_0
    //   4: monitorenter
    //   5: aload_0
    //   6: getfield 37	com/tencent/bugly/proguard/x$a:a	Z
    //   9: istore 6
    //   11: iload 6
    //   13: ifne +8 -> 21
    //   16: aload_0
    //   17: monitorexit
    //   18: iload 5
    //   20: ireturn
    //   21: new 61	java/io/FileOutputStream
    //   24: dup
    //   25: aload_0
    //   26: getfield 41	com/tencent/bugly/proguard/x$a:b	Ljava/io/File;
    //   29: iconst_1
    //   30: invokespecial 64	java/io/FileOutputStream:<init>	(Ljava/io/File;Z)V
    //   33: astore_2
    //   34: aload_1
    //   35: ldc 66
    //   37: invokevirtual 70	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   40: astore_1
    //   41: aload_2
    //   42: aload_1
    //   43: invokevirtual 74	java/io/FileOutputStream:write	([B)V
    //   46: aload_2
    //   47: invokevirtual 77	java/io/FileOutputStream:flush	()V
    //   50: aload_2
    //   51: invokevirtual 80	java/io/FileOutputStream:close	()V
    //   54: aload_0
    //   55: getfield 82	com/tencent/bugly/proguard/x$a:d	J
    //   58: lstore_3
    //   59: aload_0
    //   60: aload_1
    //   61: arraylength
    //   62: i2l
    //   63: lload_3
    //   64: ladd
    //   65: putfield 82	com/tencent/bugly/proguard/x$a:d	J
    //   68: iconst_1
    //   69: istore 5
    //   71: goto -55 -> 16
    //   74: astore_1
    //   75: aload_0
    //   76: iconst_0
    //   77: putfield 37	com/tencent/bugly/proguard/x$a:a	Z
    //   80: goto -64 -> 16
    //   83: astore_1
    //   84: aload_0
    //   85: monitorexit
    //   86: aload_1
    //   87: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	88	0	this	a
    //   0	88	1	paramString	String
    //   33	18	2	localFileOutputStream	java.io.FileOutputStream
    //   58	6	3	l	long
    //   1	69	5	bool1	boolean
    //   9	3	6	bool2	boolean
    // Exception table:
    //   from	to	target	type
    //   21	68	74	java/lang/Throwable
    //   5	11	83	finally
    //   21	68	83	finally
    //   75	80	83	finally
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\bugly\proguard\x$a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */