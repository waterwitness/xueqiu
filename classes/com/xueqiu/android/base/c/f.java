package com.xueqiu.android.base.c;

import java.io.PrintStream;

final class f
  extends Thread
{
  Process a = null;
  boolean b = false;
  
  public f(Process paramProcess)
  {
    this.a = paramProcess;
  }
  
  public final void a()
  {
    try
    {
      this.b = true;
      interrupt();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final void run()
  {
    try
    {
      this.a.waitFor();
      return;
    }
    catch (Exception localException1)
    {
      try
      {
        System.out.println("interrupted");
        this.a.destroy();
        return;
      }
      catch (Exception localException2)
      {
        System.out.println("error");
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\c\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */