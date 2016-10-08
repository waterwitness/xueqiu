package pl.droidsonroids.gif;

final class a
{
  private volatile boolean a;
  
  final void a()
  {
    try
    {
      boolean bool = this.a;
      this.a = true;
      if (!bool) {
        notify();
      }
      return;
    }
    finally {}
  }
  
  final void a(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (;;)
    {
      try
      {
        a();
        return;
      }
      finally {}
      b();
    }
  }
  
  final void b()
  {
    try
    {
      this.a = false;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  final void c()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 13	pl/droidsonroids/gif/a:a	Z
    //   6: ifne +15 -> 21
    //   9: aload_0
    //   10: invokevirtual 26	java/lang/Object:wait	()V
    //   13: goto -11 -> 2
    //   16: astore_1
    //   17: aload_0
    //   18: monitorexit
    //   19: aload_1
    //   20: athrow
    //   21: aload_0
    //   22: monitorexit
    //   23: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	24	0	this	a
    //   16	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	13	16	finally
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\pl\droidsonroids\gif\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */