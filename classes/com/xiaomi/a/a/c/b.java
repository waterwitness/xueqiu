package com.xiaomi.a.a.c;

import android.os.Handler;
import java.util.concurrent.LinkedBlockingQueue;

public final class b
{
  Handler a = null;
  volatile boolean b = false;
  int c = 0;
  volatile d d;
  private c e;
  private final boolean f;
  
  public b()
  {
    this(false);
  }
  
  public b(boolean paramBoolean)
  {
    this(paramBoolean, 0);
  }
  
  public b(boolean paramBoolean, int paramInt)
  {
    this.f = paramBoolean;
    this.c = paramInt;
  }
  
  final void a()
  {
    try
    {
      this.e = null;
      this.b = true;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final void a(d paramd)
  {
    try
    {
      if (this.e == null)
      {
        this.e = new c(this);
        this.e.setDaemon(this.f);
        this.b = false;
        this.e.start();
      }
      this.e.a.add(paramd);
      return;
    }
    finally {}
  }
  
  public final void a(d paramd, long paramLong)
  {
    this.a.postDelayed(new f(this, paramd), paramLong);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\a\a\c\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */