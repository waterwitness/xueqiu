package com.flurry.sdk;

import java.io.PrintStream;
import java.io.PrintWriter;

public abstract class ly
  implements Runnable
{
  private static final String a = ly.class.getSimpleName();
  PrintStream h;
  PrintWriter i;
  
  public abstract void a();
  
  public final void run()
  {
    try
    {
      a();
      return;
    }
    catch (Throwable localThrowable)
    {
      if (this.h == null) {
        break label33;
      }
    }
    localThrowable.printStackTrace(this.h);
    for (;;)
    {
      kg.a(6, a, "", localThrowable);
      return;
      label33:
      if (this.i != null) {
        localThrowable.printStackTrace(this.i);
      } else {
        localThrowable.printStackTrace();
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\ly.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */