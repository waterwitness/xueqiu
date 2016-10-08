package com.tencent.plus;

final class d
  implements Runnable
{
  d(TouchView paramTouchView) {}
  
  public final void run()
  {
    try
    {
      Thread.sleep(300L);
      this.a.post(new c(this));
      TouchView.a(this.a, false);
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;)
      {
        localInterruptedException.printStackTrace();
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\plus\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */