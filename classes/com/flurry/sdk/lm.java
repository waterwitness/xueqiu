package com.flurry.sdk;

import java.util.concurrent.ThreadFactory;

public class lm
  implements ThreadFactory
{
  private final ThreadGroup a;
  private final int b;
  
  public lm(String paramString, int paramInt)
  {
    this.a = new ThreadGroup(paramString);
    this.b = paramInt;
  }
  
  public Thread newThread(Runnable paramRunnable)
  {
    paramRunnable = new Thread(this.a, paramRunnable);
    paramRunnable.setName(this.a.getName() + ":" + paramRunnable.getId());
    paramRunnable.setPriority(this.b);
    return paramRunnable;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\lm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */