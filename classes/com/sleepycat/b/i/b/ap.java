package com.sleepycat.b.i.b;

import com.sleepycat.b.aa;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.i.h.ae;
import com.sleepycat.b.p.w;
import java.net.ConnectException;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.util.concurrent.ExecutionException;
import java.util.logging.Formatter;
import java.util.logging.Level;
import java.util.logging.Logger;

public abstract class ap
{
  protected abstract void a();
  
  public final void a(Logger paramLogger, ad paramad, Formatter paramFormatter)
  {
    try
    {
      a();
      return;
    }
    catch (InterruptedException paramLogger)
    {
      throw aa.a(paramLogger);
    }
    catch (ExecutionException localExecutionException)
    {
      Throwable localThrowable;
      for (Exception localException = (Exception)localExecutionException.getCause(); (localException instanceof RuntimeException); localException = (Exception)localThrowable)
      {
        localThrowable = ((RuntimeException)localException).getCause();
        if ((localThrowable == null) || (!(localThrowable instanceof Exception))) {
          break;
        }
      }
      if (((localException instanceof ConnectException)) || ((localException instanceof SocketException)) || ((localException instanceof SocketTimeoutException)) || ((localException instanceof ae)))
      {
        w.a(paramLogger, paramad, paramFormatter, Level.FINE, "Election connection failure " + localException.getMessage());
        return;
      }
      throw aa.a(localExecutionException);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\b\ap.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */