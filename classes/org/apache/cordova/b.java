package org.apache.cordova;

public final class b
{
  private String a;
  private CordovaWebView b;
  private boolean c;
  
  public b(String paramString, CordovaWebView paramCordovaWebView)
  {
    this.a = paramString;
    this.b = paramCordovaWebView;
  }
  
  public final void a(int paramInt)
  {
    a(new z(aa.b, paramInt));
  }
  
  public final void a(String paramString)
  {
    a(new z(aa.b, paramString));
  }
  
  /* Error */
  public final void a(z paramz)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 40	org/apache/cordova/b:c	Z
    //   6: ifeq +43 -> 49
    //   9: ldc 42
    //   11: new 44	java/lang/StringBuilder
    //   14: dup
    //   15: ldc 46
    //   17: invokespecial 48	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   20: aload_0
    //   21: getfield 17	org/apache/cordova/b:a	Ljava/lang/String;
    //   24: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   27: ldc 54
    //   29: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   32: aload_1
    //   33: invokevirtual 57	org/apache/cordova/z:a	()Ljava/lang/String;
    //   36: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   39: invokevirtual 60	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   42: invokestatic 66	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   45: pop
    //   46: aload_0
    //   47: monitorexit
    //   48: return
    //   49: aload_1
    //   50: getfield 67	org/apache/cordova/z:c	Z
    //   53: ifne +25 -> 78
    //   56: iconst_1
    //   57: istore_2
    //   58: aload_0
    //   59: iload_2
    //   60: putfield 40	org/apache/cordova/b:c	Z
    //   63: aload_0
    //   64: monitorexit
    //   65: aload_0
    //   66: getfield 19	org/apache/cordova/b:b	Lorg/apache/cordova/CordovaWebView;
    //   69: aload_1
    //   70: aload_0
    //   71: getfield 17	org/apache/cordova/b:a	Ljava/lang/String;
    //   74: invokevirtual 72	org/apache/cordova/CordovaWebView:a	(Lorg/apache/cordova/z;Ljava/lang/String;)V
    //   77: return
    //   78: iconst_0
    //   79: istore_2
    //   80: goto -22 -> 58
    //   83: astore_1
    //   84: aload_0
    //   85: monitorexit
    //   86: aload_1
    //   87: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	88	0	this	b
    //   0	88	1	paramz	z
    //   57	23	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	48	83	finally
    //   49	56	83	finally
    //   58	65	83	finally
    //   84	86	83	finally
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\cordova\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */