package com.umeng.analytics;

public abstract class f
  implements Runnable
{
  public abstract void a();
  
  public void run()
  {
    try
    {
      a();
      return;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\umeng\analytics\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */