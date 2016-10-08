package android.support.v4.content;

import android.os.SystemClock;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.FutureTask;

final class b
  extends u<Void, Void, D>
  implements Runnable
{
  boolean a;
  private final CountDownLatch g = new CountDownLatch(1);
  
  b(a parama) {}
  
  private D c()
  {
    try
    {
      Object localObject = this.b.d();
      return (D)localObject;
    }
    catch (android.support.v4.d.b localb)
    {
      if (!this.e.isCancelled()) {
        throw localb;
      }
    }
    return null;
  }
  
  protected final void a(D paramD)
  {
    for (;;)
    {
      a locala;
      try
      {
        locala = this.b;
        if (locala.a != this)
        {
          locala.a(this, paramD);
          return;
        }
        if (locala.s)
        {
          locala.a(paramD);
          continue;
        }
        locala.v = false;
      }
      finally
      {
        this.g.countDown();
      }
      locala.d = SystemClock.uptimeMillis();
      locala.a = null;
      locala.b(paramD);
    }
  }
  
  protected final void b(D paramD)
  {
    try
    {
      this.b.a(this, paramD);
      return;
    }
    finally
    {
      this.g.countDown();
    }
  }
  
  public final void run()
  {
    this.a = false;
    this.b.c();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\content\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */